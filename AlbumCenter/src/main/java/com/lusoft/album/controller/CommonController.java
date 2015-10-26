package com.lusoft.album.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(path="/common")
public class CommonController {

	@RequestMapping(path="/go/{name}")
	public ModelAndView gotoJsp(@PathVariable String name, HttpServletRequest request){
		String jsp = name.replaceAll("!", "/");
		ModelAndView view = new ModelAndView(jsp);
		Map<String, Object> param = request.getParameterMap();
		view.addAllObjects(param);
		return view;
	}
}
