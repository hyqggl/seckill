package org.seckill.entity;

import java.util.Date;

/**
 * Created by huyiqing on 16/12/16.
 */
public class User {

    //用户ID
    private long id;
    //名称
    private String name;
    //密码
    private String password;
    //用户手机号
    private long phone;
    //用户邮箱
    private  String email;
    //用户住址
    private String address;
    //注册日期
    private Date registerDate;
    //日志ID
    private long logId;
    //权限
    private int authority;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getPhone() {
        return phone;
    }

    public void setPhone(long phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getRegisterDate() {
        return registerDate;
    }

    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    public long getLogId() {
        return logId;
    }

    public void setLogId(long logId) {
        this.logId = logId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getAuthority() {
        return authority;
    }

    public void setAuthority(int authority) {
        this.authority = authority;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", phone=" + phone +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", registerDate=" + registerDate +
                ", logId=" + logId +
                ", authority=" + authority +
                '}';
    }
}

