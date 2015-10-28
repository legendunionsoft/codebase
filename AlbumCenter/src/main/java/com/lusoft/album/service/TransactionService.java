package com.lusoft.album.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lusoft.album.bean.Transaction;
import com.lusoft.album.dao.TransactionMapper;

@Service
public class TransactionService {

	@Autowired
	private TransactionMapper transactionMapper;
	
	public List<Transaction> listTransaction(Map param) {
		return transactionMapper.listTransaction(param);
	}
	
}
