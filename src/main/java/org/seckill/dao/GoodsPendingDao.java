package org.seckill.dao;

import org.apache.ibatis.annotations.Param;
import org.seckill.entity.Seckill;

import java.util.Date;
import java.util.List;

/**
 * Created by huyiqing on 16/12/23.
 */
public interface GoodsPendingDao {

    /**
     * 根据偏移量查询待审核商品列表
     * @param offset
     * @param limit
     * @return
     */
    List<Seckill> queryAll(@Param("offset") int offset, @Param("limit") int limit);

    /**
     * 修改状态
     * @param pendingId
     * @param state
     * @return
     */
    int updateState(@Param("pendingId") long pendingId, @Param("state") int state);

    int addNewPendingGoods(@Param("seckill") Seckill seckill);
}
