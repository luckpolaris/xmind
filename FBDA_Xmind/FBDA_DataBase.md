## FBDA tables message
#### 1、 ams_accessLog
后台管理员请求日志

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `user_id` | 操作员编号 | int(11) | MUL | YES |  | 0 |
| 3 | `type` | 账号类型  0：管理员登录 1：催收公司登录 | tinyint(2) |  | YES |  | 0 |
| 4 | `access_url` | 接口请求地址 | varchar(500) |  | YES |  |  |
| 5 | `ip` |  | varchar(150) |  | YES |  |  |
| 6 | `user_accept` | 浏览器信息 | varchar(500) |  | YES |  |  |
| 7 | `mac` | 请求时的mac地址 | varchar(500) |  | YES |  |  |
| 8 | `params` | 请求参数 | text |  | YES |  |  |
| 9 | `create_at` |  | int(11) |  | YES |  |  |


#### 2、 ams_approve
管理员审批订单的审批表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `order_id` | orderid | int(11) unsigned |  | YES |  |  |
| 3 | `created_at` |  | int(11) |  | YES |  |  |
| 4 | `created_by` |  | int(11) |  | YES |  |  |
| 5 | `approve_by` |  | int(11) |  | YES |  |  |
| 6 | `user_id` |  | int(11) |  | YES |  |  |
| 7 | `status` | 1成功0拒绝 | varchar(255) |  | YES |  |  |
| 8 | `price` | 审批金额 | decimal(10,2) |  | YES |  |  |


#### 3、 ams_jurisdiction
后台菜单按钮表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `menu` | 菜单名称 | varchar(50) |  | NO |  |  |
| 3 | `button` |  1 按钮 0 菜单 | varchar(50) |  | YES |  |  |
| 4 | `parent_id` | 父级id | int(11) |  | YES |  |  |
| 5 | `created_at` |  | int(11) |  | YES |  |  |
| 6 | `updated_at` |  | int(11) |  | YES |  |  |
| 7 | `delete_state` | 删除状态 | int(11) |  | YES |  |  |
| 8 | `hierarchy` | 层级 | int(11) |  | NO |  |  |
| 9 | `sort` | 排序 | int(11) |  | YES |  |  |
| 10 | `deleted_at` |  | int(255) |  | YES |  |  |
| 11 | `url` | 请求路径 | varchar(255) |  | YES |  |  |
| 12 | `icon` | 图片 | varchar(255) |  | YES |  |  |


#### 4、 ams_log
管理员登录日志

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `admin_id` | 管理员id | int(11) |  | YES |  |  |
| 3 | `name` | 管理员昵称 | varchar(30) |  | YES |  |  |
| 4 | `type` | 类型 | int(1) |  | YES |  |  |
| 5 | `ip_address` | ip地址 | varchar(100) |  | YES |  |  |
| 6 | `created_at` | 创建时间 | int(11) |  | YES |  |  |


#### 5、 ams_message_info
管理员信息表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `name` | 昵称 | varchar(50) |  | YES |  |  |
| 3 | `account` | 账户 | varchar(50) | MUL | YES |  |  |
| 4 | `password` | 密码 | varchar(50) |  | YES |  |  |
| 5 | `auth` | 权限 | varchar(500) |  | YES |  |  |
| 6 | `status` | 1.启用            0.未启用 | int(11) |  | YES |  |  |
| 7 | `type` | 1 超级管理员 2 管理员 | int(11) |  | YES |  | 2 |
| 8 | `phone` | 手机号码 | char(20) | UNI | YES |  |  |
| 9 | `role_id` | 角色id 1为管理员 2 为催收员 3 审批员 4 话务员 5 放款员 | int(11) | MUL | YES |  |  |
| 10 | `created_at` |  | int(11) |  | YES |  |  |
| 11 | `updated_at` |  | int(11) |  | YES |  |  |
| 12 | `delete_type` |  | int(11) |  | YES |  | 0 |
| 13 | `deleted_at` |  | int(11) |  | YES |  |  |


#### 6、 ams_role
管理员角色表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `name` | 角色 | varchar(50) |  | YES |  |  |
| 3 | `created_at` |  | int(11) |  | YES |  |  |
| 4 | `updatedAt` |  | datetime |  | YES |  |  |


#### 7、 ams_role_admin

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO |  |  |
| 2 | `role_id` | 角色id | int(11) |  | YES |  |  |
| 3 | `admin_id` | admin | int(11) |  | YES |  |  |


#### 8、 app_disable_bank
用户禁用银行

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `blackbank` | 禁用银行名称 | varchar(255) |  | YES |  |  |
| 3 | `isenable` | 是否启用 1启用 0禁用 | varchar(255) |  | NO |  |  |
| 4 | `createat` |  | int(255) |  | YES |  |  |


#### 9、 channel_center_report
渠道中心报表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `create_at` | 创建时间 | int(11) |  | YES |  | 0 |
| 3 | `registration_number` | 注册数 | int(11) |  | YES |  |  |
| 4 | `login_num` | 登录数 | int(11) |  | YES |  | 0 |
| 5 | `login_rate` | 登录率 | decimal(13,2) |  | YES |  | 0.00 |
| 6 | `certification_number` |  | int(11) |  | YES |  |  |
| 7 | `certification_rate` | 认证率 | decimal(13,2) |  | YES |  | 0.00 |
| 8 | `application_number` | 申请数 | int(11) |  | YES |  | 0 |
| 9 | `new_customer_num` | 新客申请数 | int(11) |  | YES |  | 0 |
| 10 | `old_customer_num` | 老客申请数 | int(11) |  | YES |  | 0 |
| 11 | `order_pass_num` | 订单通过数 | int(11) |  | YES |  | 0 |
| 12 | `order_pass_rate` | 订单通过率 | decimal(13,2) |  | YES |  | 0.00 |
| 13 | `new_order_pass_num` | 新客通过数 | int(11) |  | YES |  | 0 |
| 14 | `new_order_pass_rate` | 新客通过率 | decimal(13,2) |  | YES |  | 0.00 |
| 15 | `old_order_pass_num` | 老客通过数 | int(11) |  | YES |  | 0 |
| 16 | `old_order_pass_rate` | 老客通过率 | decimal(13,2) |  | YES |  | 0.00 |
| 17 | `loan_number` | 放款数 | int(11) |  | YES |  | 0 |
| 18 | `load_amount` | 放款额 | decimal(13,2) |  | YES |  | 0.00 |
| 19 | `due_to_num` | 今日总到期数 | int(11) |  | YES |  | 0 |
| 20 | `due_to_num1` | 今日到期数 | int(11) |  | YES |  | 0 |
| 21 | `due_to_repay_num` | 到期还款数 | int(11) |  | YES |  | 0 |
| 22 | `due_to_repay_amount` | 到期还款额 | decimal(13,2) |  | YES |  | 0.00 |
| 23 | `due_to_un_repay_amount` | 今日到期未还款额 | varchar(13) |  | YES |  | 0.000 |
| 24 | `renewals_num` | 到期续期数 | int(11) |  | YES |  | 0 |
| 25 | `renewals_amount` | 到期续额 | decimal(13,2) |  | YES |  | 0.00 |
| 26 | `renewals_rate` | 到期还款率 | decimal(13,2) |  | YES |  | 0.00 |
| 27 | `payments_amount` | 总款额 | decimal(13,2) |  | YES |  | 0.00 |
| 28 | `payments_num` | 今日总还款数 | int(11) |  | YES |  | 0 |
| 29 | `all_renewals_num` | 总续期数 | int(11) |  | YES |  | 0 |
| 30 | `all_renewals_amount` | 总续期数 | int(11) |  | YES |  | 0 |


#### 10、 channel_config
渠道配置表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `name` | 渠道名称 | varchar(100) | PRI | NO |  |  |
| 3 | `identifier` | 唯一标识 | varchar(100) | MUL | YES |  |  |
| 4 | `url` | 推广地址 | varchar(255) |  | YES |  |  |
| 5 | `status` | 状态  1 关闭， 2 开启 | tinyint(2) |  | YES |  | 2 |
| 6 | `settle_fun` | 结算方式  0 无， 1 CPA(注册)  2 (下款)cps， 3 浏览量(uv)  | tinyint(2) |  | YES |  | 0 |
| 7 | `price` | 单价 | decimal(32,8) |  | YES |  |  |
| 8 | `linkman` | l联系人 | varchar(100) |  | YES |  |  |
| 9 | `link_phone` | 联系人电话号码 | varchar(20) |  | YES |  |  |
| 10 | `situation_config` | 场景设置 0 网页  1 微信  2 qq 3 支付保 4 app | int(1) |  | YES |  | 0 |
| 11 | `auto_pass` | 自动通过  1 开启， 2 关闭 | tinyint(1) |  | YES |  | 0 |
| 12 | `pass_score` | 自动通过风控分 | int(10) |  | YES |  |  |
| 13 | `auo_refuse` | 自动拒绝  1 开启， 2 关闭 | tinyint(1) |  | YES |  | 0 |
| 14 | `days_withhold_overdue` | 逾期代扣天数 | int(3) |  | YES |  |  |
| 15 | `refuse_score` | 自动拒绝风控分 | int(10) |  | YES |  |  |
| 16 | `created_at` |  | int(11) |  | YES |  |  |
| 17 | `updated_at` |  | int(11) |  | YES |  |  |
| 18 | `deleted_at` |  | int(11) |  | YES |  | 0 |
| 19 | `created_by` |  | int(11) |  | YES |  |  |
| 20 | `max_ip_count` | 同一ip最大注册数 | int(3) |  | YES |  |  |
| 21 | `max_device_count` | 同一设备最大访问数 | int(3) |  | YES |  | 1 |
| 22 | `uv` | 浏览量 | int(11) |  | YES |  | 5 |
| 23 | `cpa` | 注册 | int(11) |  | YES |  | 0 |
| 24 | `cps` | 下款 | int(11) |  | YES |  | 0 |
| 25 | `background_picture` |  | varchar(255) |  | YES |  |  |
| 26 | `repayment_days` | 还款天数 | int(11) |  | YES |  |  |
| 27 | `staging_num` | 还款期数 | int(2) unsigned zerofill |  | YES |  | 01 |
| 28 | `init_credit` | 初始额度 | decimal(10,2) |  | YES |  |  |
| 29 | `auto_pass_old` | 是否开启复贷免审 0开启 1关闭 | int(1) |  | YES |  | 1 |
| 30 | `dayrate_interest` | 日利率 | decimal(32,8) |  | YES |  |  |
| 31 | `rate_pundage` | 手续费比率 | decimal(32,8) |  | YES |  |  |
| 32 | `blacklist_filter` | 是否开启过滤黑名单 1 开启 0 不开启  | int(1) |  | YES |  |  |
| 33 | `dayrate_dedit` | 日违约金比率 | decimal(32,8) |  | YES |  |  |
| 34 | `maxrate_dedit` | 最大逾期违约金比率 | decimal(32,8) |  | YES |  |  |
| 35 | `auto_pay_score` | 开启满足风控分自动放款 1 开启  2  不开启 | int(11) |  | YES |  |  |
| 36 | `days_repeat_refuse_overdue` | 复贷自动拒绝(逾期天数) | int(11) |  | YES |  |  |
| 37 | `auto_pay_old` | 是否开启老客自动放款 1 开启 2 不开启 | int(11) |  | YES |  |  |
| 38 | `times_refuse` | 复贷超过几次拒绝 | int(11) |  | YES |  |  |
| 39 | `days_send_before` | 到期前几天发送短信 | int(11) |  | YES |  |  |
| 40 | `days_send_overdue` | 逾期几天后发短信 | int(11) |  | YES |  |  |
| 41 | `days_unrepayment_overdue` | 逾期不自动扣费天数 | int(11) |  | YES |  |  |
| 42 | `apply_second_refuse` | 拒绝用户可重新申请借款天数 | int(11) |  | YES |  |  |
| 43 | `extension_day` | 展期天数 | int(255) |  | YES |  |  |
| 44 | `extension_price` | 展期金额 | decimal(10,2) |  | YES |  |  |
| 45 | `risk_switch` | 0 关闭 1开启 | int(11) |  | YES |  | 0 |
| 46 | `pms_id` |  | int(11) |  | YES |  |  |
| 47 | `is_white` | 1开始 0关闭 | int(11) |  | YES |  |  |
| 48 | `short_link` | 短链接 | varchar(255) |  | YES |  |  |
| 49 | `short_link_time` | 短链接到期时间 | int(11) |  | YES |  |  |
| 50 | `new_auto_pay` | 新用户自动放款 0不放款 1自动放款  | int(11) |  | YES |  | 0 |
| 51 | `old_auto_pay` | 老用户通过是否自动放款 0不放款 1 放款 | int(11) |  | YES |  | 0 |
| 52 | `new_auto_orders` | 新用户自动下单 0 不下单 1 下单 | int(11) |  | YES |  | 0 |
| 53 | `old_auto_orders` | l老用户自动下单 0 不下单 1 下单 | int(11) |  | YES |  | 0 |
| 54 | `send_num` | 允许预下单复借的次数 | int(11) |  | YES |  | 1 |
| 55 | `old_auto_pass` | 老用户自动通过 0不通过 1 通过 | int(11) |  | YES |  | 0 |


#### 11、 channel_conversion
渠道转报表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` | 渠道主键 | int(11) | PRI | NO | auto_increment |  |
| 2 | `channel_id` | 渠道Id | int(11) |  | YES |  | 0 |
| 3 | `name` | 渠道名称 | varchar(100) |  | YES |  |  |
| 4 | `intercept_num` | 拦截数 | int(11) |  | YES |  | 0 |
| 5 | `black_before_num` | 前置黑名单数 | int(11) |  | YES |  | 0 |
| 6 | `black_num` | 黑名单数 | int(11) |  | YES |  | 0 |
| 7 | `uv` | uv 数量 | int(11) |  | YES |  | 0 |
| 8 | `registration_number` | 注册数量 | int(11) |  | YES |  | 0 |
| 9 | `login_num` | 登录数量 | int(11) |  | YES |  | 0 |
| 10 | `live_auth` | 活体数量 | int(11) |  | YES |  | 0 |
| 11 | `bank_auth` | 银行卡数量 | int(11) |  | YES |  | 0 |
| 12 | `carrier_auth` | 运营商数量 | int(11) |  | YES |  | 0 |
| 13 | `relation_auth` | 关系认证数量 | int(11) |  | YES |  | 0 |
| 14 | `apply` | 申请数 | int(11) |  | YES |  | 0 |
| 15 | `pass` | 通过数 | int(11) |  | YES |  | 0 |
| 16 | `cps` | 放款数 | int(11) |  | YES |  | 0 |
| 17 | `intercept_rate` | 拦截率 | decimal(13,2) |  | YES |  | 0.00 |
| 18 | `black_before_rate` | 前置拦截率 | decimal(13,2) |  | YES |  | 0.00 |
| 19 | `black_rate` | 黑名单率 | decimal(13,2) |  | YES |  | 0.00 |
| 20 | `login_rate` | 登录率 | decimal(13,2) |  | YES |  | 0.00 |
| 21 | `live_auth_rate` | 人脸率 | decimal(13,2) |  | YES |  | 0.00 |
| 22 | `bank_auth_rate` | 银行卡率 | decimal(13,2) |  | YES |  | 0.00 |
| 23 | `carrier_auth_rate` | 运营商率 | decimal(13,2) |  | YES |  | 0.00 |
| 24 | `relation_auth_rate` | 关系率 | decimal(13,2) |  | YES |  | 0.00 |
| 25 | `apply_rate` | 申请率 | decimal(13,2) |  | YES |  | 0.00 |
| 26 | `pass_rate` | 通过率 | decimal(13,2) |  | YES |  | 0.00 |
| 27 | `cps_rate` | 放款率 | decimal(13,2) |  | YES |  | 0.00 |
| 28 | `create_at` | 创建时间 | int(11) |  | YES |  | 0 |


#### 12、 channel_credit_increament
渠道逾期配置

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `channel_id` | 渠道id | int(11) |  | NO |  |  |
| 3 | `settle_num` | 结清次数 | int(3) |  | YES |  |  |
| 4 | `max_overdue_day` | 最长逾期天数 | int(4) |  | YES |  |  |
| 5 | `credit_incre` | 提额 | decimal(10,2) |  | YES |  |  |
| 6 | `created_at` |  | int(11) |  | YES |  |  |
| 7 | `updated_at` |  | int(11) |  | YES |  |  |
| 8 | `deleted_at` |  | int(11) |  | YES |  |  |


#### 13、 channel_risk_management
渠道风控配置

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `channel_id` |  | int(11) |  | NO |  |  |
| 3 | `auto_pass_score` | 自动通过分数 | decimal(10,2) |  | YES |  |  |
| 4 | `auto_reject_score` | 自动拒绝分数 | decimal(10,2) |  | YES |  |  |
| 5 | `orderby` | 默认排序字段 | int(2) |  | YES |  |  |
| 6 | `status` | 是否开启 1 开启 2 不开启 | int(1) |  | YES |  |  |
| 7 | `created_at` |  | int(11) |  | YES |  |  |
| 8 | `created_by` |  | int(11) |  | YES |  |  |
| 9 | `updated_at` |  | int(11) |  | YES |  |  |
| 10 | `updated_by` |  | int(11) |  | YES |  |  |
| 11 | `deleted_at` |  | int(11) |  | YES |  |  |
| 12 | `risk_id` | 风控主键 1 暗金 2字谜 | int(11) |  | YES |  |  |
| 13 | `type` | 0 是新客户 1 是老客户 | int(11) |  | YES |  |  |


#### 14、 channel_stage
渠道还款率配置

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `channel_id` | 渠道id | int(11) |  | NO |  |  |
| 3 | `stage_num` | 第n期 | int(3) |  | YES |  |  |
| 4 | `pay_percent` | 还款比率 | decimal(10,2) |  | YES |  |  |
| 5 | `repayment_day` | 还款天数 | int(4) |  | YES |  |  |
| 6 | `created_at` |  | int(11) |  | YES |  |  |
| 7 | `created_by` |  | int(11) |  | YES |  |  |
| 8 | `updated_at` |  | int(11) |  | YES |  |  |
| 9 | `updated_by` |  | int(11) |  | YES |  |  |
| 10 | `deleted_at` |  | int(11) |  | YES |  |  |


#### 15、 channel_statistics
渠道访问类别

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `channel_id` | 渠道基本信息id | int(11) | MUL | NO |  |  |
| 3 | `access_type` | 访问类别 1 浏览量， 2 注册量 | int(1) |  | YES |  |  |
| 4 | `address` | 注册或访问来源（ip 或 设备） | varchar(100) |  | YES |  |  |
| 5 | `num` | 统计数（同一设备 1 uv，同一ip 5个） | int(11) |  | YES |  |  |
| 6 | `created_at` |  | int(11) |  | YES |  |  |
| 7 | `updated_at` |  | int(11) |  | YES |  |  |


#### 16、 oms_orders
订单表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `order_code` | 订单号 | char(20) |  | NO |  |  |
| 3 | `actual_price` | 实到金额 | decimal(32,8) |  | YES |  |  |
| 4 | `borrow_price` | 放款金额 | decimal(32,8) |  | YES |  |  |
| 5 | `created_at` | 申请日期 | int(11) | MUL | YES |  |  |
| 6 | `user_id` |  | int(11) | MUL | YES |  |  |
| 7 | `settle_at` | 结算时间 | int(11) |  | YES |  |  |
| 8 | `overdue_day` | 逾期天数 | int(11) |  | YES |  |  |
| 9 | `order_status` | 0 待审核 1 待审批 2 待放款 3 正在放款 4 已经放款 5 已结清 6 放款失败 7 已拒绝 8 正在还款 | int(11) |  | YES |  |  |
| 10 | `stage_num` | 多少期 | varchar(255) |  | YES |  |  |
| 11 | `dayrate_interest` | 日利率 | decimal(32,6) |  | YES |  |  |
| 12 | `dayrate_dedit` | 日违约金比率 | decimal(32,6) |  | YES |  |  |
| 13 | `maxrate_dedit` | 最大逾期违约金比率 | decimal(32,6) |  | YES |  |  |
| 14 | `days_send_before` | 到期前几天发送短信 | int(11) |  | YES |  |  |
| 15 | `days_send_overdue` | 逾期几天后发短信 | int(11) |  | YES |  |  |
| 16 | `days_unrepayment_overdue` | 逾期不自动扣费天数 | int(11) |  | YES |  |  |
| 17 | `bank_card` | 银行卡号 | varchar(1000) |  | YES |  |  |
| 18 | `loan_at` | 放款时间 | int(11) | MUL | YES |  |  |
| 19 | `plan_on_at` | 计划结清日期 | int(11) |  | YES |  |  |
| 20 | `approve_by` | 审批人 | int(11) | MUL | YES |  |  |
| 21 | `approve_at` | 审批时间 | int(11) |  | YES |  |  |
| 22 | `approve_name` |  | varchar(100) |  | YES |  |  |
| 23 | `loan_by` | 放款人 | int(11) | MUL | YES |  |  |
| 24 | `serial_code` | 流水号 | char(30) |  | YES |  |  |
| 25 | `loan_name` | 放款人名称 | varchar(255) |  | YES |  |  |
| 26 | `risk_id` | 风控id | int(11) |  | YES |  |  |
| 27 | `risk_name` | 风控名称 | varchar(255) |  | YES |  |  |
| 28 | `risk_num` | 风控分数 | decimal(5,2) |  | YES |  |  |
| 29 | `loan_day` | 放款天数 | int(11) |  | YES |  |  |
| 30 | `order_rate` | 利息 | decimal(10,4) |  | YES |  |  |
| 31 | `handler_satus` |  | int(11) |  | YES |  |  |
| 32 | `bank_card_id` |  | int(11) |  | YES |  |  |
| 33 | `pay_date` | 到账时间 | int(11) |  | YES |  |  |
| 34 | `extension_num` | 展期次数 | int(11) |  | YES |  | 0 |
| 35 | `osd_code` |  | varchar(100) | UNI | YES |  |  |
| 36 | `first_loan` |  | int(11) |  | YES |  |  |
| 37 | `channel_id` |  | int(11) |  | YES |  |  |
| 38 | `oms_send_id` |  | int(11) |  | YES |  |  |
| 39 | `note` | 拒绝原因 | varchar(255) |  | YES |  |  |


#### 17、 oms_overdue_analyse_report
逾期订单分析日报表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` | id | int(11) | PRI | NO | auto_increment |  |
| 2 | `report_date` | 报表日期 | int(11) | MUL | YES |  |  |
| 3 | `total` | 总订单数 | int(11) |  | YES |  |  |
| 4 | `first_borrow` | 首借数 | int(11) |  | YES |  |  |
| 5 | `repeat_borrow` | 复借数 | int(11) |  | YES |  |  |
| 6 | `continue_borrow` | 续期数 | int(11) |  | YES |  |  |
| 7 | `first_overdue` | 首逾数 | int(11) |  | YES |  |  |
| 8 | `first_overdue_percent` | 首逾率 | decimal(4,3) |  | YES |  |  |
| 9 | `repeat_overdue` | 复逾数 | int(11) |  | YES |  |  |
| 10 | `repeat_overdue_percent` | 复逾率 | decimal(4,3) |  | YES |  |  |
| 11 | `continue_overdue` | 续期逾期数 | int(11) |  | YES |  |  |
| 12 | `continue_overdue_percent` | 续期逾期率 | decimal(4,3) |  | YES |  |  |
| 13 | `first_overdue_one` | 逾期1-2天首借数 | int(11) |  | YES |  |  |
| 14 | `repeat_overdue_one` | 逾期1-2天复借数 | int(11) |  | YES |  |  |
| 15 | `continue_overdue_one` | 逾期1-2天续期数 | int(11) |  | YES |  |  |
| 16 | `first_overdue_three` | 逾期3-4天首借数 | int(11) |  | YES |  |  |
| 17 | `repeat_overdue_three` | 逾期3-4天复借数 | int(11) |  | YES |  |  |
| 18 | `continue_overdue_three` | 逾期3-4天续期数 | int(11) |  | YES |  |  |
| 19 | `first_overdue_five` | 逾期5-6天首借数 | int(11) |  | YES |  |  |
| 20 | `repeat_overdue_five` | 逾期5-6天复借数 | int(11) |  | YES |  |  |
| 21 | `continue_overdue_five` | 逾期5-6天续期数 | int(11) |  | YES |  |  |
| 22 | `first_overdue_seven` | 逾期7-14天首借数 | int(11) |  | YES |  |  |
| 23 | `repeat_overdue_seven` | 逾期7-14天复借数 | int(11) |  | YES |  |  |
| 24 | `continue_overdue_seven` | 逾期7-14天续期数 | int(11) |  | YES |  |  |
| 25 | `first_overdue_fourteen` | 逾期14天以上首借数 | int(11) |  | YES |  |  |
| 26 | `repeat_overdue_fourteen` | 逾期14天复借数 | int(11) |  | YES |  |  |
| 27 | `continue_overdue_fourteen` | 逾期14天续期数 | int(11) |  | YES |  |  |


#### 18、 oms_pay_orders_message
主订单付款记录表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `status` |  | int(11) |  | YES |  |  |
| 3 | `order_id` |  | int(11) |  | YES |  |  |
| 4 | `order_code` |  | varchar(500) |  | YES |  |  |
| 5 | `message` |  | varchar(1000) |  | YES |  |  |
| 6 | `created_at` |  | int(11) |  | YES |  |  |
| 7 | `num` |  | int(11) |  | YES |  | 0 |
| 8 | `update_at` |  | int(11) |  | YES |  |  |
| 9 | `create_by` |  | int(11) |  | YES |  |  |
| 10 | `create_name` |  | varchar(255) |  | YES |  |  |


#### 19、 oms_reduce
订单减免表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `sub_order_id` | 子订单信息 | int(11) |  | YES |  |  |
| 3 | `apply_price` | 申请金额 | decimal(32,8) |  | YES |  |  |
| 4 | `real_price` | 实际减免金额 | decimal(32,8) |  | YES |  |  |
| 5 | `reduce_status` | 减免状态 | enum('待审批','成功','失败') |  | YES |  | 待审批 |
| 6 | `reason` | 原因 | varchar(200) |  | YES |  |  |
| 7 | `updated_at` | 审批时间 | int(11) |  | YES |  |  |
| 8 | `updated_by` | 审批人 | varchar(30) |  | YES |  |  |
| 9 | `created_at` |  | int(11) |  | YES |  |  |
| 10 | `created_by` |  | int(11) |  | YES |  |  |


#### 20、 oms_remission_order
主订单和子订单的关联关系表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO |  |  |
| 2 | `order_id` |  | int(11) |  | YES |  |  |
| 3 | `sub_order_id` |  | int(11) |  | YES |  |  |
| 4 | `price` |  | decimal(32,8) |  | YES |  |  |
| 5 | `create_at` |  | int(11) |  | YES |  |  |
| 6 | `create_by` |  | int(11) |  | YES |  |  |


#### 21、 oms_repayment_record
订单还款记录表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `price` | 还款金额 | decimal(32,2) |  | YES |  |  |
| 3 | `sub_order_id` | 子订单信息 | int(11) |  | YES |  |  |
| 4 | `serial_code` | 流水号 | char(30) |  | YES |  |  |
| 5 | `order_id` |  | int(11) | MUL | YES |  |  |
| 6 | `order_code` |  | char(20) |  | YES |  |  |
| 7 | `created_at` | 还款时间 | int(11) |  | YES |  |  |
| 8 | `created_by` |  | int(11) |  | YES |  |  |
| 9 | `type` | 还款渠道 1银行卡   2 支付宝支付，3微信支付4代扣 | int(11) |  | YES |  |  |
| 10 | `dev_price` | 剩余还款金额 | decimal(30,2) |  | YES |  |  |
| 11 | `note` | 失败理由 | varchar(6000) |  | YES |  |  |
| 12 | `status` | 是否成功 0成功 1失败 2 关闭 3未支付 | int(2) |  | YES |  |  |
| 13 | `pay_method` | 还款方式   0线下还款 1 主动还款 2 系统代扣 | int(11) |  | YES |  |  |
| 14 | `pay_type` | 1 订单 2展期 | int(255) |  | YES |  |  |


#### 22、 oms_return_day
订单还款日期表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned zerofill | PRI | NO | auto_increment |  |
| 2 | `user_id` | 用于表 | int(11) |  | YES |  |  |
| 3 | `created_at` | 创建时间 | int(11) |  | YES |  |  |
| 4 | `type` | 用户类型 1->新客，2->老客 | int(1) |  | NO |  |  |


#### 23、 oms_send_orders
订单续借表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `user_id` |  | int(11) |  | YES |  |  |
| 3 | `create_at` |  | int(11) |  | YES |  |  |
| 4 | `status` | 0 待生成订单 1 已经生成过订单 2 原订单已经被拒绝 | int(11) |  | YES |  |  |
| 5 | `num` | 剩余续借次数 | int(11) |  | YES |  |  |
| 6 | `sum_num` | 最大续借次数 | int(11) |  | YES |  |  |
| 7 | `price` |  | decimal(32,2) |  | YES |  |  |


#### 24、 oms_sub_order_report
逾期子订单订单分析日报表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` | id | int(11) | PRI | NO | auto_increment |  |
| 2 | `report_date` | 报表日期 | int(11) | MUL | YES |  |  |
| 3 | `total` | 总订单数 | int(11) |  | YES |  |  |
| 4 | `first_borrow` | 首借数 | int(11) |  | YES |  |  |
| 5 | `repeat_borrow` | 复借数 | int(11) |  | YES |  |  |
| 6 | `continue_borrow` | 续期数 | int(11) |  | YES |  |  |
| 7 | `first_overdue` | 首逾数 | int(11) |  | YES |  |  |
| 8 | `first_overdue_percent` | 首逾率 | decimal(4,3) |  | YES |  |  |
| 9 | `repeat_overdue` | 复逾数 | int(11) |  | YES |  |  |
| 10 | `repeat_overdue_percent` | 复逾率 | decimal(4,3) |  | YES |  |  |
| 11 | `continue_overdue` | 续期逾期数 | int(11) |  | YES |  |  |
| 12 | `continue_overdue_percent` | 续期逾期率 | decimal(4,3) |  | YES |  |  |
| 13 | `first_overdue_one` | 逾期1-2天首借数 | int(11) |  | YES |  |  |
| 14 | `repeat_overdue_one` | 逾期1-2天复借数 | int(11) |  | YES |  |  |
| 15 | `continue_overdue_one` | 逾期1-2天续期数 | int(11) |  | YES |  |  |
| 16 | `first_overdue_three` | 逾期3-4天首借数 | int(11) |  | YES |  |  |
| 17 | `repeat_overdue_three` | 逾期3-4天复借数 | int(11) |  | YES |  |  |
| 18 | `continue_overdue_three` | 逾期3-4天续期数 | int(11) |  | YES |  |  |
| 19 | `first_overdue_five` | 逾期5-6天首借数 | int(11) |  | YES |  |  |
| 20 | `repeat_overdue_five` | 逾期5-6天复借数 | int(11) |  | YES |  |  |
| 21 | `continue_overdue_five` | 逾期5-6天续期数 | int(11) |  | YES |  |  |
| 22 | `first_overdue_seven` | 逾期7-14天首借数 | int(11) |  | YES |  |  |
| 23 | `repeat_overdue_seven` | 逾期7-14天复借数 | int(11) |  | YES |  |  |
| 24 | `continue_overdue_seven` | 逾期7-14天续期数 | int(11) |  | YES |  |  |
| 25 | `first_overdue_fourteen` | 逾期14天以上首借数 | int(11) |  | YES |  |  |
| 26 | `repeat_overdue_fourteen` | 逾期14天复借数 | int(11) |  | YES |  |  |
| 27 | `continue_overdue_fourteen` | 逾期14天续期数 | int(11) |  | YES |  |  |


#### 25、 oms_sub_orders
子订单表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `order_id` |  | int(11) | MUL | YES |  |  |
| 3 | `sub_order_code` | 子订单编号 | varchar(20) |  | YES |  |  |
| 4 | `plan_on_at` | 计化还款日期 | int(11) |  | YES |  |  |
| 5 | `actual_at` | 实际还款日期 | int(11) |  | YES |  |  |
| 6 | `settle_at` | 结算时间 | int(11) |  | YES |  |  |
| 7 | `created_at` |  | int(11) |  | YES |  |  |
| 8 | `actual_price` | 实际金额      本金加利息 | decimal(32,2) |  | YES |  |  |
| 9 | `adv_price` | 已经还款的金额 | decimal(32,2) |  | YES |  |  |
| 10 | `dev_price` | 剩余金额 | decimal(32,2) |  | YES |  |  |
| 11 | `status` | 是否结清 0 表示未结清 1 表示已结清2表示逾期 | int(11) | MUL | YES |  |  |
| 12 | `overdue_day` | 逾期天数 | int(11) |  | YES |  | 0 |
| 13 | `accrual_price` | 利息钱 | decimal(32,8) |  | YES |  |  |
| 14 | `poundage_price` | 手续费 | decimal(32,8) |  | YES |  |  |
| 15 | `overdue_price` | 逾期金额 | decimal(32,8) |  | YES |  |  |
| 16 | `stage_num` | 期数 | int(11) |  | YES |  |  |
| 17 | `reduce` | 减免金额 | decimal(32,8) |  | YES |  |  |
| 18 | `updated_at` |  | int(11) |  | YES |  |  |
| 19 | `repay_num` |  | int(11) |  | YES |  | 0 |
| 20 | `credit_limit` |  | int(11) |  | YES |  | 0 |
| 21 | `urge_type` | 催收方式 0：待分配 1：内催 2：外催 3：话务员催收 | tinyint(2) |  | YES |  | 0 |


#### 26、 risk_record
风控结果

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `orders_id` | 订单id | int(11) | MUL | YES |  | 0 |
| 3 | `user_id` | 用户id | int(11) |  | YES |  |  |
| 4 | `risk_id` | 对应的风控id | int(11) |  | YES |  |  |
| 5 | `request_id` | 风控返回的id | varchar(52) |  | YES |  |  |
| 6 | `score` | 风控分 | decimal(5,2) |  | YES |  |  |
| 7 | `my_history` |  | longtext |  | YES |  |  |
| 8 | `history` | 历史操作 | longtext |  | YES |  |  |
| 9 | `suggest` | 1 | tinyint(2) |  | YES |  | 1 |
| 10 | `created_at` |  | int(11) |  | YES |  |  |
| 11 | `created_by` |  | int(11) |  | YES |  |  |


#### 27、 rms_today_detail
今日报表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `user_id` |  | int(11) |  | YES |  |  |
| 3 | `today_request` | 今日申请借款信息	 | varchar(100) |  | YES |  |  |
| 4 | `today_detail_rule` | 今日行为风控规则建议 | varchar(100) |  | YES |  |  |
| 5 | `today_request_loan_p` | 今日申请借款平台数 | int(3) |  | YES |  |  |
| 6 | `today_request_loan_fre` | 今日申请借款次数 | int(3) |  | YES |  |  |
| 7 | `today_request_loan_divice` | 今日申请借款设备个数 | int(3) |  | YES |  |  |
| 8 | `today_request_loan_fre_max` | 今日每小时申请借款次数最大值 | int(3) |  | YES |  |  |
| 9 | `today_request_loan_p_max` | 今日每小时申请借款平台数最大值 | int(3) |  | YES |  |  |
| 10 | `today_request_loan_fre_more` | 今日申请借款次数过多 | int(3) |  | YES |  |  |
| 11 | `today_request_loan_p_more` | 今日申请借款平台数过多 | int(3) |  | YES |  |  |
| 12 | `today_request_loan_divice_more` | 今日申请设备过多 | int(3) |  | YES |  |  |


#### 28、 rms_uv_log
uv统计表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `ip` | ip地址 | varchar(255) |  | YES |  |  |
| 3 | `type` | 1 浏览量 | int(11) |  | YES |  |  |
| 4 | `create_at` |  | int(11) |  | YES |  |  |


#### 29、 seller_report
催收表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | ` id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `sub_order_id` | 订单id | int(11) | MUL | YES |  |  |
| 3 | `times` | 催收次数 | int(11) unsigned |  | YES |  | 0 |
| 4 | `collection_by` | 催收人 | varchar(30) |  | YES |  |  |
| 5 | `created_at` | 创建时间 | int(11) |  | YES |  |  |
| 6 | `created_by` | 创建人 | int(11) | MUL | YES |  |  |
| 7 | `updated_at` |  | int(11) |  | YES |  |  |
| 8 | `updated_by` |  | int(11) |  | YES |  |  |
| 9 | `order_id` |  | int(11) |  | YES |  |  |
| 10 | `user_id` |  | int(11) |  | YES |  |  |
| 11 | `status` | 0 戴催收 1 已经还款 | int(11) |  | YES |  | 0 |
| 12 | `price` | 催回金额 | decimal(32,2) |  | YES |  | 0.00 |


#### 30、 system_app_version

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `version` |  | varchar(100) |  | YES |  |  |
| 3 | `address` |  | varchar(100) |  | YES |  |  |
| 4 | `ios_address` | ios地址 | varchar(255) |  | YES |  |  |
| 5 | `az_address` | 安卓地址 | varchar(255) |  | YES |  |  |


#### 31、 system_config_base

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `auto_approve_status` | 逾期减免自动审批 1 开启 0 不开启 | int(1) |  | YES |  |  |
| 3 | `auto_pay_status` | 待放款自动放款 1 开启 0 不开启 | int(1) |  | YES |  |  |
| 4 | `min_age_user` | 借款对象年纪 | int(4) |  | YES |  |  |
| 5 | `max_age_user` |  | int(4) |  | YES |  |  |
| 6 | `second_reminder` |  | enum('开启','关闭') |  | YES |  | 关闭 |
| 7 | `extension_status` | 是否开启展期 1 开启 0 不开启  | int(1) |  | YES |  |  |
| 8 | `white_list_registration` | 是否开启白名单注册 1开启 | varchar(255) |  | YES |  |  |
| 9 | `extension_day` | 展期天数 | varchar(255) |  | YES |  |  |
| 10 | `risk` | 0 第一个风控流程 1 操盘手的那个 | int(11) |  | YES |  | 0 |
| 11 | `alipay_code` |  支付宝二维码 | longtext |  | YES |  |  |
| 12 | `weixin_code` | 微信二维码 | longtext |  | YES |  |  |
| 13 | `high_price` | 最高金额展示 | int(10) |  | YES |  |  |
| 14 | `baidu_tencent` | 1 百度 0腾讯 | int(11) |  | YES |  |  |
| 15 | `ocr` | 0 腾讯 1阿里  | int(11) |  | YES |  | 0 |
| 16 | `overdue_blacklist` | 逾期几天加入黑名单 | int(11) |  | YES |  | 0 |
| 17 | `borrowing_adjust_amount` | 复借后可否调整额度 0：不可以 1：可以 | tinyint(2) |  | NO |  | 1 |
| 18 | `customer` | 客服 | longtext |  | YES |  |  |
| 19 | `type_is_auto` | 用户是否开启自动下单 0 关闭 1 开起  | int(11) |  | YES |  | 0 |
| 20 | `app_customer` |  app客服 | varchar(255) |  | YES |  |  |
| 21 | `is_risk` | 是否开启二级风控0关闭1开启 | int(11) |  | YES |  | 0 |
| 22 | `risk_min` | 最低分 | int(11) |  | YES |  |  |
| 23 | `risk_max` | 最高分 | int(11) |  | YES |  |  |
| 24 | `is_look_interest` | 是否看到利息 1 看到 0 未看到 | int(11) |  | YES |  |  |
| 25 | `enable_ip_lock` | 是否开启Ip锁 1：开启 2：关闭 | int(1) |  | YES |  | 1 |
| 26 | `enable_socket` | 是否开启令牌限制 1：开启 2：关闭 | int(1) |  | YES |  | 1 |


#### 32、 system_img
系统图片

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `created_at` |  | int(11) |  | YES |  |  |
| 3 | `dr` | 删除 | tinyint(1) unsigned |  | NO |  | 0 |
| 4 | `img_url` | 图片路径 | longtext |  | YES |  |  |
| 5 | `created_by` |  | int(11) |  | YES |  |  |
| 6 | `updated_at` |  | int(11) |  | YES |  |  |
| 7 | `name` | 图片名称 | varchar(255) |  | YES |  |  |


#### 33、 ums_active_photos
用户活体图片表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `user_id` | 用户id | int(11) | MUL | NO |  |  |
| 3 | `classfy` | 照片名称（正面照，背面照 。。。。。。） | varchar(255) | MUL | YES |  |  |
| 4 | `original_img` | 原始图片 | longtext |  | YES |  |  |
| 5 | `condensed_img` | 压缩图片 | varchar(500) |  | YES |  |  |
| 6 | `created_at` | 创建时间 | int(11) |  | YES |  |  |
| 7 | `created_by` |  | int(11) |  | YES |  |  |
| 8 | `updated_at` |  | int(11) |  | YES |  |  |
| 9 | `updated_by` |  | int(11) |  | YES |  |  |
| 10 | `yd_data` |  | longtext |  | YES |  |  |
| 11 | `score` | 活体分数 | varchar(255) |  | YES |  |  |


#### 34、 ums_app_deal

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `user_id` |  | int(11) |  | YES |  |  |
| 3 | `message` |  | varchar(500) |  | YES |  |  |


#### 35、 ums_app_names
用户app名称表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `user_id` | 用户编号 | int(11) | MUL | YES |  | 0 |
| 3 | `app_name` | 用户app名称(数组格式) | varchar(255) |  | YES |  |  |
| 4 | `version_code` |  | varchar(255) |  | YES |  |  |
| 5 | `version_num` |  | varchar(255) |  | YES |  |  |
| 6 | `app_dir` |  | varchar(255) |  | YES |  |  |
| 7 | `app_size` |  | varchar(255) |  | YES |  |  |
| 8 | `app_date` |  | varchar(255) |  | YES |  |  |
| 9 | `app_type` |  | varchar(255) |  | YES |  |  |
| 10 | `status` | 0 普通 app 1 贷款app | varchar(255) |  | YES |  |  |


#### 36、 ums_auth_status
用户注册状态

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `user_id` | 客户ID | int(11) | MUL | NO |  |  |
| 3 | `id_auth` | 身份认证 | tinyint(1) |  | YES |  | 1 |
| 4 | `carrier_auth` | 运营商认证A | tinyint(1) |  | YES |  | 1 |
| 5 | `taobao_auth` | 淘宝认证 | tinyint(1) |  | YES |  | 1 |
| 6 | `work_auth` | 工作信息认证 | tinyint(1) |  | YES |  | 1 |
| 7 | `relation_auth` | 关系认证A | tinyint(1) |  | YES |  | 1 |
| 8 | `identity_people` | 人证合一 | tinyint(4) |  | YES |  | 1 |
| 9 | `live_auth` | 活体检测A | tinyint(1) |  | YES |  | 1 |
| 10 | `bank_auth` | 银行卡是否捆绑A | tinyint(1) |  | YES |  | 1 |
| 11 | `created_at` |  | int(11) |  | YES |  |  |
| 12 | `updated_at` |  | int(11) |  | YES |  |  |
| 13 | `created_by` |  | int(11) |  | YES |  |  |
| 14 | `updated_by` |  | int(11) |  | YES |  |  |
| 15 | `deleted_at` |  | int(11) |  | YES |  |  |


#### 37、 ums_bank_card
用户银行卡信息

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `user_id` | 用户id | int(11) | MUL | YES |  |  |
| 3 | `name` | 银行名称 | varchar(30) |  | YES |  |  |
| 4 | `number` | 银行卡卡号 | varchar(30) |  | YES |  |  |
| 5 | `mobile` | 预留手机号 | varchar(20) |  | YES |  |  |
| 6 | `address` | 开户地址 | varchar(30) |  | YES |  |  |
| 7 | `type` | 银行卡类型 1表示存蓄卡，2表示信用卡 | int(1) |  | YES |  |  |
| 8 | `is_default` | 是否默认 1表示默认 0 表示不默认 | int(1) |  | NO |  | 0 |
| 9 | `is_use` | 是否可用 | int(11) |  | YES |  |  |
| 10 | `pay_token` | 绑卡编号，由绑卡返回 | varchar(50) |  | YES |  |  |
| 11 | `dr` | 是否解绑 0 绑定 1 解绑 | tinyint(1) |  | NO |  | 0 |
| 12 | `created_at` | 绑定日期 | int(11) |  | YES |  |  |
| 13 | `updated_at` |  | int(11) |  | YES |  |  |
| 14 | `deleted_at` |  | int(11) |  | YES |  |  |
| 15 | `bank_code` |  | varchar(32) |  | YES |  |  |
| 16 | `province` | 开户省 | varchar(50) |  | YES |  |  |
| 17 | `city` | 开户市 | varchar(50) |  | YES |  |  |
| 18 | `card_name` | 卡名称 | varchar(50) |  | YES |  |  |
| 19 | `tel` | 官方客服电话 | varchar(50) |  | YES |  |  |
| 20 | `type_name` | 卡类型 | varchar(50) |  | YES |  |  |
| 21 | `logo` |  | varchar(200) |  | YES |  |  |
| 22 | `card_bin` | 银行卡bin码 | varchar(50) |  | YES |  |  |
| 23 | `bin_digits` | 银行卡bin码长度 | varchar(50) |  | YES |  |  |
| 24 | `card_digits` | 银行卡号长度 | varchar(50) |  | YES |  |  |


#### 38、 ums_black_list
用户黑名单

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `identity_card` | 身份证号 | varchar(255) |  | YES |  |  |
| 3 | `mobile` | 手机号 | varchar(255) |  | YES |  |  |
| 4 | `create_at` |  | int(11) |  | YES |  |  |


#### 39、 ums_call_record
用户手机通话记录

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `user_id` | 用户id | int(11) |  | YES |  |  |
| 3 | `name` | 联系人姓名 | varchar(1000) |  | YES |  | 未知 |
| 4 | `mobile` | 通话的手机 | varchar(20) |  | YES |  |  |
| 5 | `period_time` | 时间段 | int(11) |  | YES |  |  |
| 6 | `type` | 类型1：呼入，2：呼出，3：未接通  | tinyint(1) |  | NO |  | 1 |
| 7 | `start_time` | 开始时间 | int(111) |  | YES |  |  |
| 8 | `created_at` |  | int(11) |  | YES |  |  |


#### 40、 ums_carrier_auth

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `user_id` |  | int(11) |  | YES |  |  |
| 3 | `request_id` |  | varchar(255) | MUL | YES |  |  |
| 4 | `auth_url` |  | varchar(255) |  | YES |  |  |


#### 41、 ums_credit_invest
用户云慧画像

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `user_id` | 用户id | int(11) |  | YES |  |  |
| 3 | `content` | 云慧认证返回的内容 | longtext |  | YES |  |  |
| 4 | `created_at` |  | int(11) |  | YES |  |  |


#### 42、 ums_credit_record
用户信用额度修改记录

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` | 信用额度授权记录 | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `user_id` | 用户id | int(11) | MUL | YES |  |  |
| 3 | `before_price` | 授权额度 | decimal(32,8) |  | YES |  |  |
| 4 | `after_price` | 更新后额度 | decimal(32,8) |  | YES |  |  |
| 5 | `num` | 贷款次数 -1,表示手动提额，0表示初次贷款，1表示还清一次 | int(11) |  | YES |  |  |
| 6 | `created_at` |  | int(11) |  | YES |  |  |
| 7 | `created_by` |  | int(11) | MUL | YES |  |  |


#### 43、 ums_extension
用户展期表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `order_id` | 订单id | int(11) | MUL | YES |  |  |
| 3 | `extension_price` | 展期金额 | decimal(10,2) |  | YES |  |  |
| 4 | `extension_day` | 展期天数 | int(255) |  | YES |  |  |
| 5 | `extension_create_time` | 展期后还款时间 | int(11) |  | YES |  |  |
| 6 | `extension_payment_method` | 1 银行卡 2支付宝 3 微信 | int(255) |  | YES |  |  |
| 7 | `actual_extension_time` | 实际还款时间 | int(11) |  | YES |  |  |
| 8 | `create_time` | 创建时间 | int(11) |  | YES |  |  |
| 9 | `type` | 0表示主动支付 1 表示线下 | int(2) |  | YES |  | 0 |
| 10 | `status` | 0 第一次展期 1多次展期 | int(11) |  | YES |  |  |
| 11 | `channel_id` |  | int(11) |  | YES |  |  |


#### 44、 ums_face
用户人脸认证

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `user_id` | 用户id | int(11) |  | YES |  |  |
| 3 | `result_auth` | 认证结果	 | double(3,2) |  | YES |  |  |
| 4 | `id_no` | 身份证号码 | varchar(20) |  | YES |  |  |
| 5 | `id_name` | 身份证姓名	 | varchar(4) |  | YES |  |  |
| 6 | `start_card` | 证件有效期证件有效期		 | varchar(20) |  | YES |  |  |
| 7 | `url_frontcard` | 身份证人像面照下载地址 | varchar(100) |  | YES |  |  |
| 8 | `url_backcard` | 身份证国徽面照下载地址	 | varchar(100) |  | YES |  |  |
| 9 | `created_at` |  | int(11) |  | YES |  |  |


#### 45、 ums_loan_records
用户放款记录

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `user_id` | 用户id | int(11) |  | YES |  |  |
| 3 | `amount` | 贷款金额 | decimal(32,8) |  | YES |  |  |
| 4 | `real_loan` | 实际放款 | decimal(32,8) |  | YES |  |  |
| 5 | `exam_at` | 审批日期 | int(11) |  | YES |  |  |
| 6 | `deadline` | 贷款期限 | int(11) |  | YES |  |  |
| 7 | `status` | 状态 0 未结清  1 还款中 2 已结清 3 已逾期 | int(1) |  | YES |  |  |
| 8 | `roll_over` | 展期次数 | int(11) |  | YES |  |  |
| 9 | `address` | 所在位置 | varchar(30) |  | YES |  |  |
| 10 | `created_at` | 贷款日期 | int(11) |  | YES |  |  |


#### 46、 ums_location
用户定位表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `user_id` |  | int(11) |  | YES |  |  |
| 3 | `location` | 定位 | varchar(100) |  | YES |  |  |
| 4 | `address` | 所在位置 | text |  | YES |  |  |
| 5 | `order_id` |  | int(11) |  | YES |  |  |
| 6 | `action` | 动作 | varchar(500) |  | YES |  |  |
| 7 | `created_at` | 操作时间 | int(111) |  | YES |  |  |


#### 47、 ums_login_log
用户登录日志

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `user_id` |  | int(11) |  | YES |  |  |
| 3 | `is_login` |  | int(11) |  | YES |  |  |
| 4 | `create_time` |  | int(100) |  | YES |  |  |


#### 48、 ums_mobile_record
用户手机通讯录

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `user_id` | 用户id | int(11) | MUL | YES |  |  |
| 3 | `name` | 通讯录的姓名 | varchar(500) |  | YES |  |  |
| 4 | `mobile` | 手机号 | varchar(20) |  | YES |  |  |
| 5 | `created_at` |  | int(11) |  | YES |  |  |


#### 49、 ums_operator_info
用户运营商数据

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `mobile` | 手机号码 | varchar(11) | PRI | NO |  |  |
| 3 | `name` | 姓名，运营商官网爬取，官网不提供 ，则为null | varchar(10) |  | YES |  |  |
| 4 | `id_card` | 证件号，运营商官网爬取，官网不提供 ，则为null | varchar(20) |  | YES |  |  |
| 5 | `carrier` | 运营商 CHINA_MOBILE（ 中国移动）CHINA_TELECOM（中国电信） CHINA_UNICOM （中国联通） | varchar(50) |  | YES |  |  |
| 6 | `province` | 所属省份 | varchar(20) |  | YES |  |  |
| 7 | `city` | 所属城市 | varchar(20) |  | YES |  |  |
| 8 | `address` | 地址，运营商官网爬取，官网不提供 ，则为null	 | varchar(100) |  | YES |  |  |
| 9 | `open_time` | 入网时间，格式：yyyy-MM-dd运营商官网爬取，官网不提供 ，则为null | int(11) |  | YES |  |  |
| 10 | `open_months` | 入网时长（单位:月）1年2月=> 14运营商官网爬取，官网不提供 ，则为null | varchar(10) |  | YES |  |  |
| 11 | `level` | 帐号星级 | varchar(10) |  | YES |  |  |
| 12 | `package_name` | 套餐名称 | varchar(100) |  | YES |  |  |
| 13 | `state` | 帐号状态, -1未知 0正常 1单向停机 2停机 3预销户 4销户 5过户 6改号 99号码不存在 | int(11) |  | YES |  |  |
| 14 | `available_balance` | 当前可用余额（单位: 分） | int(11) |  | YES |  |  |
| 15 | `last_modify_time` | 最近一次更新时间，格式: yyyy-MM-dd HH:mm:ss | int(11) |  | YES |  |  |
| 16 | `token` |  | varchar(255) |  | YES |  |  |


#### 50、 ums_phone_device
管理手机设备

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `device_id` | 设备id每个手机的唯一标识 | varchar(255) |  | YES |  |  |
| 3 | `phone_type` | 手机类型 | varchar(255) |  | YES |  |  |
| 4 | `create_at` |  | int(11) |  | YES |  |  |
| 5 | `user_id` | 用户id | int(11) |  | YES |  |  |
| 6 | `mobile` | 手机号码 | varchar(22) |  | YES |  |  |


#### 51、 ums_relationship
用户联系表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `user_id` | 用户id | int(11) |  | YES |  |  |
| 3 | `relation` | 关系 | varchar(30) |  | YES |  |  |
| 4 | `name` | 姓名 | varchar(30) |  | YES |  |  |
| 5 | `mobile` | 预留手机号 | varchar(20) |  | YES |  |  |
| 6 | `address` | 地址 | varchar(30) |  | YES |  |  |
| 7 | `is_exist` | 是否存在通讯录中 1 表示存在 0表示不存在 | int(1) |  | YES |  |  |
| 8 | `created_at` |  | int(11) |  | YES |  |  |


#### 52、 ums_short_message
用户短信表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `user_id` |  | int(11) | MUL | YES |  |  |
| 3 | `content_message` | 短信内容 | longtext |  | YES |  |  |
| 4 | `phone` | 电话 | varchar(255) |  | YES |  |  |
| 5 | `create_time` |  | int(11) |  | YES |  |  |
| 6 | `status` | 0 优质 1 劣质 | int(11) |  | YES |  |  |
| 7 | `type` |  0 无关 1优质 2劣质 | int(11) |  | YES |  |  |


#### 53、 ums_user_base_info
用户基本信息表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `user_id` | 用户id | int(11) | MUL | YES |  |  |
| 3 | `real_name` | 真是姓名 | varchar(100) |  | YES |  |  |
| 4 | `gender` | 性别  1 男 2 女 | tinyint(1) |  | YES |  |  |
| 5 | `birthday` | 出生日期 | varchar(20) |  | YES |  |  |
| 6 | `idcard` |  | varchar(20) |  | YES |  |  |
| 7 | `agencies` | 发证机关 | varchar(30) |  | YES |  |  |
| 8 | `valid_date` | 身份证有效期 | varchar(30) |  | YES |  |  |
| 9 | `is_marry` | 是否结婚 1表示已婚 0表示未婚 | tinyint(1) |  | YES |  | 0 |
| 10 | `company` | 公司名称 | varchar(30) |  | YES |  |  |
| 11 | `company_address` | 公司地址 | varchar(50) |  | YES |  |  |
| 12 | `company_mobile` | 公司电话 | varchar(20) |  | YES |  |  |
| 13 | `job` | 在职岗位 | varchar(30) |  | YES |  |  |
| 14 | `permanent_address` |  | varchar(255) |  | YES |  |  |
| 15 | `income` | 月收入 | int(11) |  | YES |  |  |
| 16 | `risk_id` | 风控id | int(11) |  | YES |  |  |
| 17 | `score` | 风控分 | decimal(4,2) |  | YES |  |  |
| 18 | `search_id` | 运营商返回值 | varchar(100) |  | YES |  |  |
| 19 | `home_address` | 家庭住址 | varchar(2000) |  | YES |  |  |
| 20 | `apply_time` | 首次申请贷款时间 | int(11) |  | YES |  |  |
| 21 | `phone_os` | 手机版本 | varchar(100) |  | YES |  |  |
| 22 | `created_at` |  | int(11) |  | YES |  |  |
| 23 | `created_by` |  | int(11) |  | YES |  |  |
| 24 | `updated_at` |  | int(11) |  | YES |  |  |


#### 54、 ums_users_info
用户常用信息表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` | 用户编号 | int(11) unsigned | PRI | NO | auto_increment |  |
| 2 | `account` | 账号 | varchar(20) | MUL | YES |  |  |
| 3 | `name` | 用户昵称 | varchar(50) |  | YES |  |  |
| 4 | `real_name` | 真实姓名 | varchar(10) | MUL | YES |  |  |
| 5 | `password` |  | varchar(50) |  | YES |  |  |
| 6 | `mobile` | 手机号 | varchar(20) | MUL | YES |  |  |
| 7 | `regist_status` | 客户认证状态 0 新建 1 活体认证 2 绑卡认证 3 运营商认证  4 关系认证 | int(10) |  | YES |  | 0 |
| 8 | `channel_id` | 渠道编号 | int(11) | MUL | YES |  |  |
| 9 | `user_status` | 用户状态，0待审核状态，1 认证完成，2待放款，3待还款，4已结清，5逾期中，6放款失败，7拒绝放款 | int(2) |  | YES |  |  |
| 10 | `high_price` | 最高额度 | decimal(32,8) |  | YES |  |  |
| 11 | `search_id` | 运营商返回值 | varchar(100) |  | YES |  |  |
| 12 | `risk_status` | 风控状态 | int(11) |  | YES |  |  |
| 13 | `is_extract` | 是否可以提额 | int(3) |  | YES |  |  |
| 14 | `first_loan` | 是否首次贷款  0表示首贷 1表示附带一次 | int(11) |  | NO |  | 0 |
| 15 | `collection` | 催收记录 | int(11) |  | YES |  |  |
| 16 | `dr` | 1被拉黑 | int(1) |  | NO |  | 0 |
| 17 | `created_at` | 注册日期 | int(11) |  | YES |  |  |
| 18 | `created_by` |  | int(11) |  | YES |  |  |
| 19 | `updated_at` |  | int(11) unsigned |  | YES |  | 1 |
| 20 | `task_Id` | 新颜唯一id | varchar(111) |  | YES |  |  |
| 21 | `score_live` | 活体分数 | int(11) |  | YES |  |  |
| 22 | `push_id` | pushId | varchar(30) |  | YES |  |  |
| 23 | `carrier_id` |  | int(11) |  | YES |  |  |
| 24 | `is_white` | 1yes 0no | int(11) |  | YES |  |  |
| 25 | `is_app_ip` | 0 正常用户 1 命中用户 | varchar(200) |  | YES |  | 无来源 |
| 26 | `is_app_status` | 正常用户 | varchar(255) |  | YES |  | 0 |
| 27 | `auto_loan` | 二次自动放款 0：启用 1：冻结 | int(1) |  | YES |  | 0 |


#### 55、 ums_white_list
用户白名单

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `mobile` |  | varchar(20) |  | YES |  |  |
| 3 | `id_card` |  | varchar(18) |  | YES |  |  |
| 4 | `create_time` |  | int(11) |  | YES |  |  |


#### 56、 urge_communication
沟通记录表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `sub_order_id` | 催收订单id | int(11) |  | YES |  |  |
| 3 | `urge_orger_id` | 催收分配表Id | int(11) |  | YES |  |  |
| 4 | `person_id` | 外催催收员id | int(11) |  | YES |  |  |
| 5 | `admin_id` | 管理员id | int(11) |  | YES |  |  |
| 6 | `user_id` | 沟通对象id   | int(11) |  | YES |  | 0 |
| 7 | `name` | 沟通对象名称 | varchar(50) |  | YES |  |  |
| 8 | `content` | 沟通内容 | longtext |  | YES |  |  |
| 9 | `mobile` | 联系电话 | varchar(30) |  | YES |  |  |
| 10 | `type` | 类型 0：内催 1：外催 2：今日到期 | tinyint(2) |  | YES |  | 0 |
| 11 | `create_at` | 创建时间 | int(11) |  | YES |  | 0 |
| 12 | `update_at` | 修改时间 | int(11) |  | YES |  | 0 |
| 13 | `delete_at` | 删除时间 | int(11) |  | YES |  | 0 |
| 14 | `create_by` | 创建者编号 | int(11) |  | YES |  | 0 |
| 15 | `update_by` | 修改者编号 | int(11) |  | YES |  | 0 |
| 16 | `delete_by` | 删除者编号 | int(11) |  | YES |  | 0 |


#### 57、 urge_company
催收公司

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `company_id` | 当角色是催收员时所属的催收公司 | int(11) |  | YES |  | 0 |
| 3 | `name` | 催收公司名称 | varchar(255) |  | YES |  |  |
| 4 | `person` | 联系人 | varchar(50) |  | YES |  |  |
| 5 | `phone` | 联系电话 | char(11) |  | YES |  |  |
| 6 | `account` | 登录账号 | varchar(255) | MUL | YES |  |  |
| 7 | `password` | 密码 | varchar(255) |  | YES |  | 123456 |
| 8 | `salt` | 密码盐 | varchar(255) |  | YES |  |  |
| 9 | `status` | 状态：0：启用 1：冻结  2：未修改密码 | tinyint(2) | MUL | YES |  | 0 |
| 10 | `role` | 角色 0：催收公司 1：催收员 | tinyint(2) |  | YES |  | 0 |
| 11 | `create_at` | 创建时间 | int(11) |  | YES |  |  |
| 12 | `update_at` | 修改时间 | int(11) |  | YES |  |  |
| 13 | `delete_at` | 删除时间 | int(11) |  | YES |  |  |
| 14 | `create_by` | 创建者编号 | int(11) |  | YES |  |  |
| 15 | `update_by` | 修改者编号 | int(11) |  | YES |  |  |
| 16 | `delete_by` | 删除者编号 | int(11) |  | YES |  |  |


#### 58、 urge_company_report
催收公司日报表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `company_id` | 催收公司id | int(11) | MUL | YES |  | 0 |
| 3 | `company_name` | 催收公司名称 | varchar(255) |  | YES |  |  |
| 4 | `order_total` | 订单总数 | int(11) |  | YES |  | 0 |
| 5 | `pending_distribution_order` | 待分配订单总数量 | int(11) |  | YES |  | 0 |
| 6 | `pending_distribution_amount` | 待分配订单总金额 | decimal(13,0) |  | YES |  | 0 |
| 7 | `pending_urge_order` | 待催收订单总数量 | int(11) |  | YES |  | 0 |
| 8 | `pending_urge_amount` | 待催收总金额 | decimal(13,2) |  | YES |  | 0.00 |
| 9 | `success_order` | 催收成功订单总数 | int(11) |  | YES |  | 0 |
| 10 | `success_amount` | 成功催收订单总金额 | decimal(13,2) |  | YES |  | 0.00 |
| 11 | `success_percent` | 催收成功率 | decimal(7,4) |  | YES |  | 0.0000 |
| 12 | `today_success_count` | 当日成功催回订单数 | int(11) |  | YES |  | 0 |
| 13 | `today_success_amount` | 当日成功催回订单总金额 | decimal(13,2) |  | YES |  | 0.00 |
| 14 | `deduction_amount` | 减免总金额 | decimal(13,2) |  | YES |  | 0.00 |
| 15 | `today_extension_count` | 展期订单数量 | int(11) |  | YES |  | 0 |
| 16 | `today_extension_amount` | 展期金额 | decimal(13,2) |  | YES |  | 0.00 |
| 17 | `report_date` | 报表日期（当日凌晨时间戳） | int(11) |  | YES |  | 0 |
| 18 | `create_at` | 创建时间戳 | int(11) |  | YES |  | 0 |


#### 59、 urge_order
外催订单分配表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `sub_order_id` | 催收订单id | int(11) | MUL | YES |  | 0 |
| 3 | `company_id` | 外催收公司id | int(11) | MUL | YES |  | 0 |
| 4 | `person_id` | 外催催收员Id | int(11) | MUL | YES |  | 0 |
| 5 | `admin_id` | 内催管理员id(当urge_type催收方式是外催才有) | int(11) |  | YES |  | 0 |
| 6 | `status` | 催收状态 0：待分配 1：已分配 2：催收中 3：已释放 4：已结清 5：已展期  | tinyint(2) |  | YES |  | 0 |
| 7 | `limit_day` | 限制天数 -1：表示无限制 | int(5) | MUL | YES |  | 0 |
| 8 | `limit_date` | 催收限制截止日期（催收天数的凌晨时间戳） | int(11) | MUL | YES |  | 0 |
| 9 | `person_limit_day` | 催收员期限天数  -1：表示无限制 | int(11) |  | YES |  | 0 |
| 10 | `person_limit_date` | 催收员期限日期 | int(11) |  | YES |  | 0 |
| 11 | `urge_type` | 催收方式 1: 内催  2：外催 | tinyint(2) |  | YES |  | 1 |
| 12 | `count_urge` | 催收次数 | int(11) |  | YES |  | 0 |
| 13 | `create_at` | 创建时间 | int(11) |  | YES |  | 0 |
| 14 | `update_at` | 修改时间 | int(11) |  | YES |  | 0 |
| 15 | `delete_at` | 删除时间 | int(11) |  | YES |  | 0 |
| 16 | `create_by` | 创建者编号 | int(11) |  | YES |  | 0 |
| 17 | `update_by` | 修改者编号 | int(11) |  | YES |  | 0 |
| 18 | `delete_by` | 删除者编号 | int(11) |  | YES |  | 0 |


#### 60、 urge_person_report
催收公司催收员日报表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `company_id` | 催收公司id | int(11) |  | YES |  | 0 |
| 3 | `person_id` | 外催催收员id | int(11) | MUL | YES |  | 0 |
| 4 | `person_name` | 催收员姓名 | varchar(50) |  | YES |  |  |
| 5 | `amount` | 订单总金额 | decimal(13,2) |  | YES |  | 0.00 |
| 6 | `total` | 订单总数量 | int(11) |  | YES |  | 0 |
| 7 | `success_amount` | 催收总金额 | decimal(13,2) |  | YES |  | 0.00 |
| 8 | `count_success` | 催收总订单数量 | int(11) |  | YES |  | 0 |
| 9 | `today_pending_count` | 当日待催收订单数 | int(11) |  | YES |  |  |
| 10 | `today_pending_amount` | 当日待催收金额 | decimal(13,2) |  | YES |  |  |
| 11 | `today_success_count` | 当日催收成功订单数 | int(11) |  | YES |  | 0 |
| 12 | `today_success_amount` | 当日催收成功金额 | decimal(13,2) |  | YES |  | 0.00 |
| 13 | `today_extension_count` | 当日展期订单数 | int(11) |  | YES |  | 0 |
| 14 | `today_extension_amount` | 当日展期订单总金额 | decimal(13,2) |  | YES |  | 0.00 |
| 15 | `report_date` | 报表日期（报表日凌晨0分0秒时间戳秒) | int(11) | MUL | YES |  | 0 |
| 16 | `create_at` | 创建时间 | int(11) |  | YES |  | 0 |


#### 61、 urge_serial
订单催收流水

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `sub_order_id` | 催收订单id | int(11) | MUL | YES |  | 0 |
| 3 | `urge_order_id` | 分配催收表id | int(11) |  | YES |  | 0 |
| 4 | `company_id` | 催收公司id | int(11) |  | YES |  | 0 |
| 5 | `urge_type` | 催收方式 1：内催 2：外催 | tinyint(2) |  | YES |  |  |
| 6 | `admin_id` | 内催管理员Id | int(11) |  | YES |  |  |
| 7 | `person_id` | 外催催收员id | int(11) |  | YES |  |  |
| 8 | `amount` | 催收金额(分) | decimal(13,2) |  | YES |  |  |
| 9 | `order_status` | 訂單狀態 0：催收中 1：已清算 2：已展期 | tinyint(2) |  | YES |  | 0 |
| 10 | `repay_type` | 还款方式 0: 线下还款 1：主动还款 | tinyint(2) |  | YES |  | 0 |
| 11 | `create_at` | 创建时间 | int(11) |  | YES |  | 0 |
| 12 | `update_at` | 修改时间 | int(11) |  | YES |  | 0 |
| 13 | `delete_at` | 删除时间 | int(11) |  | YES |  | 0 |
| 14 | `create_by` | 创建者编号 | int(11) |  | YES |  | 0 |
| 15 | `update_by` | 修改者编号 | int(11) |  | YES |  | 0 |
| 16 | `delete_by` | 删除者编号 | int(11) |  | YES |  | 0 |


#### 62、 urge_system_report

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` | id | int(11) | PRI | NO | auto_increment |  |
| 2 | `pending_total` | 待分配订单总数 | int(11) |  | YES |  | 0 |
| 3 | `pending_amount` | 待分配订单总金额 | decimal(13,2) |  | YES |  | 0.00 |
| 4 | `allocated_total` | 已分配订单总数 | int(11) |  | YES |  | 0 |
| 5 | `allocated_amount` | 已分配订单总金额 | decimal(13,2) |  | YES |  | 0.00 |
| 6 | `today_order` | 当日催回成功订单总数 | int(11) |  | YES |  | 0 |
| 7 | `today_amount` | 当日催回成功订单总金额 | decimal(13,2) |  | YES |  | 0.00 |
| 8 | `today_extension_count` | 当日展期订单数  | int(11) |  | YES |  | 0 |
| 9 | `today_extension_amount` | 当日展期订单总金额  | decimal(13,2) |  | YES |  | 0.00 |
| 10 | `report_date` | 报表日期（当日凌晨零分） | int(11) |  | YES |  | 0 |
| 11 | `create_at` | 创建时间 | int(11) |  | YES |  | 0 |


#### 63、 urge_today_order
话务员今日到期分配订单表

| 序号 | 名称 | 描述 | 类型 | 键 | 为空 | 额外 | 默认值 |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| 1 | `id` |  | int(11) | PRI | NO | auto_increment |  |
| 2 | `sub_order_id` | 订单编号 | int(11) | MUL | YES |  |  |
| 3 | `admin_id` | 话务员编号 | int(11) | MUL | YES |  |  |
| 4 | `status` | 状态 0：催收中 1：已释放 | tinyint(2) |  | YES |  |  |
| 5 | `endtime` | 催收截止时间 | int(11) | MUL | YES |  |  |
| 6 | `count_urge` | 催收次数 | int(11) |  | YES |  | 0 |
| 7 | `create_at` | 创建时间 | int(11) |  | YES |  | 0 |
| 8 | `update_at` | 修改时间 | int(11) |  | YES |  | 0 |
| 9 | `delete_at` | 删除时间 | int(11) |  | YES |  | 0 |
| 10 | `create_by` | 创建者编号 | int(11) |  | YES |  | 0 |
| 11 | `update_by` | 修改者编号 | int(11) |  | YES |  | 0 |
| 12 | `delete_by` | 删除者编号 | int(11) |  | YES |  | 0 |


