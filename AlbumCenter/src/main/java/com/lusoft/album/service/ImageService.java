package com.lusoft.album.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lusoft.album.bean.Image;
import com.lusoft.album.dao.ImageMapper;

@Service
public class ImageService {

	@Autowired
	private ImageMapper imageMapper;
	
    public Long insertImage(Image image) {
    	return imageMapper.insertImage(image);
    }
	
	public void updateImageStatus(Map param) {
		imageMapper.updateImageStatus(param);
	}
	
}
