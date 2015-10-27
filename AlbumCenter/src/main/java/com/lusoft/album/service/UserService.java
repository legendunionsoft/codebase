package com.lusoft.album.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lusoft.album.bean.Account;
import com.lusoft.album.bean.User;
import com.lusoft.album.dao.AccountMapper;
import com.lusoft.album.dao.UserMapper;

@Service
public class UserService {

	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private AccountMapper accountMapper;
	
    public int insertUser(User user) {
    	 userMapper.insertUser(user);
    	 Account account = new Account();
    	 account.setUserId(user.getId());
    	 account.setBalance(10);
    	 accountMapper.openAccount(account);
    	 return 1;
    }
	
	public User queryUserByName(String name) {
		return userMapper.queryUserByName(name);
	}
	
}
