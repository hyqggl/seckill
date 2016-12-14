# Seckill
[16/12/08] 
存货秒杀系统原型.用Spring+SpringMVC+Mybatis实现，并进行高并发优化。
a inventory seckill system prototype.
1.通过src/main/sql/schema.sql 创建数据库
2.项目部署后，通过../seckill/list进入主页

[16/12/09]  
  加入了DAO层

[16/12/11]
  添加了基于spring的service层，并进行了事务声明。
  加入Controller，并实现了部分接口

[16/12/12]
    完善了Web层(MVC)，并完成了前端交互页面。

[16/12/14]
  完善了并发优化。
1、加入redis进行缓存。
2、调整查询顺序。
3、使用存储过程，将操作移动到MYSQL端

[其他需要优化的点]
1. 列表页没有显示倒计时以及商品状态。
2. 秒杀成功后有按键或直接跳转到列表页。
3. 购物车
4. 存货内容可改变为其他更有趣的类型，并实现后台管理页面，文件上传下载等功能。

优化过程会在新的项目内放出