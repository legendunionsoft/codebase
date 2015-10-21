package com.lusoft.album.controller;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lusoft.album.bean.Album;
import com.lusoft.album.service.AlbumService;

@Controller
@RequestMapping(path="/album")
public class AlbumController {

	private Logger logger = LogManager.getLogger(AlbumController.class);
	
	@Autowired
	private AlbumService albumService;
	
	@RequestMapping(path="/main")
	public ModelAndView toMain(){
		List<Album> albumList = albumService.listAlbum(null);
		ModelAndView view = new ModelAndView("album/main");
		view.addObject("albumList", albumList);
		return view;
	}
	
	@RequestMapping(path="/add")
	public String add(Album album){
		albumService.insertAlbum(album);
		return "album/main";
	}
	
}
