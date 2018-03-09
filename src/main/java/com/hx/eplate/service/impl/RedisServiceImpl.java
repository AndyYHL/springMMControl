package com.hx.eplate.service.impl;

import com.hx.eplate.entity.AppUserInfo;
import com.hx.eplate.entity.RedisEntity;
import com.hx.eplate.entity.RedisHashEntity;
import com.hx.eplate.service.RedisService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.concurrent.TimeUnit;


@Service("redisService")
public class RedisServiceImpl implements RedisService {
    private static Logger log = LogManager.getLogger("RedisServiceImpl");
    @Autowired
    RedisTemplate<String, Object> redisTemplate;

    private static final long SAVETIME_SECONDS = 3600*24*365; //TODO 24小时*365天
    private static final String PHONE_CODE = "PHONE_CODE:";
    private static final String UUID = "UUID:";

    public RedisTemplate<String, Object> getRedisTemplate() {
        return redisTemplate;
    }

    public void setRedisTemplate(RedisTemplate<String,Object> redisTemplate) {
        this.redisTemplate = redisTemplate;
    }

    /**
     * 新增更新方法
     * @param key
     * @param value
     */
    @Override
    public void putToken(String key,AppUserInfo value) {
        redisTemplate.opsForValue().getOperations().delete(UUID+key);
        redisTemplate.opsForValue().set(UUID+key,value,SAVETIME_SECONDS,TimeUnit.SECONDS);
    }
    /**
     * 删除方法
     * @param key
     */
    @Override
    public void delToken(String key){
        redisTemplate.opsForValue().getOperations().delete(UUID+key);
    }

    /**
     * 查找方法
     * @param key
     * @return
     */
    @Override
    public AppUserInfo getToken(String key) {
        return (AppUserInfo)redisTemplate.opsForValue().get(UUID+key);
    }


    @Override
    public long expireToken(String key) {
        return redisTemplate.getExpire(UUID+key).intValue();
    }

    @Override
    public void putPhoneCode(String key,RedisEntity value) {
        int i = redisTemplate.getExpire(PHONE_CODE+key).intValue();
        if (value.getBindPhone() == null){
            redisTemplate.opsForValue().set(PHONE_CODE+key,value,300,TimeUnit.SECONDS); //发送验证码时使用
        }else if(i<0){
            redisTemplate.opsForValue().set(PHONE_CODE+key,new RedisEntity(),300,TimeUnit.SECONDS); //登录时使用
        }else{
            redisTemplate.opsForValue().set(PHONE_CODE+key,value,i,TimeUnit.SECONDS); //登录时使用
        }
    }
    @Override
    public RedisEntity pushPhoneCode(String key) {
        if(redisTemplate.getExpire(PHONE_CODE+key).intValue()<0){
            return new RedisEntity();
        }
        return (RedisEntity)redisTemplate.opsForValue().get(PHONE_CODE+key);
    }

    @Override
    public void putHash(RedisHashEntity redisHash) {
        redisTemplate.opsForHash().put(redisHash.getObjectKey(), redisHash.getKey(), redisHash);
        redisTemplate.expire(redisHash.getObjectKey(),300, TimeUnit.SECONDS);  //Hashmap过期时间设置必须放在此位置
    }

    @Override
    public void deleteHash(RedisHashEntity redisHash) {
        redisTemplate.opsForHash().delete(redisHash.getObjectKey(), redisHash.getKey());
    }

    @Override
    public RedisHashEntity getHash(RedisHashEntity redisHash) {
        int i  = redisTemplate.getExpire(redisHash.getObjectKey()).intValue();
        if(i>0){
            return (RedisHashEntity) redisTemplate.opsForHash().get(redisHash.getObjectKey(), redisHash.getKey());
        }else{
            return redisHash;
        }
    }

    @Override
    public void add(String key, String value, Long l, TimeUnit timeUnit) {
        redisTemplate.opsForValue().set(key,value,l,timeUnit);
    }

    @Override
    public Object get(String key) {
        try{
            return redisTemplate.opsForValue().get(key);
        }catch (Exception e){return null;}
    }
}
