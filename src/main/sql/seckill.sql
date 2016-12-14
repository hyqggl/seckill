--秒杀执行存储过程
DELIMITER $$ -- console;
--定义存储过程
--row_count()返回上一条修改类型sql的修改行数delete insert update
--row_count()   0:没改 >0:修改行数  <0:sql错误
CREATE PROCEDURE `seckill`.`execute_seckill`
  (in v_seckill_id bigint, in v_phone bigint,
    in v_kill_time TIMESTAMP, out r_result int)
  BEGIN
    DECLARE insert_count int DEFAULT 0;
    START TRANSACTION;
    insert ignore into success_killed
      (seckill_id, user_phone, create_time)
      VALUES (v_seckill_id, v_phone, v_kill_time);
    SELECT row_count() into insert_count;
IF (insert_count = 0) THEN
  ROLLBACK ;
  SET r_result = -1;
ELSEIF(insert_count < 0) THEN
  ROLLBACK ;
  SET r_result = -2;
ELSE
  update seckill
  set number = number - 1
  WHERE  seckill_id = v_seckill_id
    and end_time > v_kill_time
    and start_time < v_kill_time
    and number > 0;
  select row_count() into insert_count;
  IF (insert_count =0) THEN
    ROLLBACK ;
    set r_result = 0;
  ELSEIF (insert_count < 0) THEN
    ROLLBACK ;
    set r_result = -2;
  ELSE
    COMMIT ;
    set r_result = 1;
  END IF;
END IF;
END ;
$$

DELIMITER ;
set @r_result = -3;
call execute_seckill(1004,13567908888,now(),@r_result);
select @r_result;

--优化事务行级锁持有时间
