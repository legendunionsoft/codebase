package com.lusoft.album.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lusoft.album.bean.Album;
import com.lusoft.album.service.AlbumService;

@Controller
@RequestMapping(path="/album")
public class AlbumController {

	@Autowired
	private AlbumService albumService;
	
	@RequestMapping(path="/main")
	public String toMain(){
		List<Album> albumList = albumService.listAlbum(null);
		System.out.println(albumList.size());
		return "album/main";
	}
	
}
