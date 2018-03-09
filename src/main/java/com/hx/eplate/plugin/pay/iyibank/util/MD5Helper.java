package com.hx.eplate.plugin.pay.iyibank.util;


import java.security.MessageDigest;

/**
 * MD5加密
 */
public class MD5Helper {
    public static String EncoderByMd5(String str,String  key){
        str += "&key=" + key;
        try {
            MessageDigest md5=MessageDigest.getInstance("MD5");
            byte[] bs = md5.digest(str.getBytes());
            StringBuilder sb = new StringBuilder(40);
            for (byte x : bs)
            {
                if ((x & 0xff) >> 4 == 0)
                {
                    sb.append("0").append(Integer.toHexString(x & 0xff));
                }
                else
                {
                    sb.append(Integer.toHexString(x & 0xff));
                }
            }
            return sb.toString().toUpperCase();
        }catch (Exception e)
        {
            return  "";
        }

    }

//EncoderByMd5("body=维力&charset=UTF-8&mch_create_ip=127.0.0.1&mch_id=10365&money=999.72&nonce_str=1490151188211&notify_url=http://wp.szdwl88.com/aiYi-pay/returnurl.do&out_trade_no=AIYI24741490151188210&service=cibweixin&sign_type=MD5&total_fee=999.72&version=2.0&key=d4386c77ae0f43d887a72d651673043c","d4386c77ae0f43d887a72d651673043c");

}
