package com.hx.eplate.plugin.sms.alibaba;

/**
 * Created by hailongdexiang on 2017/5/22.
 */
public class AliSMSConfig {
    //    $YourAccessId，阿里云AccessId，可在“步骤一”获取（登陆阿里云 AccessKey 管理页面创建、查看）
    //    $YourAccessKey，阿里云AccessKey，可在“步骤一”获取（登陆阿里云 AccessKey 管理页面创建、查看）
    //    $YourMNSEndpoint，访问MNS服务的接入地址，可在“步骤一”获取（登陆MNS控制台，单击右上角“获取Endpoint”查看，选择公网地址）
    //    $YourTopic，发送短信使用的主题，可在“步骤二”获取，建议使用短信专用主题（进入控制台短信概览页，获取主题名称）
    //    $YourSignName，发送短信使用的签名，可在here获取
    //    $YourSMSTemplateCode，发送短信使用的模板Code，可在here获取
    //    $YourSMSTemplateParamKey1，所指定短信模板中定义的参数名（“{}”中的内容），没有可不指定；可在here查看模板中的变量，注：key 和 value 都必须是字符串形式。
    public static final String AccessId = "LTAI0BLyJkl8KBxi";
    public static final String AccessKey = "WucjMEhzSmZpeUoTLGffXOFKzl2EaD";
    public static final String MNSEndpoint = "https://1131094923980866.mns.cn-hangzhou.aliyuncs.com/";
    public static final String Topic = "sms.topic-cn-hangzhou";

    public static final String SYSTEM_TYPE_WX_VCODE = "1";           //微信 验证码
    public static final String SYSTEM_TYPE_APPLE_VCODE = "2";        //苹果 验证码
    public static final String SYSTEM_TYPE_ANDROID_VCODE = "3";      //安卓 验证码

    //V2短信版本
    public static final String SMSTemplateCode = "SMS_76605202";  //注册模板
    public static final String SMSTemplatePhoneCode = "SMS_76605202";  //修改手机号模板
    public static final String companyName = "车洗士智能科技";

    public static final int STATUS_NOMAL = 1;   //状态 正常
    public static final int STATUS_ERROR = 0;   //状态 异常
    public static final String SignName = "CC快洗";

    //初始化ascClient需要的几个参数
    public static final String product = "Dysmsapi";//短信API产品名称
    public static final String domain = "dysmsapi.aliyuncs.com";//短信API产品域名
    //替换成你的AK
    public static final String accessKeyId = "LTAI25a5WUf0LPKl";//你的accessKeyId,参考本文档步骤2
    public static final String accessKeySecret = "bJoASLS2wlnMnH4KqkxkYHsGgP1uIb";//你的accessKeySecret，参考本文档步骤2
    static {
        //设置超时时间-可自行调整
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");
    }

}
