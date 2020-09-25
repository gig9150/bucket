package com.bucket.list.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String NAMESPACE = "com.bucket.mapper";
	
	public int join(HashMap<String,String> map) {
		return sqlSession.insert(NAMESPACE+".join",map);
	}
	
	public String login(HashMap<String,String> map) {
		return sqlSession.selectOne(NAMESPACE+".login",map);
	}
	
}
