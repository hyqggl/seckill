# Seckill
存货秒杀系统原型.用于模拟商品秒杀以及高并发。后端：Spring，SpringMVC，Mybatis；前端：Bootstrap

a inventory seckill system prototype.

【说明】

1.通过src/main/sql/schema.sql 创建数据库

2.项目部署后，通过../seckill/list 进入主页

3.通过../seckill/dashboard/overview 进入后台

【其他需要实现的点】

1. 秒杀成功后--按键或直接跳转到列表页。

2. 购物车 & 收藏夹

3. 登录权限


[Log]

16/12/09   加入了DAO层

16/12/11   添加了基于spring的service层，并进行了事务声明。
           加入Controller，并实现了部分接口

16/12/12   完善了Web层(MVC)，并完成了前端交互页面。

16/12/14  完善了并发优化。1、加入redis进行缓存。2、调整查询顺序。3、使用存储过程，将操作移动到MYSQL端

16/12/17  添加用户表，为商品表添加了3个字段。改进list页面，添加导航栏等。

16/12/18  优化了后台list等界面

16/12/19  增加了用户与清单的DAO等层，改进了后台页面

![image](https://github.com/hyqggl/seckill/raw/master/demo/1.png)

![image](https://github.com/hyqggl/seckill/raw/master/demo/back.png)
