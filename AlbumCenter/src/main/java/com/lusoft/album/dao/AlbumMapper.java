package com.lusoft.album.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.lusoft.album.bean.Album;

@Repository
public interface AlbumMapper {

	public List<Album> listAlbum(Map params);
	
	public Long insertAlbum(Album album);
	
	public int updateAlbum(Album album);
	
	public int deleteAlbum(Long id);
	
}
