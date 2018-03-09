package com.hx.eplate.plugin.sms.alibaba;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.hx.eplate.state.FinalJson;
import com.hx.eplate.util.json.JsonUtil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.util.Map;
import java.util.Random;

public class AliSMSSDK{
    private static Logger log = LogManager.getLogger("AliSMSSDK");
//    private JsonUtil Batch2PublishSMSMessage(Map<String,String> params,JsonUtil jsonUtil){
//        /**
//         * Step 1. 获取主题引用   (AccessId,AccessKey,获取Endpoint公网地址)  短信使用的主题
//         */
//        CloudAccount account = new CloudAccount(AliSMSConfig.AccessId,AliSMSConfig.AccessKey,AliSMSConfig.MNSEndpoint);
//        MNSClient client = account.getMNSClient();
//        CloudTopic topic = client.getTopicRef(AliSMSConfig.Topic);
//        /**
//         * Step 2. 设置SMS消息体（必须）
//         *
//         * 注：目前暂时不支持消息内容为空，需要指定消息内容，不为空即可。
//         */
//        RawTopicMessage msg = new RawTopicMessage();
//        msg.setMessageBody("sms-message");
//        /**
//         * Step 3. 生成SMS消息属性
//         */
//        MessageAttributes messageAttributes = new MessageAttributes();
//        BatchSmsAttributes batchSmsAttributes = new BatchSmsAttributes();
//        // 3.1 设置发送短信的签名（SMSSignName）
//        batchSmsAttributes.setFreeSignName(params.get("SignName"));
//        // 3.2 设置发送短信使用的模板（SMSTempateCode）
//        batchSmsAttributes.setTemplateCode(params.get("SMSTemplateCode"));
//        // 3.3 设置发送短信所使用的模板中参数对应的值（在短信模板中定义的，没有可以不用设置）
//        BatchSmsAttributes.SmsReceiverParams smsReceiverParams = new BatchSmsAttributes.SmsReceiverParams();
//        //【CC快洗】 验证码${code}，您正在注册成为车洗士智能科技用户，感谢您的支持！
//        int random = new Random().nextInt(900000)+100000;
//        String vaildCode = String.valueOf(random);
//
//        smsReceiverParams.setParam("code",vaildCode);
//        smsReceiverParams.setParam("product",params.get("companyName"));
//        // 3.4 增加接收短信的号码
//        batchSmsAttributes.addSmsReceiver(params.get("bindPhone"), smsReceiverParams);
//        messageAttributes.setBatchSmsAttributes(batchSmsAttributes);
//        try {
//            /**
//             * Step 4. 发布SMS消息
//             */
//            TopicMessage ret = topic.publishMessage(msg, messageAttributes);
//            jsonUtil.setData(vaildCode); //将验证码临时存入data中
//            jsonUtil.getInfo().setStatus(FinalJson.STATUS_OK);
//
//            log.info("bindPhone: " + params.get("bindPhone")+ "   vaildCode: " + vaildCode+"   vaildTime: "+params.get("vaildTime"));
//            log.info("MessageId: " + ret.getMessageId());
//            log.info("MessageMD5: " + ret.getMessageBodyMD5());
//        } catch (ServiceException se) {
//            jsonUtil.getInfo().setStatus(FinalJson.STATUS_GONE);
//            jsonUtil.setData(se.getErrorCode());
//            jsonUtil.getInfo().setMessage(se.getMessage());
//            log.error(se.getErrorCode() + se.getRequestId() + params.get("bindPhone"));
//            log.error(se.getMessage());
//            se.printStackTrace();
//        } catch (Exception e) {
//            jsonUtil.getInfo().setStatus(FinalJson.STATUS_GONE);
//            jsonUtil.getInfo().setMessage(e.getMessage());
//            e.printStackTrace();
//        }finally {
//            //SELECT iphone,noticecode,status,system_type_id,addtime,endtime,contents FROM notice_sms;
//            Map noticeSms = Maps.newHashMap();
//            noticeSms.put("iphone",params.get("bindPhone"));
//            noticeSms.put("noticecode",vaildCode);
//            noticeSms.put("status",AliSMSConfig.STATUS_NOMAL);
//            noticeSms.put("system_type_id",AliSMSConfig.SYSTEM_TYPE_WX_VCODE);
//            noticeSms.put("addtime",new Date());
//            noticeSms.put("endtime",new Date(new Date().getTime()+ 300000));
//            noticeSms.put("contents",jsonUtil.getInfo().getMessage());
//            smsMessageMapper.insert(noticeSms);
//        }
//        client.close();
//        return jsonUtil;
//    }
//
//    private ResultJson BatchPublishSMSMessage(Map<String,String> params,ResultJson responseJSON) {
//        /**
//         * Step 1. 获取主题引用   (AccessId,AccessKey,获取Endpoint公网地址)  短信使用的主题
//         */
//        CloudAccount account = new CloudAccount(AliSMSConfig.AccessId,AliSMSConfig.AccessKey,AliSMSConfig.MNSEndpoint);
//        MNSClient client = account.getMNSClient();
//        CloudTopic topic = client.getTopicRef(AliSMSConfig.Topic);
//        /**
//         * Step 2. 设置SMS消息体（必须）
//         *
//         * 注：目前暂时不支持消息内容为空，需要指定消息内容，不为空即可。
//         */
//        RawTopicMessage msg = new RawTopicMessage();
//        msg.setMessageBody("sms-message");
//        /**
//         * Step 3. 生成SMS消息属性
//         */
//        MessageAttributes messageAttributes = new MessageAttributes();
//        BatchSmsAttributes batchSmsAttributes = new BatchSmsAttributes();
//        // 3.1 设置发送短信的签名（SMSSignName）
//        batchSmsAttributes.setFreeSignName(params.get("SignName"));
//        // 3.2 设置发送短信使用的模板（SMSTempateCode）
//        batchSmsAttributes.setTemplateCode(params.get("SMSTemplateCode"));
//        // 3.3 设置发送短信所使用的模板中参数对应的值（在短信模板中定义的，没有可以不用设置）
//        BatchSmsAttributes.SmsReceiverParams smsReceiverParams = new BatchSmsAttributes.SmsReceiverParams();
//        //【CC快洗】 验证码${code}，您正在注册成为车洗士智能科技用户，感谢您的支持！
//        int random = new Random().nextInt(900000)+100000;
//        String vaildCode = String.valueOf(random);
//
//        smsReceiverParams.setParam("code",vaildCode);
//        smsReceiverParams.setParam("product",params.get("companyName"));
//        // 3.4 增加接收短信的号码
//        batchSmsAttributes.addSmsReceiver(params.get("bindPhone"), smsReceiverParams);
//        messageAttributes.setBatchSmsAttributes(batchSmsAttributes);
//        try {
//            /**
//             * Step 4. 发布SMS消息
//             */
//            TopicMessage ret = topic.publishMessage(msg, messageAttributes);
//
//            responseJSON.setData(vaildCode); //将验证码临时存入data中
//            responseJSON.setStatus(FinalJson.STATUS_OK);
//
//            log.info("bindPhone: " + params.get("bindPhone")+ "   vaildCode: " + vaildCode+"   vaildTime: "+params.get("vaildTime"));
//            log.info("MessageId: " + ret.getMessageId());
//            log.info("MessageMD5: " + ret.getMessageBodyMD5());
//        } catch (ServiceException se) {
//            responseJSON.setStatus(FinalJson.STATUS_GONE);
//            responseJSON.setData(se.getErrorCode());
//            responseJSON.setMsg(se.getMessage());
//            log.error(se.getErrorCode() + se.getRequestId() + params.get("bindPhone"));
//            log.error(se.getMessage());
//            se.printStackTrace();
//        } catch (Exception e) {
//            responseJSON.setStatus(FinalJson.STATUS_GONE);
//            responseJSON.setMsg(e.getMessage());
//            e.printStackTrace();
//        }finally {
//            //SELECT iphone,noticecode,status,system_type_id,addtime,endtime,contents FROM notice_sms;
//            Map noticeSms = Maps.newHashMap();
//            noticeSms.put("iphone",params.get("bindPhone"));
//            noticeSms.put("noticecode",vaildCode);
//            noticeSms.put("status",AliSMSConfig.STATUS_NOMAL);
//            noticeSms.put("system_type_id",AliSMSConfig.SYSTEM_TYPE_WX_VCODE);
//            noticeSms.put("addtime",new Date());
//            noticeSms.put("endtime",new Date(new Date().getTime()+ 300000));
//            noticeSms.put("contents",responseJSON.getMsg());
//            smsMessageMapper.insert(noticeSms);
//        }
//        client.close();
//        return responseJSON;
//    }
    /**
     * APP手机号注册
     * @param params
     * @param jsonUtil
     * @return
     */
    public JsonUtil RegisterSMSMessage(Map<String,String> params,JsonUtil jsonUtil){
        //【CC快洗】 验证码${code}，您正在注册成为车洗士智能科技用户，感谢您的支持！
        int random = new Random().nextInt(900000)+100000;
        String vaildCode = String.valueOf(random);
        try {
            //初始化ascClient,暂时不支持多region
            IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", AliSMSConfig.accessKeyId,AliSMSConfig.accessKeySecret);
            DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", AliSMSConfig.product, AliSMSConfig.domain);
            IAcsClient acsClient = new DefaultAcsClient(profile);
            //组装请求对象
            SendSmsRequest request = new SendSmsRequest();
            //必填:待发送手机号。支持以逗号分隔的形式进行批量调用，
            //批量上限为20个手机号码,批量调用相对于单条调用及时性稍有延迟,验证码类型的短信推荐使用单条调用的方式
            request.setPhoneNumbers(params.get("bindPhone"));
            //必填:短信签名-可在短信控制台中找到
            request.setSignName(AliSMSConfig.SignName);
            //必填:短信模板-可在短信控制台中找到
            request.setTemplateCode(AliSMSConfig.SMSTemplateCode);
            //可选:模板中的变量替换JSON串,如模板内容为<验证码${code}，您正在注册成为车洗士智能科技用户，感谢您的支持！>时,此处的值为
            String requestBody = "{\"code\":\"KEY\", \"product\":\"VALUE\"}";
            requestBody = requestBody.replace("KEY",vaildCode);
            requestBody = requestBody.replace("VALUE", AliSMSConfig.companyName);
            request.setTemplateParam(requestBody);
            //可选:outId为提供给业务方扩展字段,最终在短信回执消息中将此值带回给调用者
            request.setOutId("注册信息验证码已发送！");
            //请求失败这里会抛ClientException异常
            SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);
            if(sendSmsResponse.getCode() != null && sendSmsResponse.getCode().equals("OK")) {
                jsonUtil.getInfo().setStatus(FinalJson.STATUS_OK);
                log.info("bindPhone: " + params.get("bindPhone")+ "   vaildCode: " + vaildCode+"   vaildTime: "+params.get("vaildTime"));
            }else {
                jsonUtil.getInfo().setStatus(FinalJson.STATUS_GONE);
                jsonUtil.getInfo().setMessage(sendSmsResponse.getMessage());
            }
            //将验证码临时存入data中
            jsonUtil.setData(vaildCode);
        }catch (Exception ex){
            jsonUtil.getInfo().setStatus(FinalJson.STATUS_GONE);
            jsonUtil.getInfo().setMessage(ex.getMessage());
        }
        return jsonUtil;
    }

    /**
     * APP手机号修改
     * @param params
     * @param jsonUtil
     * @return
     */
    public JsonUtil UpdateUserPhoneSMSMessage(Map<String,String> params,JsonUtil jsonUtil){
        //【CC快洗】 验证码${code}，您正在尝试变更${product}重要信息，请妥善保管账户信息。
        int random = new Random().nextInt(900000)+100000;
        String vaildCode = String.valueOf(random);
        try {
            //初始化ascClient,暂时不支持多region
            IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", AliSMSConfig.accessKeyId,AliSMSConfig.accessKeySecret);
            DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", AliSMSConfig.product, AliSMSConfig.domain);
            IAcsClient acsClient = new DefaultAcsClient(profile);
            //组装请求对象
            SendSmsRequest request = new SendSmsRequest();
            request.setPhoneNumbers(params.get("bindPhone"));
            request.setSignName(AliSMSConfig.SignName);
            request.setTemplateCode(AliSMSConfig.SMSTemplatePhoneCode);
            String requestBody = "{\"code\":\"KEY\", \"product\":\"VALUE\"}";
            requestBody = requestBody.replace("KEY",vaildCode);
            requestBody = requestBody.replace("VALUE", AliSMSConfig.companyName);
            request.setTemplateParam(requestBody);
            request.setOutId("修改注册信息验证码已发送！");
            SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);
            if(sendSmsResponse.getCode() != null && sendSmsResponse.getCode().equals("OK")) {
                jsonUtil.getInfo().setStatus(FinalJson.STATUS_OK);
                log.info("bindPhone: " + params.get("bindPhone")+ "   vaildCode: " + vaildCode+"   vaildTime: "+params.get("vaildTime"));
            }else {
                jsonUtil.getInfo().setStatus(FinalJson.STATUS_GONE);
                jsonUtil.getInfo().setMessage(sendSmsResponse.getMessage());
            }
            //将验证码临时存入data中
            jsonUtil.setData(vaildCode);
        }catch (Exception ex){
            jsonUtil.getInfo().setStatus(FinalJson.STATUS_GONE);
            jsonUtil.getInfo().setMessage(ex.getMessage());
        }
        return jsonUtil;
    }

}
