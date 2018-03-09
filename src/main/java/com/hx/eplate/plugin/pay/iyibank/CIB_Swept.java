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
 * 兴业被扫支付相关
 */
public class CIB_Swept {
    /**
     * 支付宝微信扫码支付（自动识别）
     * @param trade_no 订单号
     * @param body 商品描述
     * @param attach 商户附加信息
     * @param totalfee 金额
     * @param device_info 终端设备号
     * @param authCode 微信授权码
     * @return
     */
    public Map<String,Object> Micropay(String trade_no, String body, String attach, double totalfee, String device_info,String authCode) throws Exception  {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("version", "1.0");
        param.put("charset", "UTF-8");
        param.put("sign_type", "MD5");
        param.put("service", "cibswept");
        param.put("callback_url", Config.callback_url);
        param.put("notify_url", Config.notify_url);
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
        param.put("auth_code",authCode);
        param.put("sign", MD5Helper.EncoderByMd5(MapHelper.ToUrl(param), Config.mch_Key));
        String result = HttpHelper.sendPost(Config.domainUrl, MapHelper.ToXml(param));
        return MapHelper.ToMap(result);
    }
}
