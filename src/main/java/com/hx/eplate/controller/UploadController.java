package com.hx.eplate.controller;

import com.hx.eplate.state.ClientApiFinal;
import com.hx.eplate.state.FinalJson;
import com.hx.eplate.util.json.JsonUtil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/*主控制器接口*/
@Controller
public class UploadController {
	private static Logger log = LogManager.getLogger("UploadController");

	@RequestMapping(value = ClientApiFinal.version_upl+"info/upload",method= RequestMethod.POST)
	public @ResponseBody
    JsonUtil updateFileDoorMap(@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request){
		JsonUtil jsonUtil = new JsonUtil();
		if (file.isEmpty()) {
			jsonUtil.getInfo().setMessage("上传的文件不能为空!");
			return jsonUtil;
		}
		try {
			long startTime = System.currentTimeMillis();
			log.info("合作伙伴<门头图上传时间>：" + file.getOriginalFilename());

			String webName = request.getSession().getServletContext().getRealPath("/WEB-INF/directive/") + "fileupload";
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");
			String filename = sdf.format(new Date());
			String modelName = "partner";
			String path= webName +"/"+ filename+"/"+modelName+"/"+file.getOriginalFilename();
			File newFile = new File(path);
			newFile.mkdirs(); //创建目录
			//通过CommonsMultipartFile的方法直接写文件（注意这个时候）
			file.transferTo(newFile);

			long endTime = System.currentTimeMillis();
			log.info("合作伙伴<门头图上传时间>：" + String.valueOf(endTime - startTime) + "ms");
			path= "/directive/fileupload/" + filename+"/"+modelName+"/"+file.getOriginalFilename(); //设置返回前端的WEB路径名
			jsonUtil.getInfo().setStatus(FinalJson.STATUS_OK);
			jsonUtil.getInfo().setMessage(path);
			return jsonUtil;
		} catch (IOException e) {
			jsonUtil.getInfo().setStatus(FinalJson.STATUS_SERVERERROR);
			jsonUtil.getInfo().setMessage(e.getMessage());
			return jsonUtil;
		}
	}


	@RequestMapping(value = ClientApiFinal.version_upl+"file/upload",method= RequestMethod.POST)
	public @ResponseBody
    JsonUtil updateFile(HttpServletRequest request,
                        HttpServletResponse response, @RequestParam MultipartFile file){
		JsonUtil jsonUtil =new JsonUtil();
    	if (file.isEmpty()) {
			jsonUtil.getInfo().setStatus(FinalJson.STATUS_SERVERERROR);
			jsonUtil.getInfo().setMessage("上传的文件不能为空!");
    		return jsonUtil;
			//return JsonResultFactory.error("上传的文件不能为空!");
		}
		try {
			String modelName=request.getParameter("type");
			//String dir=request.getParameter("dir");
			//String modelName=request.getParameter("modelName");

			long startTime = System.currentTimeMillis();

			String webName = request.getSession().getServletContext().getRealPath("/WEB-INF/directive/") + "/fileupload";
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");
			String time = sdf.format(new Date());
			//String modelName = "partner";
			//后缀名
			String prefix=file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			//新文件名
			String newFileName= this.getRandomFileName()+prefix;

			String path= webName +"/"+ time+"/"+modelName+"/"+newFileName;
			File newFile = new File(path);
			newFile.mkdirs(); //创建目录
			//通过CommonsMultipartFile的方法直接写文件（注意这个时候）
			file.transferTo(newFile);

			long endTime = System.currentTimeMillis();

			path= "/directive/fileupload/" + time+"/"+modelName+"/"+newFileName; //设置返回前端的WEB路径名

			jsonUtil.getInfo().setStatus(FinalJson.STATUS_OK);
			jsonUtil.getInfo().setMessage(path);
		} catch (IOException e) {
			jsonUtil.getInfo().setStatus(FinalJson.STATUS_SERVERERROR);
			jsonUtil.getInfo().setMessage(e.getMessage());
			return jsonUtil;
		}
		return jsonUtil;
		//return null;
	}

	/**
	 * 生成随机文件名：当前年月日时分秒+五位随机数
	 *
	 * @return
	 */
	public String getRandomFileName() {

		SimpleDateFormat simpleDateFormat;

		simpleDateFormat = new SimpleDateFormat("yyyyMMdd");

		Date date = new Date();

		String str = simpleDateFormat.format(date);

		Random random = new Random();

		int rannum = (int) (random.nextDouble() * (99999 - 10000 + 1)) + 10000;// 获取5位随机数

		return str+rannum;// 当前时间
	}

//	private boolean uploadFile(HttpServletRequest request){
//		try {
//			long  startTime=System.currentTimeMillis();
//			//将当前上下文初始化给  CommonsMutipartResolver （多部分解析器）
//			CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(
//					request.getSession().getServletContext());
//			//检查form中是否有enctype="multipart/form-data"
//			if(multipartResolver.isMultipart(request))
//			{
//				//将request变成多部分request
//				MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
//				//获取multiRequest 中所有的文件名
//				Iterator iter=multiRequest.getFileNames();
//				while(iter.hasNext())
//				{
//					//一次遍历所有文件
//					MultipartFile file=multiRequest.getFile(iter.next().toString());
//					if(file!=null)
//					{
//						String path="D:/springUpload"+file.getOriginalFilename();
//						//上传
//						file.transferTo(new File(path));
//					}
//				}
//			}
//			long  endTime=System.currentTimeMillis();
//			System.out.println("方法三的运行时间："+String.valueOf(endTime-startTime)+"ms");
//		}catch (IOException e){
//			log.error(e.getMessage());
//			return false;
//		}
//		return true;
//	}
}
