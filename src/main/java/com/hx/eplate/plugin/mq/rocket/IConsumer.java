package com.hx.eplate.plugin.mq.rocket;

import org.apache.rocketmq.common.message.MessageExt;

/**
 * Created by Administrator on 2017/11/21.
 */
public interface IConsumer {

    /**
     * 消费端解析消息
     * @param msg
     */
    void handlerMessage(MessageExt msg);

}
