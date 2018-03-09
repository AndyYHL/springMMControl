package com.hx.eplate.plugin.pay.iyibank;


import com.hx.eplate.plugin.pay.iyibank.util.HttpHelper;
import com.hx.eplate.plugin.pay.iyibank.util.MD5Helper;
import com.hx.eplate.plugin.pay.iyibank.util.MapHelper;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 兴业支付宝相关
 */
public class CIB_AlipayPay {
    /**
     * 支付宝扫码支付
     *
     * @param trade_no    订单号
     * @param body        商品描述
     * @param attach      商户附加信息
     * @param totalfee    金额
     * @param device_info 终端设备号
     * @return
     */
    public Map<String,Object> ScanCode(String trade_no, String body, String attach, double totalfee, String device_info,int payType) throws Exception {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("version", "1.0");
        param.put("charset", "UTF-8");
        param.put("sign_type", "MD5");
        param.put("service", "cibalipay");
        if(Config.PayType.APP_Pay.getPurId() == payType){
            param.put("callback_url", Config.callback_url);
            param.put("notify_url", Config.notify_url);
        }else if(Config.PayType.CON_Pay.getPurId() == payType){
            param.put("callback_url", Config.callback_url_coun);
            param.put("notify_url", Config.notify_url_coun);
        }
        param.put("body", body);
        param.put("attach", attach);
        param.put("out_trade_no", trade_no);
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        param.put("time_start", formatter.format(new Date()));
        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.SECOND, 5);
        param.put("time_expire", formatter.format(calendar.getTime()));
        param.put("total_fee", totalfee);
        param.put("mch_id", Config.mch_id);
        param.put("sign", MD5Helper.EncoderByMd5(MapHelper.ToUrl(param), Config.mch_Key));
        String result = HttpHelper.sendPost(Config.domainUrl, MapHelper.ToXml(param));
        return MapHelper.ToMap(result);
    }
}
