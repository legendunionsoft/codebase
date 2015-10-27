package com.lusoft.album.controller;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(path="/common")
public class CommonController {

	private Logger logger = LogManager.getLogger(CommonController.class);
	
	@RequestMapping(path="/go/{name}")
	public ModelAndView gotoJsp(@PathVariable String name, HttpServletRequest request){
		String jsp = name.replaceAll("!", "/");
		ModelAndView view = new ModelAndView(jsp);
		Enumeration<String> e = request.getParameterNames();
		while(e.hasMoreElements()) {
			String key = e.nextElement();
			String value = request.getParameter(key);
			logger.debug("key->" + key + ", value->" + value);
			view.addObject(key, value);
		}
		return view;
	}
}
