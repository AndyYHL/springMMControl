package com.hx.eplate.plugin.pay.iyibank.util;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.*;

/**
 * Map操作
 */
public class MapHelper {
    /**
     * 将Map转换成xml
     *
     * @param map
     * @return
     */
    public static String ToXml(Map<String, Object> map) {
        //对map进行排序
        List<Map.Entry<String, Object>> el = new ArrayList<Map.Entry<String, Object>>(map.entrySet());
        Collections.sort(el, new Comparator<Map.Entry<String, Object>>() {
            public int compare(Map.Entry<String, Object> e1, Map.Entry<String, Object> e2) {
                return e1.getKey().compareTo(e2.getKey());
            }
        });
        //转换成xml
        String xml = "<xml>";
        for (Map.Entry<String, Object> entry : el) {
            if (entry.getValue() != null && entry.getValue() != "") {
                xml += "<" + entry.getKey() + ">" + "<![CDATA[" + entry.getValue() + "]]></" + entry.getKey() + ">";
            }
        }
        xml += "</xml>";
        return xml;
    }

    /**
     * 将Map转换成Url
     *
     * @param map
     * @return
     */
    public static String ToUrl(Map<String, Object> map) {
        //对map进行排序
        List<Map.Entry<String, Object>> el = new ArrayList<Map.Entry<String, Object>>(map.entrySet());
        Collections.sort(el, new Comparator<Map.Entry<String, Object>>() {
            public int compare(Map.Entry<String, Object> e1, Map.Entry<String, Object> e2) {
                return e1.getKey().compareTo(e2.getKey());
            }
        });
        //转换成Url
        String buff = "";
        for (Map.Entry<String, Object> entry : el) {
            if (entry.getValue() != null && entry.getValue() != "") {
                buff += entry.getKey() + "=" + entry.getValue() + "&";
            }
        }
        buff = buff.substring(0, buff.length() - 1);
        return buff;
    }

    /**
     * xml字符转换成map
     * @param xmlStr xml字符
     * @return
     */
    public static Map<String, Object> ToMap(String xmlStr) {
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            InputStream stream = new ByteArrayInputStream(xmlStr.getBytes());
            Document doc = builder.parse(stream);
            doc.getDocumentElement().normalize();
            NodeList nl = doc.getDocumentElement().getChildNodes();
            for (int i = 0; i < nl.getLength(); i++) {
                map.put(nl.item(i).getNodeName(), nl.item(i).getTextContent());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }
}
