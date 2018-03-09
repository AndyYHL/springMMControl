package com.hx.eplate.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2018-03-07.
 */
public class ExcelUtil {
    public static void main(String[] args) throws IOException {
        //导出
        String sheetName="图书列表";
        String titleName="我的图书";
        String[] headers = { "图书id", "图书名称", "图书价格", "入库时间" };
        List<String> dataSet = new ArrayList<>();
        String resultUrl="E:\\book.xls";
        String pattern="yyyy-MM-dd";
        ExportExcel.exportExcel(sheetName, titleName, headers, dataSet, resultUrl, pattern);
        //导入
        String originUrl="E:\\book.xls";
        int startRow=2;
        int endRow=0;
        List<String> bookList = (List<String>) ImportExcel.importExcel(originUrl, startRow, endRow, String.class);
    }
}
