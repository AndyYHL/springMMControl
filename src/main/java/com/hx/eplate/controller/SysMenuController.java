package com.hx.eplate.controller;

import com.hx.eplate.service.SysMenuService;
import com.hx.eplate.state.ClientApiFinal;
import com.hx.eplate.util.json.JsonUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Map;

/**
 * Created by Administrator on 2017-12-20.
 */
@Controller
@RequestMapping(value = ClientApiFinal.version+"sys/")
public class SysMenuController {
    @Resource
    private SysMenuService sysMenuService;

    @RequestMapping(value="findMenuList",method = RequestMethod.POST,produces = {"application/json;charset=UTF-8"})
    public @ResponseBody
    JsonUtil findCarList(@RequestBody JsonUtil jsonUtil) throws Exception {
        Map map = (Map) jsonUtil.getData();
        JsonUtil params = sysMenuService.getMenu(map,jsonUtil);
        return params;
    }
}
