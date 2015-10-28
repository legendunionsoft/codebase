package com.lusoft.album.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.lusoft.album.bean.Transaction;

@Repository
public interface TransactionMapper {

	public int createTransaction(Transaction tran);
	
	public List<Transaction> listTransaction(Map param);
	
}
