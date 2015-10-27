package com.lusoft.album.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lusoft.album.bean.Account;
import com.lusoft.album.dao.AccountMapper;

@Service
public class AccountService {

	@Autowired
	private AccountMapper accountMapper;
	
	public Account queryAccount(Long userId) {
		return accountMapper.queryAccount(userId);
	}
	
}
