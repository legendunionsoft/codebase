package com.lusoft.album.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.lusoft.album.bean.AlbumBasicInfo;
import com.lusoft.album.bean.AlbumContent;

@Repository
public interface AlbumMapper {

	public List<AlbumBasicInfo> listAlbum(Map params);
	
	public Long insertAlbumBasicInfo(AlbumBasicInfo album);
	
	public int setAlbumCoverInfo(AlbumBasicInfo album);
	
	public int deleteAlbum(Long id);
	
	public void insertAlbumContent(AlbumContent content);
	
	public List<AlbumContent> listContent(Map param);
	
}
