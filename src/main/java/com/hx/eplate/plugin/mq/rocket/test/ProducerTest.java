package com.hx.eplate.plugin.mq.rocket.test;

import java.math.BigDecimal;
import java.util.Date;

import com.hx.eplate.plugin.mq.rocket.IProducer;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ProducerTest {

    private IProducer producer = null;

    public void befor() {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("classpath:config/spring-context.xml");
        producer = (IProducer) context.getBean("producer");
    }

    public void testSendMq() {
        LoanRequest loanRequest= new LoanRequest();
        loanRequest.setApplyNo("loan00005432231");
        loanRequest.setCreditNo("credit0000001");
        loanRequest.setEmployeeNo("test1");
        loanRequest.setLendPurpose("test1");
        loanRequest.setLoanCardNo("362226197403220017");
        loanRequest.setBankCode(null);
        loanRequest.setBankName(null);
        loanRequest.setOprTerm("12");
        loanRequest.setPayamt(new BigDecimal(100000));
        loanRequest.setRepayMode("0"); //0   1    2
        loanRequest.setApplyDate(new Date());
        producer.send("loanRequest", loanRequest);
    }
}