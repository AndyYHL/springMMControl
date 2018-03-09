package com.hx.eplate.plugin.pay.iyibank;

/**
 * Created by Administrator on 2017-08-16.
 */
public class Config {
    //购买类型
    public enum PayType{
        APP_Pay(1,"APP支付，购买订单"),CON_Pay(2,"购买代金卷");
        private int purId;
        private String purStr;

        public int getPurId() {
            return purId;
        }

        public void setPurId(int purId) {
            this.purId = purId;
        }

        public String getPurStr() {
            return purStr;
        }

        public void setPurStr(String purStr) {
            this.purStr = purStr;
        }

        PayType(int purId, String purStr){
            this.purId = purId;
            this.purStr = purStr;
        }
    }
    //爱益支付接口地址
    public final  static String  domainUrl ="https://vip.iyibank.com/pay/gateway";
    //接入时请填写爱益商编
    public final static String  mch_id ="13062";
    //接入时请填写爱益商编密钥
    public final static String  mch_Key ="ceab9b07b00c46eca887c1714c5ea64b";
    //接入时请填前填写台通知地址-APP洗车下单
    public  final  static  String callback_url ="http://www.hqssjt.com/api/v1/pay/iyibankpay";
    //接入时请填写异步通知地址-APP洗车下单
    public  final  static  String notify_url ="http://www.hqssjt.com/api/v1/pay/iyibankpay";

    //接入时请填前填写台通知地址-购买代金卷
    public  final  static  String callback_url_coun ="http://www.hqssjt.com/api/v1/pay/iyibankconpay";
    //接入时请填写异步通知地址-购买代金卷
    public  final  static  String notify_url_coun ="http://www.hqssjt.com/api/v1/pay/iyibankconpay";

    /*//接入时请填前填写台通知地址-APP洗车下单
    public  final  static  String callback_url ="http://huaxun.51vip.biz/api/v1/pay/iyibankpay";
    //接入时请填写异步通知地址-APP洗车下单
    public  final  static  String notify_url ="http://huaxun.51vip.biz/api/v1/pay/iyibankpay";

    //接入时请填前填写台通知地址-购买代金卷
    public  final  static  String callback_url_coun ="http://huaxun.51vip.biz/api/v1/pay/iyibankconpay";
    //接入时请填写异步通知地址-购买代金卷
    public  final  static  String notify_url_coun ="http://huaxun.51vip.biz/api/v1/pay/iyibankconpay";*/
}
