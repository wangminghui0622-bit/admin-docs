# admin-zero 部署文档

Simple Admin 的 gorm 重实现版（参考 D:\admin 原版）。单 REST 网关 + 多 RPC 服务 + Vue 前端。

## 仓库列表

| 仓库 | 说明 |
|---|---|
| admin-api | REST 网关（端口 9210，/sys-api /mms-api /fms-api /pay-api 统一入口） |
| admin-core | 核心服务 RPC（用户/角色/菜单/API 权限/字典/部门/职位等，端口 9211） |
| admin-member | 会员服务 RPC（端口 9212） |
| admin-file | 文件服务 RPC（端口 9213） |
| admin-job | 定时任务 RPC（端口 9214） |
| admin-message | 消息服务 RPC（邮件/短信，端口 9215） |
| admin-pay | 支付服务 RPC（订单/退款/演示单，端口 9216） |
| admin-common | 公共库（gorm 模型、jwt、casbin、验证码等） |
| admin-tools | 工具脚本 |
| admin-ui | 前端（Vue3 + Vben Admin，端口 9273，代理到 9210） |
| admin-docs | 本文档与建库脚本 |

一键克隆：

```bash
for r in admin-api admin-core admin-common admin-member admin-file admin-job admin-message admin-pay admin-tools admin-ui admin-docs; do
  git clone https://github.com/wangminghui0622-bit/$r.git
done
```

## 环境要求

- Go 1.26+
- Node.js 18+ 与 pnpm
- MySQL 8.0、Redis

## 建库

```bash
mysql -uroot -p -e "CREATE DATABASE IF NOT EXISTS admin_zero DEFAULT CHARACTER SET utf8mb4;"
mysql -uroot -p admin_zero < admin-docs/sql/admin_zero.sql
```

dump 已含全部表结构与种子数据（菜单、角色、API 权限、默认账号等），导入即可用。
如需干净重建，也可启动各服务后调用其 init database 接口（core/job/mcms/member/file/pay 均有 init.sql）。

## 启动（每个服务开一个终端）

```bash
cd admin-core    && go run core.go    -f etc/core.yaml    # 9211
cd admin-member  && go run member.go  -f etc/member.yaml  # 9212
cd admin-file    && go run file.go    -f etc/file.yaml    # 9213
cd admin-job     && go run job.go     -f etc/job.yaml     # 9214
cd admin-message && go run mcms.go    -f etc/mcms.yaml    # 9215
cd admin-pay     && go run pay.go     -f etc/pay.yaml     # 9216
cd admin-api     && go run admin.go   -f etc/admin-api.yaml # 9210（最后启）
cd admin-ui      && pnpm install && pnpm dev             # 9273
```

启动顺序：先各 RPC，再网关 admin-api，最后前端。

## 登录

- 地址：http://127.0.0.1:9273
- 账号：admin / simple-admin（参考默认值，如已修改以实际为准）
- 新注册用户默认是普通员工角色（管理员在 角色管理→普通员工 里开关其权限）

## 配置说明

- 各服务 etc/*.yaml 中的 MySQL / Redis 连接按新机器实际地址修改（当前默认 127.0.0.1:3306 与 127.0.0.1:6379，数据库 admin_zero）
- admin-ui 通过 vite 代理访问 http://127.0.0.1:9210，前后端同机无需改
- 若更换机器后端口冲突，改对应 etc 配置与 admin-ui 代理即可

## 端口总表

| 服务 | 端口 |
|---|---|
| admin-ui | 9273 |
| admin-api | 9210 |
| admin-core | 9211 |
| admin-member | 9212 |
| admin-file | 9213 |
| admin-job | 9214 |
| admin-message | 9215 |
| admin-pay | 9216 |
