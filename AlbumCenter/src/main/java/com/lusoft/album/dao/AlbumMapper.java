package com.lusoft.album.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.lusoft.album.bean.AlbumBasicInfo;

@Repository
public interface AlbumMapper {

	public List<AlbumBasicInfo> listAlbum(Map params);
	
	public Long insertAlbumBasicInfo(AlbumBasicInfo album);
	
	public int setAlbumCoverInfo(AlbumBasicInfo album);
	
	public int deleteAlbum(Long id);
	
}
