package com.hx.eplate.controller.api.v1;

import com.hx.eplate.dao.read.UserInfoReadDao;
import com.hx.eplate.state.ClientApiFinal;
import com.hx.eplate.state.FinalJson;
import com.hx.eplate.util.SessionUtil;
import com.hx.eplate.util.json.JsonUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Map;

/**
 * Created by Administrator on 2017-10-20.
 */
@Controller
@RequestMapping(value = ClientApiFinal.version+"login/")
public class LoginController {
    @Resource
    UserInfoReadDao userInfoReadDao;

    private SessionUtil<Map> sessionUtil = new SessionUtil<>();

    @RequestMapping(value = "userLogin",method = RequestMethod.POST,produces = {"application/json;charset=UTF-8"})
    public @ResponseBody JsonUtil userLogin(@RequestBody JsonUtil jsonUtil){
        //String username = request.getParameter("loginEmail");
        //String upwd = request.getParameter("loginPass");
        Map uMap = (Map) jsonUtil.getData();
        if(uMap.get("username") == null){
            jsonUtil.getInfo().setStatus(FinalJson.STATUS_ACCEPTED);
            jsonUtil.getInfo().setMessage("用户名不能为空");
            return jsonUtil;
        }
        if(uMap.get("upwd") == null){
            jsonUtil.getInfo().setStatus(FinalJson.STATUS_ACCEPTED);
            jsonUtil.getInfo().setMessage("用户密码不能为空");
            return jsonUtil;
        }
        Map map = userInfoReadDao.uLogin(uMap);
        if(map != null){
            sessionUtil.login(map);
            jsonUtil.getInfo().setStatus(FinalJson.STATUS_OK);
            jsonUtil.getInfo().setMessage("登录成功");
            return jsonUtil;
        }
        jsonUtil.getInfo().setStatus(FinalJson.STATUS_NOTFOUND);
        jsonUtil.getInfo().setMessage("用户名或密码错误");
        return jsonUtil;
    }

    @RequestMapping(value = "userLoginOut",method = RequestMethod.POST,produces = {"application/json;charset=UTF-8"})
    public @ResponseBody JsonUtil userLoginOut(@RequestBody JsonUtil jsonUtil){
        sessionUtil.logout();
        jsonUtil.getInfo().setStatus(FinalJson.STATUS_OK);
        jsonUtil.getInfo().setMessage("退出成功");
        return jsonUtil;
    }
}
