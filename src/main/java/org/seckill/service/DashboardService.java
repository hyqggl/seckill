package org.seckill.service;

import org.seckill.entity.Seckill;
import org.seckill.entity.SuccessKilled;
import org.seckill.entity.User;

import java.util.List;

/**
 * 后台接口
 * Created by huyiqing on 16/12/19.
 */
public interface DashboardService {

    /**
     * 查询所有商品
     * @return
     */
    List<Seckill> getSeckillList();

    /**
     * 查询用户列表
     * @return
     */
    List<User> getUserList();

    /**
     * 查询秒杀清单
     * @return
     */
    List<SuccessKilled> getSuccessKilledList();
}
