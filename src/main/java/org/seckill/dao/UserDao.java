package org.seckill.dao;

import org.apache.ibatis.annotations.Param;
import org.seckill.entity.User;

import java.util.List;

/**
 * Created by huyiqing on 16/12/19.
 */
public interface UserDao {

    /**
     * 根据偏移量查询用户列表
     * @param offset
     * @param limit
     * @return
     */
    List<User> queryAll(@Param("offset") int offset, @Param("limit") int limit);


}
