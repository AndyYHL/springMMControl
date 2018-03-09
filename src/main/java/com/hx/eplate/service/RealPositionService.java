package com.hx.eplate.service;

import com.hx.eplate.util.json.JsonUtil;

/**
 * 实时位置搜索
 * Created by Administrator on 2017-09-21.
 */
public interface RealPositionService {

    /**
     * 根据关键字搜索entity
     * @param jsonUtil
     * @return
     */
    JsonUtil search(JsonUtil jsonUtil);

    /**
     * 根据矩形范围搜索entity
     * @param jsonUtil
     * @return
     */
    JsonUtil boundsearch(JsonUtil jsonUtil);
    /**
     * 周边搜索，根据圆心和半径搜索 entity
     * @param jsonUtil
     * @return
     */
    JsonUtil aroundsearch(JsonUtil jsonUtil);
    /**
     * 行政区搜索，根据行政区名称搜索行政区内的entity，支持中国范围内的国家、省、市、区/县
     * @param jsonUtil
     * @return
     */
    JsonUtil districtsearch(JsonUtil jsonUtil);
}
