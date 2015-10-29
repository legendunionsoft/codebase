package com.lusoft.album.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lusoft.album.bean.Account;
import com.lusoft.album.bean.Transaction;
import com.lusoft.album.bean.User;
import com.lusoft.album.constant.Constants;
import com.lusoft.album.service.AccountService;
import com.lusoft.album.service.TransactionService;
import com.lusoft.album.service.UserService;
import com.lusoft.sdk.common.JsonResponse;
import com.lusoft.sdk.util.DateUtil;
import com.lusoft.sdk.util.MD5Util;

@Controller
@RequestMapping(path="/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private TransactionService transactionService;
	
	@RequestMapping(path="/register")
	public ModelAndView register(User user, HttpServletRequest request){
		ModelAndView view = null;
		try {
			view = new ModelAndView("redirect:/index.jsp");
			user.setCreateTime(new Date());
			String salt = DateUtil.format(user.getCreateTime()) + "@lusoft@" + user.getName();
			user.setPassword(MD5Util.encodePassword(user.getPassword(), salt));
			userService.insertUser(user);
			request.getSession(true).setAttribute(Constants.SessionConstant.USER_KEY, user);
		} catch (Exception e) {
			view = new ModelAndView("redirect:/common/go/user!register");
		}
		return view;
	}
	
	@RequestMapping(path="/login")
	public ModelAndView login(User user, HttpServletRequest request){
		ModelAndView view = null;
		try {
			User dbUser = userService.queryUserByName(user.getName());
			String salt = DateUtil.format(dbUser.getCreateTime()) + "@lusoft@" + user.getName();
			if(MD5Util.isPasswordValid(dbUser.getPassword(), user.getPassword(), salt)) {
				userService.login(dbUser);
				request.getSession(true).setAttribute(Constants.SessionConstant.USER_KEY, dbUser);
				String backUrl = request.getParameter("backUrl");
				if(backUrl != null) {
					view = new ModelAndView(backUrl);
				} else {
					view = new ModelAndView("redirect:/index.jsp");
				}
			} else {
				view = new ModelAndView("forward:/common/go/user!login");
				view.addObject("errorTip", "用户名或密码错误！");
			}
		} catch (Exception e) {
			view = new ModelAndView("forward:/common/go/user!login");
			view.addObject("errorTip", e.getMessage());
		}
		return view;
	}
	
	@RequestMapping(path="/center")
	public ModelAndView center(HttpServletRequest request){
		ModelAndView view = null;
		User user = (User)request.getSession(false).getAttribute(Constants.SessionConstant.USER_KEY);
		if(user != null) {
			view = new ModelAndView("user/center");
			view.addObject("user", user);
			Account account = accountService.queryAccount(user.getId());
			view.addObject("account", account);
		} else {
			view = new ModelAndView("forward:/common/go/user!login");
			view.addObject("backUrl", "redirect:/user/center");
		}
		return view;
	}
	
	@RequestMapping(path="/checkName")
	@ResponseBody
	public JsonResponse checkName(@RequestParam String name){
		JsonResponse response = null;
		try{
			User user = userService.queryUserByName(name);
			Boolean flag = Boolean.TRUE;
			if(user != null) {
				flag = Boolean.FALSE;
			}
			response = new JsonResponse(flag);
		} catch (Exception e) {
			response = new JsonResponse(e.getMessage());
		}
		return response;
	}
	
	@RequestMapping(path="/recentTrans")
	public ModelAndView recentTrans(HttpServletRequest request){
		ModelAndView view = null;
		User user = (User)request.getSession(false).getAttribute(Constants.SessionConstant.USER_KEY);
		if(user != null) {
			view = new ModelAndView("user/recentTrans");
			Map param = new HashMap();
			param.put("userId", user.getId());
			List<Transaction> transList = transactionService.listTransaction(param);
			view.addObject("transList", transList);
		} else {
			view = new ModelAndView("forward:/common/go/user!login");
			view.addObject("backUrl", "redirect:/user/recentTrans");
		}
		return view;
	}
	
	@RequestMapping(path="/recharge")
	public ModelAndView recharge(HttpServletRequest request, Transaction tran){
		ModelAndView view = null;
		User user = (User)request.getSession(false).getAttribute(Constants.SessionConstant.USER_KEY);
		if(user != null) {
			view = new ModelAndView("redirect:/user/center");
			userService.recharge(user, tran);
		} else {
			view = new ModelAndView("forward:/common/go/user!login");
			view.addObject("backUrl", "redirect:/common/go/user!recharge");
		}
		return view;
	}
	
}
