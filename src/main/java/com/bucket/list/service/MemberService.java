package com.bucket.list.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bucket.list.dao.MemberDao;

@Service
public class MemberService {
	@Autowired
	private MemberDao dao;
	
	public int join(HashMap<String,String> map) {
		return dao.join(map);
	}
	
	public String login(HashMap<String,String> map) {
		return dao.login(map);
	}
}
