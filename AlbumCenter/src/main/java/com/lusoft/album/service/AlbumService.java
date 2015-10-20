package com.lusoft.album.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lusoft.album.bean.Album;
import com.lusoft.album.dao.AlbumMapper;

@Service
public class AlbumService {

	@Autowired
	private AlbumMapper albumMapper;
	
	public List<Album> listAlbum(Map params){
		return albumMapper.listAlbum(params);
	}
	
	public Long insertAlbum(Album album) {
		return albumMapper.insertAlbum(album);
	}
	
	public int updateAlbum(Album album) {
		return albumMapper.updateAlbum(album);
	}
	
	public int deleteAlbum(Long id) {
		return albumMapper.deleteAlbum(id);
	}
	
}
