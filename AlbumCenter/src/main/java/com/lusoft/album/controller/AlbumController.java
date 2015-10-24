package com.lusoft.album.controller;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lusoft.album.bean.AlbumBasicInfo;
import com.lusoft.album.service.AlbumService;

@Controller
@RequestMapping(path="/album")
public class AlbumController {

	private Logger logger = LogManager.getLogger(AlbumController.class);
	
	@Autowired
	private AlbumService albumService;
	
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
		ModelAndView view = new ModelAndView("album/add_cover");
		view.addObject("albumId", album.getId());
		return view;
	}
	
	@RequestMapping(path="/setCoverInfo")
	public ModelAndView setCoverInfo(AlbumBasicInfo album){
		albumService.setAlbumCoverInfo(album);
		ModelAndView view = new ModelAndView("album/add_content");
		view.addObject("albumId", album.getId());
		return view;
	}
	
}
