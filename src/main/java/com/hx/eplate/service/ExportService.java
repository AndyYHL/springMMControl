package com.hx.eplate.service;

import com.hx.eplate.util.json.JsonUtil;

/**
 * 批量导出轨迹
 * Created by Administrator on 2017-09-21.
 */
public interface ExportService {
    /**
     * 创建一个任务，该任务完成后将返回文件下载地址，供开发者下载
     * @param jsonUtil
     * @return
     */
    JsonUtil createjob(JsonUtil jsonUtil);
    /**
     * 删除任务
     * @param jsonUtil
     * @return
     */
    JsonUtil deletejob(JsonUtil jsonUtil);
    /**
     * 查询任务，将返回任务状态和文件下载地址
     * @param jsonUtil
     * @return
     */
    JsonUtil getjob(JsonUtil jsonUtil);
}
