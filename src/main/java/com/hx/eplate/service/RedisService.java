package com.hx.eplate.service;


import com.hx.eplate.entity.AppUserInfo;
import com.hx.eplate.entity.RedisEntity;
import com.hx.eplate.entity.RedisHashEntity;

import java.util.concurrent.TimeUnit;

/**
 * Created by Administrator on 2017-04-10.
 */
public interface RedisService {
    void putToken(String key, AppUserInfo value);
    void delToken(String key);
    AppUserInfo getToken(String key);
    long expireToken(String key);

    void putPhoneCode(String key, RedisEntity value);
    RedisEntity pushPhoneCode(String key);

    void putHash(RedisHashEntity redisHash);
    void deleteHash(RedisHashEntity redisHash);
    RedisHashEntity getHash(RedisHashEntity redisHash);

    void add(String key, String value, Long l, TimeUnit timeUnit);
    Object get(String key);
}
