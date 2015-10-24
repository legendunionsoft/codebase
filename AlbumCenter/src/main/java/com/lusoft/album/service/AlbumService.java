package com.lusoft.album.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lusoft.album.bean.AlbumBasicInfo;
import com.lusoft.album.dao.AlbumMapper;
import com.lusoft.album.dao.ImageMapper;

@Service
public class AlbumService {

	@Autowired
	private AlbumMapper albumMapper;
	
	@Autowired
	private ImageMapper imageMapper;
	
	public List<AlbumBasicInfo> listAlbum(Map params){
		return albumMapper.listAlbum(params);
	}
	
	public Long insertAlbumBasicInfo(AlbumBasicInfo album) {
		return albumMapper.insertAlbumBasicInfo(album);
	}
	
	public int setAlbumCoverInfo(AlbumBasicInfo album) {
		List<String> urlList = new ArrayList<String>();
		urlList.add(album.getCoverImageUrl());
		urlList.add(album.getCoverImage2Url());
		Map param = new HashMap();
		param.put("status", "使用中");
		param.put("urlList", urlList);
		imageMapper.updateImageStatus(param);
		return albumMapper.setAlbumCoverInfo(album);
	}
	
	public int deleteAlbum(Long id) {
		return albumMapper.deleteAlbum(id);
	}
	
}
