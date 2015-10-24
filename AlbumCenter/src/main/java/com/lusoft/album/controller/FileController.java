package com.lusoft.album.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.lusoft.album.bean.Image;
import com.lusoft.album.service.ImageService;
import com.lusoft.sdk.common.JsonResponse;

@Controller
@RequestMapping(path="/file")
public class FileController {
	
	private Logger logger = LogManager.getLogger(FileController.class);
	
	@Autowired
	private ImageService imageService;

	@RequestMapping(path="/upload")
	@ResponseBody
	public JsonResponse upload(@RequestParam(value="file", required=false)MultipartFile file, HttpServletRequest request){
		try {
			String rootPath = request.getSession().getServletContext().getRealPath("/");
			String url = "upload/" + System.currentTimeMillis();
			String fileName = file.getOriginalFilename();
			long fileSize = file.getSize();
			FileOutputStream fos = new FileOutputStream(rootPath + url);
			InputStream is = file.getInputStream();
			byte[] buffer = new byte[1024];
			int i = 0;
			while((i=is.read(buffer)) > 0) {
				fos.write(buffer, 0, i);
			} 
			fos.flush();
			is.close();
			fos.close();
			Image image = new Image();
			image.setFileName(fileName);
			image.setFileSize(fileSize);
			image.setUrl(url);
			image.setStatus("临时");
			image.setCreateTime(new Date());
			imageService.insertImage(image);
			Map result = new HashMap();
			result.put("fileId", image.getId());
			result.put("fileUrl", url);
			return new JsonResponse(result);
		} catch (Throwable e) {
			logger.error(e);
			return new JsonResponse(e.getMessage());
		}
	}
	
}
