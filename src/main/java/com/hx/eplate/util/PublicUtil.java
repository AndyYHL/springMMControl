package com.hx.eplate.util;

import com.google.common.collect.Maps;
import org.apache.commons.beanutils.PropertyUtilsBean;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.beans.PropertyDescriptor;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Date;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/**
 * Created by Administrator on 2017-04-24.
 */
public class PublicUtil {
    //将javabean实体类转为map类型，然后返回一个map类型的值
    public static Map<String, Object> beanToMap(Object obj) {
        Map<String, Object> params = Maps.newHashMap();
        try {
            PropertyUtilsBean propertyUtilsBean = new PropertyUtilsBean();
            PropertyDescriptor[] descriptors = propertyUtilsBean.getPropertyDescriptors(obj);
            for (int i = 0; i < descriptors.length; i++) {
                String name = descriptors[i].getName();
                if (!"class".equals(name)) {
                    if(propertyUtilsBean.getNestedProperty(obj, name)!=null){
                        params.put(name, propertyUtilsBean.getNestedProperty(obj, name).toString());
                    }else{
                        params.put(name, null);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return params;
    }
    // 过滤特殊字符
    // 只允许字母和数字 // String regEx ="[^a-zA-Z0-9]";
    // 清除掉所有特殊字符 //String regEx="[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]";
    public static String stringFilter(String str) throws PatternSyntaxException {
        String regEx = "[\\ud83c\\udc00-\\ud83c\\udfff]|[\\ud83d\\udc00-\\ud83d\\udfff]|[\\u2600-\\u27ff]";
        Pattern p = Pattern.compile(regEx,Pattern.UNICODE_CASE | Pattern . CASE_INSENSITIVE );
        Matcher m = p.matcher(str);
        return m.replaceAll("").trim();
    }

    public static void main(String[] args){

        System.out.println(stringFilter("习习习\uD83D\uDC11")+"----"+getIpAddr());
    }
    public static String getIpAddr() {
        String ipAddress = null;
        //ipAddress = this.getRequest().getRemoteAddr();
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        ipAddress = attr.getRequest().getHeader("x-forwarded-for");
        if(ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = attr.getRequest().getHeader("Proxy-Client-IP");
        }
        if(ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = attr.getRequest().getHeader("WL-Proxy-Client-IP");
        }
        if(ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = attr.getRequest().getRemoteAddr();
            if(ipAddress.equals("127.0.0.1")){
                //根据网卡取本机配置的IP
                InetAddress inet=null;
                try {
                    inet = InetAddress.getLocalHost();
                } catch (UnknownHostException e) {
                    e.printStackTrace();
                }
                ipAddress= inet.getHostAddress();
            }

        }
        //对于通过多个代理的情况，第一个IP为客户端真实IP,多个IP按照','分割
        if(ipAddress!=null && ipAddress.length()>15){ //"***.***.***.***".length() = 15
            if(ipAddress.indexOf(",")>0){
                ipAddress = ipAddress.substring(0,ipAddress.indexOf(","));
            }
        }
        return ipAddress;
    }
}
