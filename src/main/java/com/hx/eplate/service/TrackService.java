package com.hx.eplate.service;

import com.hx.eplate.util.json.JsonUtil;

/**
 * 轨迹上传
 * Created by Administrator on 2017-09-21.
 */
public interface TrackService {
    ///////////////////////////////////////////轨迹上传////////////////////////////////////////
    /**
     * 	上传单个轨迹点
     * @param jsonUtil
     * @return
     */
    JsonUtil addpoint(JsonUtil jsonUtil);
    /**
     * 批量上传多个 entity 的多个轨迹点
     * @param jsonUtil
     * @return
     */
    JsonUtil addpoints(JsonUtil jsonUtil);
    ////////////////////////////////////////////轨迹纠偏和里程///////////////////////////////////
    /**
     * 查询某 entity 的实时位置，支持纠偏
     * @param jsonUtil
     * @return
     */
    JsonUtil getlatestpoint(JsonUtil jsonUtil);
    /**
     * 查询某 entity 一段时间内的轨迹里程，支持纠偏和里程补偿
     * @param jsonUtil
     * @return
     */
    JsonUtil getdistance(JsonUtil jsonUtil);
    /**
     * 查询某 entity 一段时间内的轨迹点以及相关信息，支持纠偏和里程补偿
     * @param jsonUtil
     * @return
     */
    JsonUtil gettrack(JsonUtil jsonUtil);
}
