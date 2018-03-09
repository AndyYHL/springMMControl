package com.hx.eplate.entity;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.Map;


/**
 * @author Administrator
 *
 */
public class MQEntity implements Serializable{

    private static final long serialVersionUID = -2551495105702956945L;

    private Map<String, Object> extObj = new LinkedHashMap<String, Object>();

    private String mqId ;

    private String mqKey;

    /**
     * 添加附加字段
     * @param key
     * @param value
     */
    public void addExt(String key , Object value){
        extObj.put(key, value);
    }

    /**
     * 获取附加字段
     * @param key
     */
    public void getExt(String key ){
        extObj.get(key);
    }

    public String getMqId() {
        return mqId;
    }

    public void setMqId(String mqId) {
        this.mqId = mqId;
    }

    public String getMqKey() {
        return mqKey;
    }

    public void setMqKey(String mqKey) {
        this.mqKey = mqKey;
    }

    @Override
    public int hashCode() {
        return HashCodeBuilder.reflectionHashCode(this);
    }

    @Override
    public boolean equals(Object obj) {
        return EqualsBuilder.reflectionEquals(this, obj);
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }



}