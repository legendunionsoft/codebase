package com.lusoft.album.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lusoft.album.bean.Transaction;
import com.lusoft.album.dao.TransactionMapper;

@Service
public class TransactionService {

	@Autowired
	private TransactionMapper transactionMapper;
	
	public List<Transaction> listTransaction(Map param, int pageNo, int pageSize) {
		//获取第1页，5条内容
//		PageHelper.startPage(2, 5);
		List<Transaction> list = transactionMapper.listTransaction(param, new RowBounds(pageNo, pageSize));
//		PageInfo page = new PageInfo(list);
		return list;
	}
	
}
