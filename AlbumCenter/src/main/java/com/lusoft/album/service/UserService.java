package com.lusoft.album.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lusoft.album.bean.User;
import com.lusoft.album.dao.UserMapper;

@Service
public class UserService {

	@Autowired
	private UserMapper userMapper;
	
    public int insertUser(User user) {
    	return userMapper.insertUser(user);
    }
	
	public User queryUserByName(String name) {
		return userMapper.queryUserByName(name);
	}
	
}
