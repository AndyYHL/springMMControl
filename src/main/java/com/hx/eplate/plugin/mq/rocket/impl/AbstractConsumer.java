package com.hx.eplate.plugin.mq.rocket.impl;

import com.hx.eplate.entity.MQEntity;
import com.hx.eplate.plugin.mq.rocket.IConsumer;
import com.hx.eplate.util.SerializableUtil;
import org.apache.rocketmq.common.message.MessageExt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;



public abstract class AbstractConsumer implements IConsumer {

    protected Logger logger = LoggerFactory.getLogger(AbstractConsumer.class);

    private String classTypeName;

    public void handlerMessage(MessageExt msg) {
        try {
            MQEntity entity = doStart(msg);
            execute(entity);
            doEnd(entity);
        } catch (Exception e) {
            logger.error("处理mq消息异常。",e);
        }
    }

    /**
     * 解析mq消息前置处理
     * @param msg
     * @throws ClassNotFoundException
     */
    protected MQEntity doStart(MessageExt msg) throws ClassNotFoundException {
        Class<? extends MQEntity> clazz = (Class<? extends MQEntity>) Class.forName(classTypeName);
        return SerializableUtil.parse(msg.getBody(), clazz);
    }

    /**
     * 解析mq消息后置处理
     * @param entity
     */
    protected void doEnd(MQEntity entity) {

    }

    /**
     * 解析mq消息 MessageExt
     * @param entity
     */
    public abstract void execute(MQEntity entity);

    public void setClassTypeName(String classTypeName) {
        this.classTypeName = classTypeName;
    }



}
