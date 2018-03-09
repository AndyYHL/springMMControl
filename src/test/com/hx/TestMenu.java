package com.hx;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Maps;
import com.hx.eplate.dao.write.UserInfoWriteDao;
import com.hx.eplate.entity.MapData;
import com.hx.eplate.state.FinalJson;
import com.hx.eplate.util.GPSUtil;
import com.hx.eplate.util.OkHttpUtil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.Map;

/**
 * Created by Administrator on 2017/4/2.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring-context.xml"})
public class TestMenu {
    private static Logger logger = LogManager.getLogger(TestMenu.class);
    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Resource
    UserInfoWriteDao WMapDataMapper;
    @Test
    public void test1_MenuTree() {
        //收费站|180200    立交桥|190306
        int page = 1;
        int types = 180200;
        String keywords = "收费站";
        for (;page<100;page++){
            try{
                String url = "http://restapi.amap.com/v3/place/text?key="+ FinalJson.GD_AMAP_KEY+"&keywords="+keywords+"&types="+types+"&city=成都市&children=1&offset=5000&page="+page+"&extensions=base";
                OkHttpUtil okHttpUtil = new OkHttpUtil();
                String resultSet = okHttpUtil.SyncGet(url,null);
                Map<String,Object> map =JSON.parseObject(resultSet,Map.class);
                if(map.get("status").equals("1")){
                    JSONArray jsonArray = (JSONArray) map.get("pois");
                    if (jsonArray.size() > 0){
                        for (int i=0;i<jsonArray.size();i++){
                            JSONObject jsonObject = jsonArray.getJSONObject(i);
                            String [] location = jsonObject.get("location").toString().split(",");
                            double lat = Double.parseDouble(location[0]);
                            double lon = Double.parseDouble(location[1]);
                            double [] d = GPSUtil.gaoDeToBaidu(lat,lon);

                            MapData mapData = new MapData();
                            mapData.setId(jsonObject.get("id").toString());
                            mapData.setName(jsonObject.get("name").toString());
                            mapData.setType(jsonObject.get("type").toString());
                            mapData.setTypecode(jsonObject.get("typecode").toString());
                            mapData.setAddress(jsonObject.get("address").toString());
                            mapData.setPname(jsonObject.get("pname").toString());
                            mapData.setCityname(jsonObject.get("cityname").toString());
                            mapData.setAdname(jsonObject.get("adname").toString());
                            mapData.setGlon(location[0]);
                            mapData.setGlat(location[1]);
                            mapData.setBlon(String.valueOf(d[0]));
                            mapData.setBlat(String.valueOf(d[1]));
                            if (keywords=="立交桥"){
                                mapData.setTypeid(1);
                            }else{
                                mapData.setTypeid(2);
                            }
                            Map mapd = Maps.newHashMap();
                            WMapDataMapper.save(mapd);
                            Thread.sleep(1000);
                            System.out.println("保存成功！"+d[0]+"----"+d[1]+":"+jsonObject.get("name")+"---"+jsonObject.get("type")+"高德的经纬度："+location[0]+","+location[1]+"百度的经纬度："+d[0]+","+d[1]);
                        }
                    }else{
                        break;
                    }
                }
                //System.out.println(resultSet);
            }catch (Exception e){
                System.out.println(e.getMessage());
            }
        }
        System.out.println("---------------------------------获取完成---------------------------------");
    }


    @Test
    public  void ss(){
        String aa ="%5B%7B%22name%22%3A%22%E5%8F%B8%E6%B3%95SF%22%2C%22pname%22%3A%22%E5%9B%9B%E5%B7%9D%E7%9C%81%22%2C%22cityname%22%3A%22%E6%88%90%E9%83%BD%E5%B8%82%22%2C%22adname%22%3A%22%E9%9D%92%E7%BE%8A%E5%8C%BA%22%2C%22lng%22%3A%22104.080223%22%2C%22lat%22%3A%2230.678006%22%7D%5D=";

    }
}
