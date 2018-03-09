package com.hx.eplate.service;

import com.hx.eplate.util.json.JsonUtil;

/**
 * Created by Administrator on 2017-09-22.
 */
public interface AMapService {
    /**
     * 添加围栏 请用POST 传输
     * @param jsonUtil
     * @return
     */
    JsonUtil addFence(JsonUtil jsonUtil);

    /**
     * 查询围栏，使用get传输
     * @param jsonUtil
     * @return
     */
    JsonUtil getFence(JsonUtil jsonUtil);

    /**
     * 更新围栏 使用PATCH
     * @param jsonUtil
     * @return
     */
    JsonUtil uptFence(JsonUtil jsonUtil);


}
