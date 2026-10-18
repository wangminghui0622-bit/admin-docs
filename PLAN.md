# admin-zero 建设计划

> 用 gorm 重新实现 Simple Admin 全家桶（D:\admin），保留其功能与数据模型，替换 ORM 层。
> 唯一 API 服务 + 多 RPC 服务 + 前端，代码全部新写，不修改 D:\admin 下任何现有服务。

## 1. 目标与边界

| 项 | 内容 |
|---|---|
| 目标 | 功能等价克隆 simple-admin（用户/角色/菜单/API/字典/成员/文件/任务/消息/支付），ORM 全部用 gorm |
| 硬边界 | 不改 D:\admin 任何代码；不动 simple_admin 库；新系统独立建库 `admin_zero` |
| 并行运行 | 旧栈（9100/9101/…/5173）继续可用，新栈独立端口（9210 起），互不干扰 |

## 2. 架构设计

```
admin-ui (Vue3, 复用 vue-vben-admin 骨架)
   │  /sys-api /mms-api /fms-api /pay-api  → 全部代理到 9210，不重写路径
   ▼
admin-api  (唯一 REST 服务, 9210)   ← JWT + casbin 鉴权中间件只写这一处
   │  zrpc 调用
   ▼
admin-core ── admin-member ── admin-file ── admin-job ── admin-message ── admin-pay
   (RPC: 9211)   (9212)        (9213)       (9214)       (9215)           (9216)
   │
   ▼
MySQL admin_zero（32 张表复刻 simple_admin） + Redis（captcha/黑名单/casbin 订阅）
```

**与原版的核心差异**：

| 差异点 | simple-admin | admin-zero | 理由 |
|---|---|---|---|
| API 服务 | core-api + mms-api + fms-api 各一个 | 只有 admin-api 一个 | 鉴权/cors/限流/日志只写一处；路由路径保持原样，前端几乎零改动 |
| ORM | ent（schema 生成） | gorm（DB 反生成模型，见 §4） | 本项目的出发点 |
| 数据权限过滤 | ent intercept | gorm callback（自定义 plugin） | 等价替代 |
| 软删除 | 自定义 mixin + hook/intercept | gorm 自带 DeletedAt | gorm 更简单 |
| 初始化授权坑 | core init 后新服务 API 无策略（已踩过） | init 流程最后统一执行授权同步 | 从设计上修掉 |

### 目录职责（11 个，已建空目录）

| 目录 | 职责 | 对应旧版 |
|---|---|---|
| admin-api | 唯一 REST 网关：全部路由 + 鉴权中间件 + 转发 RPC | core-api + mms-api + fms-api 合并 |
| admin-core | 用户/角色/菜单/API/字典/部门/岗位/Token/OAuth/任务配置 RPC | simple-admin-core(rpc) |
| admin-member | 会员/等级/OAuth RPC | member-rpc |
| admin-file | 本地/云文件、标签、存储提供商 RPC | file(fms) |
| admin-job | 定时任务 RPC（asynq） | simple-admin-job |
| admin-message | 短信/邮件提供商与日志 RPC | message-center |
| admin-pay | 订单/退款/演示单 RPC（社区 pay 模块） | simple-admin-pay-rpc |
| admin-common | 共享库：gorm 模型、错误码、i18n、casbin 工具、中间件 | simple-admin-common |
| admin-tools | gentool 反生成配置、数据修复脚本 | tools |
| admin-ui | 前端（从 backend-ui 复制改造） | backend-ui |
| sql | 建库建表脚本（改造自 D:\admin\sql\all.sql） | D:\admin\sql |

## 3. 技术选型

| 组件 | 选型 | 说明 |
|---|---|---|
| 框架 | go-zero 1.10.3 | 已装 goctl 1.10.2，api/rpc 骨架命令生成 |
| ORM | gorm v2 + go-sql-driver/mysql | 模型反生成，见下 |
| 类型安全查询 | gorm.io/gen（gentool） | 从 admin_zero 库反生成 32 个模型 + 查询构建器——"gorm 的手感 + ent 式的编译期检查" |
| 权限 | casbin v2（模型与 simple-admin 同构） | 前端菜单权限行为完全一致 |
| 缓存/队列 | Redis（captcha、token 黑名单、casbin watcher）+ asynq | 沿用旧版 |
| 认证 | JWT（go-zero rest） | 登录/刷新流与旧版一致 |
| 前端 | vue-vben-admin + Vite | 复用 backend-ui 骨架 |
| Go | 1.26.8（本机） | 各仓库独立 go.mod |

## 4. 数据库策略（关键决策）

- **新库 `admin_zero`**：结构复刻 simple_admin 的 32 张表。不能共用 simple_admin——casbin_rules 会被两套系统同时写，策略互相污染。
- **建表方式：执行 SQL 脚本**（D:\admin\sql\all.sql 改造版，去掉库名依赖），不依赖 AutoMigrate。理由：索引/注释/字段类型与原版严格一致，前端与业务行为零差异。
- **模型反生成**：建表完成后用 gentool 从 admin_zero 反生成模型与查询代码到 admin-common。32 个模型不用手写，且生成代码与原表严格对齐。
- 各 RPC 服务的业务表（mms/fms/mcms/pay）同样入 admin_zero，与原版一致的单一库。

## 5. 权限设计

- casbin 模型、`casbin_rules` 表结构、JWT claim 里的 roleId 映射，全部沿用原版。
- API/菜单注册沿用 init 端点 + `/authority/api/create_or_update` 授权接口。
- **修掉原版坑**：所有服务的 API 注册完成后，init 流程末尾自动执行"admin 角色全量授权"（原版要手动补跑脚本）。
- 数据权限（租户/部门过滤）在 admin-common 用 gorm callback 实现，等价 ent 的 intercept。

## 6. 分阶段计划（按单人估算）

### M0 骨架与数据库（约 1 天）✅ 已完成 2026-10-17
- [x] admin_zero 库建库 + 改造 all.sql 并执行（32 张表；注意：Windows 导入必须 `--default-character-set=utf8mb4`，否则中文注释乱码）
- [x] admin-common 初始化：gorm 模型层完成（错误码/i18n 留到 M1）
- [x] gentool 反生成全部模型（dal/model 32 个）+ 查询代码（dal/query，gorm.io/gen）
- [x] goctl 生成 admin-api、admin-core 骨架，RPC 打通（core 的 ping 接口）
- **验收**：`curl http://127.0.0.1:9210/core/ping` → `{"pong":"ping","userCount":0}`（api→rpc→gorm→MySQL 全链路）
- 实际约定：proto 包名 `core`、服务 `Core`、客户端包 `coreclient`；DSN 放各服务 yaml 的 DatabaseDSN；RPC 直连模式（Target: 127.0.0.1:9211，无 etcd）

### M1 认证与核心权限（约 2-3 天）✅ 全部完成 2026-10-17（含遗留项）
- [x] login/captcha/JWT 流（captcha 存 Redis `CAPTCHA:<id>`、一次性；login 返回 token+expire；JWT claims: userId/roleCode/username）
- [x] Auth 中间件（公开路径白名单 ping/init/captcha/login；401 + code 8 `login.requireLogin` 契合前端跳登录契约）
- [x] Authority 中间件（casbin `Enforce(roleCode, path, method)`；deny → HTTP 200 code 7）
- [x] user/role/menu/api 全套 CRUD（前端契约逐字段对齐：GetUserInfoModel/PermCodeResp/MenuInfoPlain/RouteItem/ApiInfo）
- [x] 菜单/API 角色授权（/authority/menu|api/create_or_update 整体替换；写库后网关 enforcer 立即 LoadPolicy）
- [x] dictionary/department/position/token CRUD（M1 遗留，2026-10-17 完成）
- [x] JWT 黑名单（logout 目前直接成功，参考实现用 Redis 存失效 token + Authority 中间件校验）
- [x] init 全量验收（2026-10-17 重跑：truncate 32 表 + GET /core/init/database → 种子 1 用户/2 角色/31 菜单/150 API、策略 155（001×150 + 002 基础端点×5）、role_menus 48，admin 重登见 31 菜单）
- **验收已跑通**：captcha→login（admin/member）→ 查菜单（admin 31 个 / member 按角色 4 个）→ 改角色（role 002 菜单 17→[1,2,21,22]）→ 新用户(m1member)按角色见菜单 → member 无权限访问 /user/create 报 `{"code":7}`；无 token 报 HTTP 401 code 8
- **M1 遗留验收（2026-10-17，43/43 PASS）**：dictionary/detail（含 /dict/:name 排序、/dict/public/:name 免鉴权、删字典级联删明细）、department（ancestors、有子部门/有用户时删除报 code 10）、position、token 管理（封禁→Redis 黑名单、解封→移除）、/user/logout 与 /token/logout→BlockUserAllToken→旧 token 401（Redis `BLACKLIST:TOKEN:<token>` 存剩余 TTL）、admin token 不受影响、重登成功；login 已记 sys_tokens（source=core_user）
- **实现约定与坑**（重新生成代码后必须复查）：
  - go.mod：三模块均 `github.com/wangminghui0622-bit/` 前缀 + replace 指本地相对路径；admin-api 的 go.mod 是手写 requires 后 `go mod tidy` 补全的
  - **gorm-adapter 锁 v3.39.0**：v3.40+ 依赖 casbin/v3，与 casbin/v2 接口不兼容（persist.Adapter 断言 panic）；且必须 `TurnOffAutoMigrate(db)` 防 longtext 撞唯一索引（1170）
  - go-zero 1.10.3 无 `rest.WithErrorHandler`，用包级 `httpx.SetErrorHandler(restx.ErrorHandler)`（签名 `func(error) (int, any)`）
  - goctl 对同一 @server 块多个 middleware 注解只认最后一个 → routes.go 需手工补 `[]rest.Middleware{serverCtx.Auth, serverCtx.Authority}`
  - casbin v2 普通 Enforcer 无 StartAutoLoadPolicy（SyncedEnforcer 才有）→ svc 里 goroutine 每分钟 LoadPolicy 兜底 + 授权写后立即 LoadPolicy；多实例时改用 Redis watcher（参考实现的 MustNewCasbinWithOriginalRedisWatcher）
  - 列表类接口全部 POST（/role/list、/user/list 等，与参考一致）
  - **jwtutil.NewToken 语义**：`(secret, expireSec, userId, roleCode, username) → (token, expireAtUnix, err)`，第三个返回值是**绝对 Unix 秒数**不是时长；入库 ExpiredAt 要 `time.Unix(expire, 0)`（曾误当时长算出 2083 年导致登录全挂）
  - **gen 查询字段类型**：可空列（*int32/*int64）生成的 query 字段仍是普通 `field.Int32`/`field.Int64`，条件传普通值（`.Eq(int32(1))`、`.In([]int64{...})`，In 需 []int64）；模型字段才是指针
  - **grpc 错误码透传**：core 返回 errorx（`code=N msg=`格式）经 grpc 包装成 `status(Unknown, "code=N msg=...")` 后类型丢失；`errorx.FromErr` 里用 `status.FromError` + 正则从 desc 还原业务码，REST 层才能返回 code 4/8/10 而非一律 9
  - sys_tokens.token 为 varchar(255)（与参考 DDL 一致）：用户名过长时 JWT 会超列长，属于参考同款限制
  - **core.proto 再生成**：`go_package="./core"`，protoc 命令**不要加** `paths=source_relative`（否则产物落在仓库根与 core.go 的 package main 冲突）；正确姿势 `protoc --go_out=. --go-grpc_out=. core.proto`，产物自动进 `core/` 子目录
  - **stock go-zero 1.10.3 的 body 解析**：core/mapping 对"缺字段"的必填检查只看 json tag 有没有 `optional`，**指针字段没有 optional 标签照样报 `field "xxx" is not set`**——可选字段必须指针+optional 双保险
  - **protoc-gen-go v1.31 的 optional 字段 getter**：`GetDepartmentId()` 返回零值标量而非指针，判空必须用字段本身（`u.DepartmentId != nil`），拿指针直接取字段（`u.DepartmentId`），不要指望 getter 给 `*uint64`

### M2 业务 RPC 服务（每个约 1-2 天）✅ 全部完成 2026-10-17
- [x] admin-member（members/ranks/oauth：member/rank/token 列表、登录、第三方回调、验证码）
- [x] admin-file（本地文件 + 云文件 + 标签 + 存储提供商，参考 fms 的坑：ServerURL 配置）
- [x] admin-job（asynq 任务：hello_world 种子任务每 60s 跑，task/task_log 列表）
- [x] admin-message（sms/email 提供商 + 日志）
- [x] admin-pay（订单/退款/演示单，社区 pay 模块的 gorm 版）
- **验收**：6 个服务 init 端点全部成功（守卫键 `initDatabase[:service]`）；冒烟套件覆盖各服务核心列表接口，全部 code 0

### M3 前端与全流程联调（约 2-3 天）✅ 完成 2026-10-17
- [x] admin-ui 复制 backend-ui，改 proxy（/sys-api /mms-api /fms-api /pay-api → 9210，不重写路径）+ 端口 9273
- [x] 前端契约逐字段核对（role/menu/api/dictionary/position 的 trans、menu 的 serviceName、userModel 的 RegisterReq.email 等）
- [x] 登录 → 菜单 → 用户/角色 CRUD → 文件上传 → 任务列表全链路走查
- **验收**：smoke.sh 全绿（登录/captcha/刷新 token/各服务列表/401 负数用例）

### M4（集成验收与契约修补）✅ 完成 2026-10-17
> 用 difftypes 工具对参考 types.go 与 admin-zero types.go 做结构级 diff，逐项修补契约缺口。

- [x] **job task_log/list 修复**：TaskLogListReq.TaskId/Result 改为 `*uint64/*uint32 + optional`（原来值类型缺 optional → `field "taskId" is not set`）；网关逻辑改直传。注意 stock go-zero 的 core/mapping 对指针无 optional 标签同样报 not set，必须双管齐下
- [x] **RegisterReq.Email 恢复**（M2 审计误删）：core.proto RegisterReq + `email=5`；core 注册落库；mms 注册落库；前端本就要求 email
- [x] **core RPC 过滤参数补齐**：UserListReq + role_ids/department_id/description（roleIds 走 user_roles join）；ApiListReq + is_required/service_name。已验证：roleIds=[1] 命中 admin、[99] 空；serviceName=Core 89 条 / Mms 40 条；isRequired=true 39 条
- [x] **i18n 移植**：simple-admin-common/i18n 的精简版（admin-api/internal/i18n：embed locale/en.json+zh.json + nicksnyder/go-i18n/v2 + x/text）；网关手动全局挂 `middleware.I18nHandler`（stock go-zero 无 fork 的自动注入）；servicecontext 初始化 Trans。已验证：Accept-Language en/zh 切换 role.trans=Administrator/管理员、注册提示 signupSuccessTitle 双语
- [x] **Trans 填充**（与参考一致，仅列表类接口）：role/position 取 Name、api 取 Description、dictionary/dictionary_detail 取 Title、menu 树与平铺取 Meta.Title（递归）
- [x] **MenuInfo 补 ServiceName/Permission + Trans**；MenuPlainInfo 补 Trans；ApiInfo/DictionaryInfo/DictionaryDetailInfo/RoleInfo/PositionInfo 补 Trans
- [x] **oauth callback 单位修正**：`Expire: r.GetExpire() * 1000`（core signUserToken 返回秒，REST 契约毫秒）+ Role 零值字段（参考实现同款）
- [x] **mms CallbackInfo.Expire uint64→int64**（与参考 member-api 一致）
- [x] **mms 注册错误 i18n**：验证码错误返回 Trans("login.wrongCaptcha")（已验证 en=Wrong captcha）
- [x] **UserInfo.DepartmentId/PositionIds/ExpiredAt 端到端补齐**：core.proto UserInfo + `optional department_id=18 / repeated position_ids=19 / optional expired_at=20`、UserListReq + `repeated position_ids=10`；core create/update 持久化部门与职位（update 时 PositionIds 非 nil 整体替换，nil=前端未提交）、delete 级联清 user_positions、list 支持 position_ids 过滤（与 role_ids 同给时取交集）并批量填充三字段；网关 types + toCoreUser/fromCoreUser 映射。已验证：create(departmentId=1, positionIds=[1,2]) → list/byid 回显 departmentId:1/positionIds:[1,2]/expiredAt:null → update positionIds=[2] 替换成功 → positionId=2 过滤仅命中该用户、99 为空 → delete 后 user_positions 0 行
- [x] **DepartmentInfo.Trans**（列表取 Name 翻译，已验证 en-US,en 头=Management Department / zh=核心管理部门）
- [x] 验证后清理测试数据（testuser3、CTO 职位）
- **本轮契约决策**：UserInfo 的 json tag 用复数 `positionIds`（与前端 userModel.ts 一致）；参考实现 tag 是单数 "positionId"（参考自身与前端模型不一致的 bug）。RPC 层 UserListReq.position_ids 为 repeated（参考为单值），网关把前端单个 positionId 转单元素切片，契约超集兼容

### M4.5 全量契约审计（difftypes 扩展到 member/file + 路由级 diff + json tag diff）✅ 完成 2026-10-18
- [x] **member-api types diff**：28 项，4 项 "MISSING LoginInfo.*" 为类型名撞名假象（参考 LoginInfo vs 我们的 MemberLoginInfo），其余为指针/包装名外观差；已实测 mms 登录响应 7 字段齐全（userId/rankId/token/expire/avatar/nickname/rankName，rankName="Normal Member"）
- [x] **file types diff**：5 项，全部外观差，0 缺失
- [x] **路由级 diff（新工具 diffroutes）**：参考 189 条路由（core 179 + member + file，含 baked /core/init/* → /sys-api/core/init/* 映射）**0 缺失、0 方法不符**；我方多出 19 条 = pay 模块 18 条（参考无 pay api）+ /sys-api/core/ping，均为有意新增
- [x] **json tag diff（新工具 difftags）**：core 仅 1 项 = 有意的 positionIds 复数决策；member/file 0 项
- [x] 工具位置：/tmp/difftypes.exe（字段类型）、/tmp/difftags.exe（json tag）、/tmp/diffroutes.go（路由，go run）
- [x] **前端代理全链路复核（2026-10-18）**：admin-ui 9273 起服务，经其代理（/sys-api→9210 不重写路径）重放浏览器启动流：captcha→login→GET /user/info（UserBaseIDInfo 7 字段齐全）→GET /menu/role/list（31 菜单含 trans）→ role/api/file/task/member 各列表页端点全 code 0；mms 成员 2 条为 SQL 种子演示账号（normalMember/VIPMember，与参考一致）
- **结论**：REST 契约四维（字段类型/字段存在性/json tag/路由）与参考完全对齐，仅存的差异全部文档化

### M4.6 用户模块行为对齐（参考 RPC 逐行核对）✅ 完成 2026-10-18
> 契约对齐后发现行为缺口：把参考 core RPC 的 user create/update/get_by_id/get_list 与我们的实现逐行比对，补齐如下。

- [x] **create_user 补齐**：手机号/邮箱唯一性预检（返回 code 10，参考 login.mobileExist/signupUserExist）；HomePath 取请求值（默认 /dashboard）；ExpiredAt 落库；**多角色绑定**（原来只绑 RoleIds[0]——前端 roleIds 表单本就是 ApiMultipleSelect，属真 bug）
- [x] **update_user 补齐**：username 可改（参考 SetNotNilUsername）；ExpiredAt 可改；RoleIds 非 nil 整体替换（原来 len>0 判断无法清空角色）；**密码/角色/职位/状态变更时 BlockUserAllToken 强制重登**（已验证：testmulti 登录拿 token → admin 改其角色 → 旧 token 访问返回 code 8 login.requireLogin）
- [x] **get_user_by_id 补角色**：RoleIds/RoleCodes/RoleName 多角色填充（原来 null → 前端编辑表单角色预选失效，已修复）
- [x] **get_user_list 多角色填充**（原来单角色 last-wins）
- [x] 网关 toCoreUser 透传 ExpiredAt
- [x] 验证：create(roleIds=[1,2], expiredAt=1799999999000) → list/byid 均回显；重复手机/邮箱 code 10；username 更新生效；测试数据 testmulti 已清理
- **已知偏差（有意保留，文档化）**：
  - 响应 Info 结构体用值类型字段（参考用指针）：JSON 空值输出 ""/0/false 而非 null，前端兼容
  - 列表响应包装名 ListData/ListResp（参考部分叫 ListInfo），字段名完全一致
  - RPC 层请求字段用 proto 标量（参考 RPC 多用 optional 指针），网关层契约不受影响
  - 注册的验证码校验在 core RPC 内完成（参考在 API 层），对外行为等价
  - 列表 Msg 未做 i18n（参考返回 Trans("common.success")），前端不依赖

### M4.7 删除保护行为对齐（参考 RPC 删除类逻辑逐行核对）✅ 完成 2026-10-18
> 把参考 core RPC 的 role/menu/department/position/api/dictionary 删除逻辑与我们的实现逐一比对（M4.6 方法延续到其余模块），发现 2 处行为缺口并修复。

- [x] **delete_role 补用户占用保护**：参考先查绑定用户，存在即返回 code 10（role.userExists）；我们原来直接静默删 user_roles 绑定。现补预检：`该角色下存在用户，请先移除用户`（code 10），通过后仍执行原有的 casbin 策略清理 + role_menu 清理（参考无此清理，我们保留为防御性增强）
- [x] **delete_menu 补子菜单保护**：参考存在子菜单即返回 code 10（menu.deleteChildrenDesc）；我们原来删除父菜单留下孤儿子菜单（原注释"与 simple-admin 行为一致"是错的）。现补预检：`该菜单存在子菜单，请先删除子菜单`（code 10）
- [x] 核对无差异项：delete_department（子部门/用户两重预检，早已一致）；delete_position（用户占用预检，早已一致）；delete_dictionary（事务级联删明细，一致）；delete_api（参考只删行，我们额外清 casbin 策略为防御性增强）；update_role（角色码变更迁移 casbin v0 策略，早已一致）
- [x] 验证（2026-10-18）：建 guardtest 角色+guarduser 用户 → 删角色返回 code 10 → 删用户后删角色成功；建父/子菜单 → 删父返回 code 10 → 删子、再删父均成功；测试数据已清理

### M4.8 member 模块行为对齐（参考 member RPC + mms-api 逐行核对）✅ 完成 2026-10-18
> 把 member 的 8 条核心链路（create/update/list/by_username/login/logout/modify_profile/oauth callback/wechat mini）与参考逐行比对。

- [x] 核对一致项：create（手机/邮箱唯一性预检、bcrypt、expiredAt）；update（SetNotNil 语义、密码非空才更新）；list（6 个过滤条件含 wechatId、rankId!=0）；get_by_username（带密码哈希供网关登录校验、rankCode 填充）；login（图形验证码一次性 → bcrypt → 过期检查 → 禁用检查 → JWT 时长按剩余有效期裁剪 → rankId=rankCode+roleId=invalid → CreateToken(source=mms_member) → 7 字段 LoginInfo）；logout（BlockUserAllToken）；modify_profile（仅 nickname/mobile/email/avatar）；oauth callback（code 换 token → 按 email 找会员，不存在报错，**不自动注册**）；wechat mini login（openid 放 Msg 字段 → 按 wechatId 找会员 → 未绑定报错）；block_user_all_token（status=0 + 未过期 token 进 Redis 黑名单按剩余 TTL）
- [x] **修复 1：create_member 等级默认值**。原来 RPC 层 RankID 缺省 2（VIP），且表 DDL `rank_id DEFAULT '2'` + gen 模型 tag `default:2` 三重默认，无等级创建的会员静默变 VIP。参考实现 SetNotNilRankID 缺省为 NULL。已修复：RPC 不再默认、init.sql 改 DEFAULT NULL、gen tag 去掉 default:2、线上表 ALTER；注册流由网关显式传 DefaultRankId(1)（参考 ProjectConf.DefaultRankId）
- [x] **修复 2：member RPC 错误文案中文化**（"mobile already exists"→"手机号已存在"、"user already exists"→"邮箱已存在"、"target not exist"→"目标不存在"、"id is required"→"id 不能为空"、oauth 的 "user not exist"/"email is empty"/"invalid state"/"unsupported auth style" 同改），与 core 模块文案策略一致
- [x] 验证（2026-10-18）：无等级创建 → DB rank_id=NULL；重复手机号 code 10"手机号已存在"；种子 normalMember 全链路登录成功（rankId=001、roleCode=invalid、expire 正确）；测试数据已清理
- **已知偏差（有意保留，文档化）**：
  - **ExpiredAt 为 NULL 视为长期有效**（参考实现 NULL → 零值时间 → 登录必判"已过期"，连参考自己的种子会员都无法登录——参考的缺陷，我们修复；我们的种子会员显式写入 2099-01-01 到期）
  - 无 LoginVerify/RegisterVerify 配置开关（参考无 captcha 配置时登录/注册被拒；我们恒开验证码，效果一致）
  - RankName 按 ID 实时查询（参考用进程内缓存），结果一致
  - 错误文案用中文字面量（参考 RPC 用 i18n key 由 API 层翻译），对中文客户端效果一致

### M4.9 core 剩余模块 create/update 行为对齐 ✅ 完成 2026-10-18
> 把 core 的 menu/api/department/position/dictionary/dictionary_detail/token 的 create/update 与参考逐行核对（删除类已在 M4.7、user 已在 M4.6）。

- [x] 核对一致项：department create/update（祖先链重算语义一致）；position/dictionary/dictionary_detail/token create/update（纯 SetNotNil 透传，无隐藏行为）；update_api（参考不改 casbin，我们额外迁移策略属防御性增强，保留）
- [x] **修复 1：create_menu 漏映射 5 个 meta 字段**。原来只落 title/icon/hideMenu/frameSrc/carryParam/affix/realPath，hideBreadcrumb/ignoreKeepAlive/hideTab/hideChildrenInMenu/dynamicLevel 静默丢弃（前端表单设 true 也会丢）。已补全映射；update_menu 同步补全
- [x] **修复 2：create_menu 幂等**。参考对同名+同组件+同路径的菜单返回已有 ID + success（初始化同步反复调用安全）；原来我们直接插入会重复。已补存在性检查
- [x] **修复 3：create_api 幂等 + 默认值**。参考同路径+方法返回已有 ID；原来返回 code 10"已存在"。已改幂等；method 空时默认 POST、serviceName 空时默认 Other（参考 schema 默认值；原来默认 admin-api）
- [x] 验证（2026-10-18）：全 meta 菜单创建后 list 回显 hideTab/hideBreadcrumb/ignoreKeepAlive/hideChildrenInMenu=true、dynamicLevel=15；同名菜单二次创建不产生重复行；同路径+方法 API 二次创建 DB 仅 1 行且 service_name=Other；测试数据已清理
- **已知偏差**：update_menu/update_api 的 meta 字段按 proto 标量整体覆盖（参考 SetNotNil 跳过未传字段）；前端表单总是全量提交，实际无差异

### M4.10 file/job/mcms/pay 行为对齐（参考 RPC 逐行核对）✅ 完成 2026-10-18
> 最后四个服务的全量逻辑核对：file（上传/下载/状态/云上传）、job（任务 CRUD + 调度）、mcms（邮件/短信发送）、pay（订单通知/提交/退款）。

- [x] 核对一致项（无需修改）：job 任务 CRUD + 种子（参考社区版调度器只注册硬编码 hello-world，从不执行 DB 任务——CRUD + 种子即对等）；mcms 默认提供商回退、按提供商 SMTP 客户端缓存、email/sms 日志 send_status 1=成功 2=失败；pay ParseOrderNotify→NotifyOrder0 分发（PAY_SUCCESS 乐观锁更新 + 业务 MQ 载荷 / PAY_CLOSED 关闭）、submit 校验（success/waiting/expired）、退款通知 ProcessRefundStatus
- [x] **修复 1：download 私密文件权限码 10→7 + 中文消息**。原来 `errorx.New(errorx.InvalidArgument, "permission denied")`（code 10），参考返回 code 7"无权访问此文件"。已改 `errorx.New(errorx.Unauthorized, "无权访问此文件")`
- [x] **修复 2：云上传显式未注册提供商静默回退**。原来报错"storage provider not exist"，参考行为是回退默认提供商。已改（仅未注册时回退；无默认提供商才报错）
- [x] 验证（2026-10-18）：① 网关上传 70B png → code 0，url http://localhost:81/fms/image/2026-10-18/51e99b98-...png；② 属主下载 200/70B；③ set-status=2 后物理文件从 public 移到 private 目录（DB 行内事务改名）；④ 新建 user2 下载该私密文件 → code 7 "无权访问此文件"；⑤ file/delete 后 DB 行与磁盘文件均清除，user2 已删
- 至此 core/member/file/job/mcms/pay 六个服务的 RPC 逻辑全部与参考核对完毕（M4.5 契约、M4.6 user、M4.7 删除保护、M4.8 member、M4.9 core create/update、M4.10 本阶段）

### M4.11 服务端 i18n 对齐（登录后左侧菜单/列表中文显示）✅ 完成 2026-10-18
> 用户反馈"登录后左侧菜单是英文"。根因：前端为参考原版直接复制（不改前端），参考实现的翻译全部在服务端（core-api/member-api 内嵌 locale/zh.json + Accept-Language 中间件，`Trans(ctx, key)` 翻译展示字段），我们的网关虽有 i18n 中间件和 locale 文件，但个别展示字段没有替换译文。本轮全部对齐（均只改后端）：

- [x] **修复 1：菜单树 Meta.Title 替换为译文**。原来 fillMenuTrans 只填 `trans` 字段（管理页读），左侧菜单前端读 `meta.title`（仍是 route.xxx 键）。参考 get_menu_list_by_role_logic.go 是 `Meta.Title = Trans(...)`。已改 util.go fillMenuTrans，`meta.title` 与 `trans` 都换成译文
- [x] **修复 2：api 列表 group 列译文**。原来只译 trans（描述），`group` 仍是 apiGroup 键（user/menu/...）。参考 get_api_list_logic.go `group[*v.ApiGroup] = Trans("apiGroup."+*v.ApiGroup)`。已改 getapilistlogic.go
- [x] **修复 3：会员等级列表 trans 译文**。原来 trans 透传 name（英文常量），参考 member-api 是 `Trans(name 键)`。mms_ranks 表 name 已改存键 `memberRank.normal`/`memberRank.vip`（DB + member init.sql 种子 + 网关 locale zh/en 加 memberRank 节），getlistlogic 按键翻译
- [x] **修复 4：user/info 的 roleName 与 departmentName 译文**。原来 roleName 透传键（role.admin）。参考 get_user_info_logic.go 走 RPC GetUserById + `TransRoleName` + `Trans(DepartmentName)`。改动：core.proto UserInfo 加 `department_name` 字段（protoc 重新生成 core.pb.go），RPC getuserbyidlogic 查 sys_departments 填名称，网关 getuserinfologic 改调 GetUserById 并翻译两个字段
- [x] 核对已一致（无需修改）：role/department/position 列表 trans（原有 Trans 调用与参考一致，DB name 存键 department.managementDepartment / position.ceo / role.admin 与参考同）
- [x] 验证（2026-10-18，Accept-Language: zh_CN）：menu/role/list `meta.title`=管理中心；api/list `group`=用户管理、`trans`=用户登录（必须）；member_rank/list `trans`=普通会员/VIP；role/list `trans`=管理员/员工；department/list `trans`=核心管理部门；position/list `trans`=CEO；user/info `roleName`=["管理员"]、`departmentName`="核心管理部门"；Accept-Language: en 回落英文正常
- 已知低优先级差异：网关错误消息（code 8 返回 `login.requireLogin` 键）未做参考的 TransError 翻译；profile 的 Msg 未译（前端不展示）

### M4.12 字典"添加键值"404 修复（隐藏菜单种子）✅ 完成 2026-10-18
> 用户反馈"编辑字典页面中，点击添加键值，页面报错"。根因：按钮跳转 `/dictionary/detail/:dictionaryId`，但该路由在前后端都未注册（参考原版同样缺失该隐藏菜单行——上游版本 bug，参考库 31 条 sys_menus 无此记录，前端 router 静态路由也没有），落到 404 兜底页。按"不改前端"约束，只补后端数据：

- [x] admin_zero.sys_menus 插入 id=223：path=`/dictionary/detail/:dictionaryId`、component=`/sys/dictionaryDetail/index`、parent_id=9、menu_level=2、menu_type=1、title=`route.dictionaryDetailManagementTitle`、hide_menu=1（`permission=''` 才能通过前端 `item.permission == ''` 的路由过滤器，见 permission.ts:233）
- [x] role_menus 绑定 (1,223)（管理员）与 (2,223)（员工，有字典菜单权限的角色都能点按钮）
- [x] admin-core/internal/logic/init.sql 同步种子（INSERT IGNORE 幂等，含 role_menus 两行）
- [x] 验证：menu/role/list 返回 id=223 节点（title=键值管理、hideMenu=true、parentId=9）；RPC getdictionarydetaillist 按 dictionary_id 过滤已就绪。用户 F5 后即可用

### M4.13 字典键值表单"确认"报 status 错误修复（网关请求体归一化）✅ 完成 2026-10-18
> 用户反馈：键值管理页面新增/编辑抽屉点"确认"报 `type mismatch for field "status"`。根因链（全部前端缺陷，前端为参考原版不可改）：RadioButtonGroup.vue `handleClick(item)` 把选项对象 `{label,value}` 当 change 事件发出 → FormItem.vue 把该对象整体写入表单模型 → 点击"已选中"项时 ant RadioGroup 值不变、无纠正性 value 回写 → 提交体形如 `"status":{"label":"启用","value":1}` → go-zero mapping 对 uint32 收对象报 type mismatch（HTTP 200+code9，网关日志 200 但 RPC 未收到——已用日志佐证）。参考原版前端同代码、同缺陷，但约束下只改后端：

- [x] 新增 admin-api middleware NormalizeRadioBody：JSON POST 体先读入，把带 `label`+`value` 键的对象字段归一为其 value（json.Decoder+UseNumber 保留数字精度；无匹配则原样透传，零开销）
- [x] admin.go 全局挂载（I18nHandler 之后），一次修复覆盖所有 RadioButtonGroup 表单字段（菜单 hideMenu、字典/字典项 status 等）
- [x] 验证：`"status":{"label":"启用","value":1}` → code 0 创建成功；普通数字 payload 回归通过；`"status":{"label":"禁用","value":2}` → code 0；测试记录已通过 delete 接口清理（字典 2 键值表恢复为空）

### M4.14 新注册用户无权限修复（默认角色对齐参考 + 角色编辑防护）✅ 完成 2026-10-18
> 用户反馈：新注册用户登录后所有接口报 "You do not have permission to access the API"。根因链：① 我们注册默认绑角色 2（员工），而参考 core.yaml 是 DefaultRoleId: 1（管理员）——authutil.go 常量的注释与参考不符；② 角色 2 的 name/code 在库里是 NULL：updaterolelogic 把请求未携带的字段写成空串（参考是 SetNotNil* 只更新非空），一次不带 name/code 的更新把 role.stuff/002 清空；③ 角色码为空 → casbin Enforce("") 查无策略 → 全部拒绝。

- [x] authutil.go：defaultRegisterRoleID 2→1，注释更正为与参考 DefaultRoleId: 1 一致
- [x] registerlogic.go（core）：注册用户挂默认职位 1（参考 DefaultPositionId: 1）；默认部门由建表默认值 1 兜底（参考 DefaultDepartmentId: 1）
- [x] updaterolelogic.go：改为只更新非空字段（SetNotNil 语义），name/code 不再可能被清空；casbin 策略迁移仅在 code 非空且变化时执行
- [x] 数据修复：sys_roles 角色 2 恢复 name=role.stuff/code=002；已注册用户 fred 改绑角色 1
- [x] 验证：captcha 注册新用户 → 登录 code 0 → menu/role/list 返回 32 个菜单、user/info roleName=[管理员] departmentName=核心管理部门；测试用户已删除（软删）
- 注：用户需退出重新登录（token 携带旧角色码）。后续新注册用户默认即管理员（与参考一致）

### M4.15 新注册默认员工角色 + 管理员开关员工权限 ✅ 完成 2026-10-18
> 用户要求（原话"我觉得管理员可以给新注册员工关闭权限吧"）：新注册用户不应默认是管理员，应为普通员工，权限由管理员控制。**注意：这是对参考实现的主动偏离**（参考 DefaultRoleId: 1），按用户要求收紧，已记录备忘。

- [x] authutil.go：defaultRegisterRoleID 2（普通员工），注释说明偏离参考的原因与 PLAN 位置
- [x] 角色 2 基准权限：通过 /sys-api/authority/api/create_or_update 写入 39 条 is_required=1 的 API 策略（与管理员在角色管理页面保存 API 权限为同一链路；菜单权限沿用原 role_menus 17 个菜单）
- [x] fred 降为普通员工（user_roles→2），旧 token 全部拉黑（sys_tokens.status=2 + Redis BLACKLIST），重新登录后生效
- [x] 验证闭环（测试用户 regstaff01 已清理）：注册→角色=2；登录后 menu/role/list 返回 17 个菜单节点；POST /sys-api/user/list 报 code 7（权限关闭）；管理员给角色 2 追加该 API→员工立刻 code 0；管理员恢复 39 条→员工立刻回到 code 7。开/关均即时生效（网关 create_or_update 后 LoadPolicy）
- 注：员工默认可见系统菜单（role_menus 与参考一致），页面操作被拒；管理员可在 角色管理→普通员工 里收菜单/开 API，或在 用户管理 里给单个用户换角色/禁用

### M5 盲盒电商业务（另立计划）
- 盲盒/抽卡业务作为新 RPC（admin-blindbox 或独立项目），见盲盒计划文档与合规铁律

## 7. 风险与对策

| 风险 | 对策 |
|---|---|
| 32 张表 CRUD 工作量大 | gentool 反生成模型 + goctl 骨架；M1 只做 core 的 13 张 sys 表 |
| gorm 查询逻辑与原版行为差异（分页/软删/数据权限） | 验收标准用"与旧版接口返回一致"逐接口比对 |
| 前端改造量超预期 | 路径保持原样设计已把前端改动压到最小（只动 proxy） |
| 与上游 simple-admin 无关系后失去参考 | D:\admin 保留运行，作为活文档随时比对 |
| casbin 策略同步延迟 | 沿用 Redis watcher 成熟方案 |

## 8. 待拍板决策（均已按推荐项落地）

1. **前端策略**：✅ 复制 backend-ui 改造（admin-ui，9273 端口，代理不重写路径）
2. **pay 模块**：✅ 首期克隆（社区版订单/退款/演示单，gorm 版）
3. **建表方式**：✅ 执行 SQL 脚本（D:\admin\sql\all.sql 改造版）
4. **盲盒业务归属**：留待盲盒阶段（M4 原计划，按合规铁律另立文档）
