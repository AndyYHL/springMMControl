package com.factory;

import com.hx.eplate.state.FinalJson;
import com.hx.eplate.util.json.Info;
import com.hx.eplate.util.json.JsonUtil;

public class JsonUtilFactory {

	private static JsonUtil jsonUtil;
	private static Info info;
	static{
		jsonUtil = new JsonUtil();
		info = new Info();
	}
    /***
     * get method return msg
     */
	public static JsonUtil successMsg(String msg) {
        info.setStatus(FinalJson.STATUS_OK);
        info.setMessage(msg);
        jsonUtil.setInfo(info);
        return jsonUtil;
	}
    /***
     * get method return data
     */
    public static JsonUtil successData(Object data) {
        info.setStatus(FinalJson.STATUS_OK);
        jsonUtil.setInfo(info);
        jsonUtil.setData(data);
        return jsonUtil;
    }
}
