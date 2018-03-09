package com.hx.eplate.plugin.mq.rocket.test;


import com.hx.eplate.entity.MQEntity;
import com.hx.eplate.plugin.mq.rocket.impl.AbstractConsumer;

public class LoanRequestConsumer extends AbstractConsumer {

    @Override
    public void execute(MQEntity entity) {
        System.out.println("LoanRequestConsumer 消费消息");
        System.out.println(entity.toString());
    }

}
