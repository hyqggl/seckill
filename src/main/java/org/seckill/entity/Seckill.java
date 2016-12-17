package org.seckill.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by huyiqing on 16/12/10.
 */

//秒杀库存表
public class Seckill{
    //商品库存id
    private long seckillId;
    //商品名称
    private String name;
    //价格
    private double price;
    //库存数量
    private int number;
    //初始库存数量
    private int initAmount;
    //秒杀开启时间
    private Date startTime;
    //秒杀结束时间
    private Date endTime;
    //创建时间
    private Date createTime;
    //创建用户
    private long createUser;

    public long getSeckillId() {
        return seckillId;
    }

    public void setSeckillId(long seckillId) {
        this.seckillId = seckillId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getInitAmount() {
        return initAmount;
    }

    public void setInitAmount(int initAmount) {
        this.initAmount = initAmount;
    }

    public long getCreateUser() {
        return createUser;
    }

    public void setCreateUser(long createUser) {
        this.createUser = createUser;
    }

    @Override
    public String toString() {
        return "Seckill{" +
                "seckillId=" + seckillId +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", number=" + number +
                ", initAmount=" + initAmount +
                ", startTime=" + startTime +
                ", endTime=" + endTime +
                ", createTime=" + createTime +
                ", createUser=" + createUser +
                '}';
    }
}
