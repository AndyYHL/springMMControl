package com.hx.eplate.entity;

import java.io.Serializable;

/**
 * Created by hailongdexiang on 2017/5/22.
 */
public class AppUserInfo implements Serializable{

    private static final long serialVersionUID = 6139769791320104539L;
    private String user_id;
    private String user_name;

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

}
