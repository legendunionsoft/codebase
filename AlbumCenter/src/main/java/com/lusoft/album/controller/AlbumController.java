package com.lusoft.album.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
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
import org.springframework.web.servlet.ModelAndView;

import com.lusoft.album.bean.AlbumBasicInfo;
import com.lusoft.album.bean.AlbumContent;
import com.lusoft.album.bean.Image;
import com.lusoft.album.service.AlbumService;
import com.lusoft.album.service.ImageService;
import com.lusoft.sdk.common.JsonResponse;

@Controller
@RequestMapping(path="/album")
public class AlbumController {

	private Logger logger = LogManager.getLogger(AlbumController.class);
	
	@Autowired
	private AlbumService albumService;
	
	@Autowired
	private ImageService imageService;
	
	@RequestMapping(path="/main")
	public ModelAndView toMain(){
		ModelAndView view = new ModelAndView("album/main");
		List<AlbumBasicInfo> albumList = albumService.listAlbum(null);
		view.addObject("albumList", albumList);
		return view;
	}
	
	@RequestMapping(path="/saveBasicInfo")
	public ModelAndView saveBasicInfo(AlbumBasicInfo album){
		albumService.insertAlbumBasicInfo(album);
		ModelAndView view = new ModelAndView("redirect:/common/go/album!add_cover");
		view.addObject("albumId", album.getId());
		return view;
	}
	
	@RequestMapping(path="/setCoverInfo")
	public ModelAndView setCoverInfo(AlbumBasicInfo album){
		albumService.setAlbumCoverInfo(album);
		ModelAndView view = new ModelAndView("redirect:/common/go/album!add_content");
		view.addObject("albumId", album.getId());
		return view;
	}
	
	@RequestMapping(path="/uploadContent")
	@ResponseBody
	public JsonResponse uploadContent(@RequestParam(value="file", required=false)MultipartFile file, HttpServletRequest request){
		try {
			Long albumId = Long.valueOf(request.getParameter("albumId"));
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
			image.setStatus("使用中");
			image.setCreateTime(new Date());
			imageService.insertImage(image);
			AlbumContent content = new AlbumContent();
			content.setAlbumId(albumId);
			content.setUrl(url);
			content.setName(fileName);
			content.setCreateTime(new Date());
			albumService.insertAlbumContent(content);
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
