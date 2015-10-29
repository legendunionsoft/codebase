package com.lusoft.album.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.lusoft.album.bean.Account;
import com.lusoft.album.bean.Transaction;
import com.lusoft.album.bean.User;
import com.lusoft.album.constant.Constants;
import com.lusoft.album.dao.AccountMapper;
import com.lusoft.album.dao.TransactionMapper;
import com.lusoft.album.dao.UserMapper;

@Service
public class UserService {

	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private AccountMapper accountMapper;
	
	@Autowired
	private TransactionMapper transactionMapper;
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class, RuntimeException.class})
    public int insertUser(User user) {
    	 userMapper.insertUser(user);
    	 Account account = new Account();
    	 account.setUserId(user.getId());
    	 account.setBalance(10);
    	 accountMapper.openAccount(account);
    	 Transaction transaction = new Transaction();
    	 transaction.setUserId(user.getId());
    	 transaction.setCreateTime(new Date());
    	 transaction.setType(Constants.TransType.SYSTEM);
    	 transaction.setSubjectId(0L);
    	 transaction.setSubjectType(Constants.SubjectType.REGISTER);
    	 transaction.setSubjectName("新用户注册赠送10");
    	 transaction.setStatus(Constants.TransStatus.SUCCESS);
    	 transaction.setAmount(10);
    	 transactionMapper.createTransaction(transaction);
    	 return 1;
    }
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class, RuntimeException.class})
	public void login(User user){
		 Account account = new Account();
	   	 account.setUserId(user.getId());
	   	 account.setBalance(5);
	   	 accountMapper.recharge(account);
	   	 Transaction transaction = new Transaction();
	   	 transaction.setUserId(user.getId());
	   	 transaction.setCreateTime(new Date());
	   	 transaction.setType(Constants.TransType.SYSTEM);
	   	 transaction.setSubjectId(0L);
	   	 transaction.setSubjectType(Constants.SubjectType.LOGIN);
	   	 transaction.setSubjectName("每日登录赠送5");
	   	 transaction.setStatus(Constants.TransStatus.SUCCESS);
	   	 transaction.setAmount(5);
	   	 transactionMapper.createTransaction(transaction);
	}
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class, RuntimeException.class})
	public void recharge(User user, Transaction tran){
		tran.setUserId(user.getId());
		tran.setType(Constants.TransType.RE_CHARGE);
		tran.setSubjectId(0L);
		tran.setSubjectType(Constants.SubjectType.RE_CHARGE);
		tran.setSubjectName("充值" + tran.getAmount());
		tran.setCreateTime(new Date());
		tran.setStatus(Constants.TransStatus.SUCCESS);
		transactionMapper.createTransaction(tran);
		Account account = new Account();
	   	 account.setUserId(user.getId());
	   	 account.setBalance(tran.getAmount());
	   	 accountMapper.recharge(account);
	}
	
	public User queryUserByName(String name) {
		return userMapper.queryUserByName(name);
	}
	
}
