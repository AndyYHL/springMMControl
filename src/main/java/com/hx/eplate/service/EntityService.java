package com.hx.eplate.service;

import com.hx.eplate.util.json.JsonUtil;

/**
 * 终端管理
 * Created by Administrator on 2017-09-21.
 */
public interface EntityService {
    /**
     * 创建entity，并赋属性信息
     * @param jsonUtil
     * @return
     */
    JsonUtil add(JsonUtil jsonUtil);

    /**
     * 删除entity
     * @param jsonUtil
     * @return
     */
    JsonUtil delete(JsonUtil jsonUtil);

    /**
     * 更新entity属性信息
     * @param jsonUtil
     * @return
     */
    JsonUtil update(JsonUtil jsonUtil);

    /**
     * 检索符合条件的entity，返回entity属性信息和最新位置。可用于列出entity，也可用于批量查询多个entitiy的位置
     * @param jsonUtil
     * @return
     */
    JsonUtil list(JsonUtil jsonUtil);
}
