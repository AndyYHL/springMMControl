package com.hx.eplate.entity;

import java.io.Serializable;

/**
 * Created by hailongdexiang on 2017/5/22.
 */
public class RedisEntity implements Serializable{

    private static final long serialVersionUID = -9204933489947079291L;
    //用户手机号
    private String bindPhone;
    //用户手机验证码(5分钟过期)
    private String vaildCode;
    //用户手机验证码重新发送间隔时间
    private long vaildTime;
    //验证码请求次数
    private int count;

    public String getBindPhone() {
        return bindPhone;
    }

    public void setBindPhone(String bindPhone) {
        this.bindPhone = bindPhone;
    }

    public String getVaildCode() {
        return vaildCode;
    }

    public void setVaildCode(String vaildCode) {
        this.vaildCode = vaildCode;
    }

    public long getVaildTime() {
        return vaildTime;
    }

    public void setVaildTime(long vaildTime) {
        this.vaildTime = vaildTime;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
