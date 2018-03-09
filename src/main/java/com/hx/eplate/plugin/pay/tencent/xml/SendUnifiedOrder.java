package com.hx.eplate.plugin.pay.tencent.xml;

import com.hx.eplate.plugin.pay.tencent.common.Configure;

/**
 * Created by Administrator on 2017-05-18.
 * 发送统一下单XML对象
 * https://pay.weixin.qq.com/wiki/doc/api/jsapi.php?chapter=9_1
 */
public class SendUnifiedOrder {
    private String appid = Configure.getAppid(); //微信支付分配的公众账号ID（企业号corpid即为此appId）
    private String attach; //附加数据，在查询API和支付通知中原样返回，可作为自定义参数使用。
    /**
     * 商品简单描述，该字段请按照规范传递，具体请见参数规定
     * https://pay.weixin.qq.com/wiki/doc/api/jsapi.php?chapter=4_2
     */
    private String body;
    private String mch_id = Configure.getMchid(); //微信支付分配的商户号
    private String detail; // 单品优惠字段(暂未上线)
    /**
     * 随机字符串，长度要求在32位以内。推荐随机数生成算法
     * https://pay.weixin.qq.com/wiki/doc/api/jsapi.php?chapter=4_3
     */
    private String nonce_str;
    /**
     * 异步接收微信支付结果通知的回调地址，通知url必须为外网可访问的url，不能携带参数。
     */
    private String notify_url =Configure.NOTIFY_URL;
    /**
     * trade_type=JSAPI时（即公众号支付），此参数必传，此参数为微信用户在商户对应appid下的唯一标识。openid如何获取，可参考【获取openid】。企业号请使用【企业号OAuth2.0接口】获取企业号内成员userid，再调用【企业号userid转openid接口】进行转换
     */
    private String openid;
    /**
     * 商户系统内部订单号，要求32个字符内，只能是数字、大小写字母_-|*@ ，且在同一个商户号下唯一。详见商户订单号
     */
    private String out_trade_no;
    /**
     * APP和网页支付提交用户端ip，Native支付填调用微信支付API的机器IP。
     */
    private String spbill_create_ip;
    /**
     * 订单总金额，单位为分，详见支付金额
     */
    private String total_fee;
    /**
     * 取值如下：JSAPI，NATIVE，APP等，说明详见参数规定
     */
    private String trade_type;
    /**
     * 通过签名算法计算得出的签名值，详见签名生成算法
     */
    private String sign;

    public String getAppid() {
        return appid;
    }

    public void setAppid(String appid) {
        this.appid = appid;
    }

    public String getAttach() {
        return attach;
    }

    public void setAttach(String attach) {
        this.attach = attach;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getMch_id() {
        return mch_id;
    }

    public void setMch_id(String mch_id) {
        this.mch_id = mch_id;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getNonce_str() {
        return nonce_str;
    }

    public void setNonce_str(String nonce_str) {
        this.nonce_str = nonce_str;
    }

    public String getNotify_url() {
        return notify_url;
    }

    public void setNotify_url(String notify_url) {
        this.notify_url = notify_url;
    }

    public String getOpenid() {
        return openid;
    }

    public void setOpenid(String openid) {
        this.openid = openid;
    }

    public String getOut_trade_no() {
        return out_trade_no;
    }

    public void setOut_trade_no(String out_trade_no) {
        this.out_trade_no = out_trade_no;
    }

    public String getSpbill_create_ip() {
        return spbill_create_ip;
    }

    public void setSpbill_create_ip(String spbill_create_ip) {
        this.spbill_create_ip = spbill_create_ip;
    }

    public String getTotal_fee() {
        return total_fee;
    }

    public void setTotal_fee(String total_fee) {
        this.total_fee = total_fee;
    }

    public String getTrade_type() {
        return trade_type;
    }

    public void setTrade_type(String trade_type) {
        this.trade_type = trade_type;
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }
}
