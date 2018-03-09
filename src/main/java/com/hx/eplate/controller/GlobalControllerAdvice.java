package com.hx.eplate.controller;

import com.hx.eplate.state.FinalJson;
import com.hx.eplate.util.json.Info;
import com.hx.eplate.util.json.JsonUtil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;

@ControllerAdvice
public class GlobalControllerAdvice {

	private Logger logger = LogManager.getLogger(getClass());
	private static JsonUtil jsonUtil = new JsonUtil();
	private static Info info = new Info();

	@ExceptionHandler(Exception.class)
	public @ResponseBody JsonUtil handle(Exception e, HttpServletResponse response) {
		logger.error(e.getMessage(), e);
		try {
			info.setStatus(FinalJson.STATUS_GONE);
			info.setMessage("经纬度重复");
		} catch (Exception ex) {
			logger.error("GlobalControllerAdvice---"+ex);
			info.setMessage("JSON解析异常"+ex.getMessage());
		}
		jsonUtil.setInfo(info);
		return jsonUtil;
	}

}
