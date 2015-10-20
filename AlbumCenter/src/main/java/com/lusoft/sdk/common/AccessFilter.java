package com.lusoft.sdk.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class AccessFilter implements Filter{

	private Logger logger = LogManager.getLogger(AccessFilter.class);
	
	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpServletRequest = (HttpServletRequest)request;
		logger.debug("request url->" + httpServletRequest.getRequestURL());
		try {
			chain.doFilter(request, response);
		} catch (Throwable e) {
			logger.error(e);
		}
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		
	}

}
