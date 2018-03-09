package com.hx.eplate.service;
import com.hx.eplate.util.json.JsonUtil;
/**
 * 地理围栏管理
 * Created by Administrator on 2017-09-21.
 */
public interface FenceService {
    /**
     * 创建圆形围栏
     * @param jsonUtil
     * @return
     */
    JsonUtil createcirclefence(JsonUtil jsonUtil);
    /**
     * 创建多边形围栏
     * @param jsonUtil
     * @return
     */
    JsonUtil createpolygonfence(JsonUtil jsonUtil);
    /**
     * 创建线型围栏
     * @param jsonUtil
     * @return
     */
    JsonUtil createpolylinefence(JsonUtil jsonUtil);
    /**
     * 创建行政区划围栏
     * @param jsonUtil
     * @return
     */
    JsonUtil createdistrictfence(JsonUtil jsonUtil);
    /**
     * 更新圆形围栏
     * @param jsonUtil
     * @return
     */
    JsonUtil updatecirclefence(JsonUtil jsonUtil);
    /**
     * 	更新多边形围栏
     * @param jsonUtil
     * @return
     */
    JsonUtil updatepolygonfence(JsonUtil jsonUtil);
    /**
     * 更新线型围栏
     * @param jsonUtil
     * @return
     */
    JsonUtil updatepolylinefence(JsonUtil jsonUtil);
    /**
     * 更新行政区划围栏
     * @param jsonUtil
     * @return
     */
    JsonUtil updatedistrictfence(JsonUtil jsonUtil);
    /**
     * 删除围栏
     * @param jsonUtil
     * @return
     */
    JsonUtil delete(JsonUtil jsonUtil);
    /**
     * 查询围栏信息
     * @param jsonUtil
     * @return
     */
    JsonUtil list(JsonUtil jsonUtil);
    ///////////////////////////////地理围栏报警///////////////////////////////////////////////////////////
    /**
     * 查询监控对象在围栏内或外
     * @param jsonUtil
     * @return
     */
    JsonUtil querystatus(JsonUtil jsonUtil);
    /**
     * 查询某监控对象的历史报警信息
     * @param jsonUtil
     * @return
     */
    JsonUtil historyalarm(JsonUtil jsonUtil);
    /**
     * 批量查询某 service 下时间段以内的所有报警信息，用于服务端报警同步
     * @param jsonUtil
     * @return
     */
    JsonUtil batchhistoryalarm(JsonUtil jsonUtil);
}
