package com.hx.eplate.service;

import com.hx.eplate.util.json.JsonUtil;

/**
 * 轨迹分析
 * Created by Administrator on 2017-09-21.
 */
public interface AnalysisService {
    /**
     * 停留点分析
     * @param jsonUtil
     * @return
     */
    JsonUtil staypoint(JsonUtil jsonUtil);
    /**
     * 驾驶行为分析
     * @param jsonUtil
     * @return
     */
    JsonUtil drivingbehavior(JsonUtil jsonUtil);
}
