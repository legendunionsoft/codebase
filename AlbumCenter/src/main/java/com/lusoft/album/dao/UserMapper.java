package com.lusoft.album.dao;

import org.springframework.stereotype.Repository;

import com.lusoft.album.bean.User;

@Repository
public interface UserMapper {

	public int insertUser(User user);
	
	public User queryUserByName(String name);
	
}
