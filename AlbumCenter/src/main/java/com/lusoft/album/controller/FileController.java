package com.lusoft.album.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(path="/file")
public class FileController {

	@RequestMapping(path="/upload")
	@ResponseBody
	public Map upload(@RequestParam(value="file", required=false)MultipartFile file){
		System.out.println(file);
		Map result = new HashMap();
		result.put("fileId", "007");
		return result;
	}
	
}
