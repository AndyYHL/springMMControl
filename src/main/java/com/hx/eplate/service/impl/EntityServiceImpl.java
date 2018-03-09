package com.hx.eplate.service.impl;

import com.google.common.collect.Maps;
import com.hx.eplate.service.EntityService;
import com.hx.eplate.state.BaiDuState;
import com.hx.eplate.state.FinalJson;
import com.hx.eplate.util.OkHttpUtil;
import com.hx.eplate.util.json.JsonUtil;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * 终端管理
 * Created by Administrator on 2017-09-21.
 */
@Service("entityService")
public class EntityServiceImpl implements EntityService {

    private OkHttpUtil okHttpUtil = new OkHttpUtil();
    @Override
    public JsonUtil add(JsonUtil jsonUtil) {
        Map map = Maps.newHashMap();
        map.put("service_id",BaiDuState.serivceID);
        map.put("entity_name","汽车1号");
        map.put("entity_desc","军用大货车");
        String resultSet = okHttpUtil.PostString(BaiDuState.bBaseUrl+BaiDuState.eadd,map, FinalJson.HttpMediaType.json);
        return null;
    }

    @Override
    public JsonUtil delete(JsonUtil jsonUtil) {
        return null;
    }

    @Override
    public JsonUtil update(JsonUtil jsonUtil) {
        return null;
    }

    @Override
    public JsonUtil list(JsonUtil jsonUtil) {
        return null;
    }
}
