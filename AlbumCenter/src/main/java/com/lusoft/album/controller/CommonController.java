package com.lusoft.album.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path="/common")
public class CommonController {

	@RequestMapping(path="/go/{name}")
	public String gotoJsp(@PathVariable String name){
		String jsp = name.replaceAll("-", "/");
		return jsp;
	}
}
