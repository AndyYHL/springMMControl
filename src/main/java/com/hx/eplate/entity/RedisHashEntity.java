package com.hx.eplate.entity;

import java.io.Serializable;

/**
 * Created by hailongdexiang on 2017/5/22.
 */
public class RedisHashEntity implements Serializable{

    private static final long serialVersionUID = 4310372581167415472L;
    public static final String OBJECT_KEY = "APP_PHONECODE";
    private String key;
    private RedisEntity redisEntity;

    public void setKey(String key) {
        this.key = key;
    }
    public String getKey() {
        return key;
    }
    public RedisEntity getRedisEntity() {
        return redisEntity;
    }
    public void setRedisEntity(RedisEntity redisEntity) {
        this.redisEntity = redisEntity;
    }
    public String getObjectKey() {
        return OBJECT_KEY;
    }
}
