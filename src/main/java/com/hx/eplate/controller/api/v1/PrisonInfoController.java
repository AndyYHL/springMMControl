package com.hx.eplate.controller.api.v1;

import com.alibaba.fastjson.JSON;
import com.google.common.collect.Maps;
import com.hx.eplate.dao.read.PrisonInfoReadDao;
import com.hx.eplate.dao.read.UserInfoReadDao;
import com.hx.eplate.dao.write.PrisonInfoWriteDao;
import com.hx.eplate.dao.write.UserInfoWriteDao;
import com.hx.eplate.state.ClientApiFinal;
import com.hx.eplate.state.FinalJson;
import com.hx.eplate.util.json.JsonUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017-11-15.
 */
@Controller
@RequestMapping(value = ClientApiFinal.version+"prison/")
public class PrisonInfoController {
    @Resource
    private PrisonInfoReadDao prisonInfoReadDao;
    @Resource
    private PrisonInfoWriteDao prisonInfoWriteDao;

    @RequestMapping(value="search")
    public @ResponseBody JsonUtil search(@RequestBody JsonUtil jsonUtil) throws Exception {
        Map map = JSON.parseObject(JSON.toJSONString(jsonUtil),Map.class);
        List<Map> rfidList = prisonInfoReadDao.findLimit(map);
        int count = prisonInfoReadDao.findCount(map);
        jsonUtil.setData(rfidList);
        jsonUtil.getExtlimit().setCount(count);
        jsonUtil.getInfo().setStatus(FinalJson.STATUS_OK);
        jsonUtil.getInfo().setMessage("请求成功");
        return jsonUtil;
    }

    @RequestMapping(value="save")
    public @ResponseBody JsonUtil save(@RequestBody JsonUtil jsonUtil) throws Exception {
        Map map = JSON.parseObject(JSON.toJSONString(jsonUtil),Map.class);
        Map data = (Map) jsonUtil.getData();
        if(data.keySet().contains("id")){
            prisonInfoWriteDao.upt(map);
        }else{
            prisonInfoWriteDao.save(map);
        }
        jsonUtil.getInfo().setStatus(FinalJson.STATUS_OK);
        jsonUtil.getInfo().setMessage("成功");
        return jsonUtil;
    }

    @RequestMapping(value="del")
    public @ResponseBody JsonUtil del(@RequestBody JsonUtil jsonUtil) throws Exception {
        Map map = JSON.parseObject(JSON.toJSONString(jsonUtil),Map.class);
        ((Map)map.get("data")).put("isdelete",1);
        prisonInfoWriteDao.upt(map);
        jsonUtil.getInfo().setStatus(FinalJson.STATUS_OK);
        jsonUtil.getInfo().setMessage("成功");
        return jsonUtil;
    }
}
