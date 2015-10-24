package com.lusoft.album.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.lusoft.album.bean.Image;

@Repository
public interface ImageMapper {
	
	public Long insertImage(Image image);
	
	public void updateImageStatus(Map param);

}
