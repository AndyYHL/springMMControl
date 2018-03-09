package com.hx.eplate.entity;

/**
 * Created by Administrator on 2017-04-27.
 */
public class SysFhlog {
    //
    private String fhlogId;
    // 用户名
    private String USERNAME;
    // 操作时间
    private String CZTIME;
    // 事件
    private String CONTENT;

    public void setFhlogId(String fhlogId){
        this.fhlogId = fhlogId;
    }

    public String getFhlogId(){
        return this.fhlogId;
    }

    public void setUSERNAME(String USERNAME){
        this.USERNAME = USERNAME;
    }

    public String getUSERNAME(){
        return this.USERNAME;
    }

    public void setCZTIME(String CZTIME){
        this.CZTIME = CZTIME;
    }

    public String getCZTIME(){
        return this.CZTIME;
    }

    public void setCONTENT(String CONTENT){
        this.CONTENT = CONTENT;
    }

    public String getCONTENT(){
        return this.CONTENT;
    }
}
