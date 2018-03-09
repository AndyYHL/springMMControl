package com.hx.eplate.plugin.pay.iyibank.xml;

/**
 * Created by Administrator on 2017-08-18.
 * 爱意支付的回调信息
 */
public class IyipayNotify {
    private String version; //版本号
    private String charset; //字符集
    private String sign_type; //签名方式
    private String status; //返回状态
    private String message; //返回信息
    private String result_code; //业务结果 0 表示成功非 0 表示失败
    private String mch_id; //商户号
    private String device_info; //设备号
    private String nonce_str; //随机字符串
    private String err_code; //错误代码
    private String err_msg; //错误描述
    private String sign; //签名
    private String service; //支付方式
    private String total_fee; //支付金额
    private String out_trade_no; //商户订单号
    private String orderid; //系统订单号
    private String thirdnumber; //第三方订单号 、、在微信或支付宝的订单号
    private String attach; //附加信息

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getCharset() {
        return charset;
    }

    public void setCharset(String charset) {
        this.charset = charset;
    }

    public String getSign_type() {
        return sign_type;
    }

    public void setSign_type(String sign_type) {
        this.sign_type = sign_type;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getResult_code() {
        return result_code;
    }

    public void setResult_code(String result_code) {
        this.result_code = result_code;
    }

    public String getMch_id() {
        return mch_id;
    }

    public void setMch_id(String mch_id) {
        this.mch_id = mch_id;
    }

    public String getDevice_info() {
        return device_info;
    }

    public void setDevice_info(String device_info) {
        this.device_info = device_info;
    }

    public String getNonce_str() {
        return nonce_str;
    }

    public void setNonce_str(String nonce_str) {
        this.nonce_str = nonce_str;
    }

    public String getErr_code() {
        return err_code;
    }

    public void setErr_code(String err_code) {
        this.err_code = err_code;
    }

    public String getErr_msg() {
        return err_msg;
    }

    public void setErr_msg(String err_msg) {
        this.err_msg = err_msg;
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getTotal_fee() {
        return total_fee;
    }

    public void setTotal_fee(String total_fee) {
        this.total_fee = total_fee;
    }

    public String getOut_trade_no() {
        return out_trade_no;
    }

    public void setOut_trade_no(String out_trade_no) {
        this.out_trade_no = out_trade_no;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    public String getThirdnumber() {
        return thirdnumber;
    }

    public void setThirdnumber(String thirdnumber) {
        this.thirdnumber = thirdnumber;
    }

    public String getAttach() {
        return attach;
    }

    public void setAttach(String attach) {
        this.attach = attach;
    }
}
