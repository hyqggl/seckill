--  数据库初始化脚本


set explicit_defaults_for_timestamp = 1
-- show create table seckill\G
--  创建数据库
CREATE DATABASE seckill;
--使用数据库
use seckill;

--创建用户表
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `name` varchar(25) NOT NULL COMMENT '用户名称',
  `email` varchar(20) DEFAULT NULL COMMENT '用户邮箱',
  `address` varchar(100) DEFAULT NULL COMMENT '用户住址',
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '用户注册日期',
  `log_id` bigint(20) DEFAULT NULL COMMENT '用户日志ID',
  `phone` bigint(20) DEFAULT NULL COMMENT '用户手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='用户表'

--创建秒杀库存表
CREATE TABLE `seckill` (
  `seckill_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品库存id',
  `name` varchar(120) NOT NULL COMMENT '商品名称',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `number` int(11) NOT NULL COMMENT '库存数量',
  `init_amount` int(11) DEFAULT NULL COMMENT '初始库存数量',
  `start_time` timestamp NOT NULL COMMENT '秒杀开启时间',
  `end_time` timestamp NOT NULL COMMENT '秒杀结束时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  PRIMARY KEY (`seckill_id`),
  KEY `idx_start_time` (`start_time`),
  KEY `idx_end_time` (`end_time`),
  KEY `idx_create_time` (`create_time`),
  KEY `seckill_user_id_fk` (`create_user`),
  CONSTRAINT `seckill_user_id_fk` FOREIGN KEY (`create_user`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8 COMMENT='秒杀库存表'

--初始化数据
insert into seckill(name,number,start_time,end_time)
VALUES ('1000元秒杀iphone6',100,'2016-11-01 00:00:00','2016-11-02 00:00:00'),
 ('500元秒杀ipad2',200,'2016-11-01 00:00:00','2016-11-02 00:00:00'),
 ('300元秒杀小米4',300,'2016-11-01 00:00:00','2016-11-02 00:00:00'),
 ('200元秒杀红米note',400,'2016-11-01 00:00:00','2016-11-02 00:00:00');

--秒杀成功明细表
--用户登录认证相关信息
CREATE TABLE success_killed(
`seckill_id` bigint NOT NULL COMMENT '秒杀商品id',
`user_phone` bigint NOT NULL COMMENT '用户手机号',
`state` tinyint NOT NULL DEFAULT -1 COMMENT '状态表示: -1：无效 0：成功 1：已付款 2：已发货',
`create_time` TIMESTAMP NOT NULL COMMENT '创建时间',
PRIMARY KEY (seckill_id,user_phone), /* 联合主键 */
KEY idx_create_time(create_time)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀成功明细表';

--连接数据库控制台
--musql -uroot -proot