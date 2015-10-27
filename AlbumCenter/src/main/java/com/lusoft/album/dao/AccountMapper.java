package com.lusoft.album.dao;

import org.springframework.stereotype.Repository;

import com.lusoft.album.bean.Account;

@Repository
public interface AccountMapper {

	public Account queryAccount(Long userId);
	
	public int openAccount(Account account);
	
	public int recharge(Account account);
	
	public int deduct(Account account);
	
}
