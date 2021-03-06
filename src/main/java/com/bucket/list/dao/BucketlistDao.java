package com.bucket.list.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bucket.list.vo.BucketVo;

@Repository
public class BucketlistDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String NAMESPACE = "com.bucket.mapper.bucket";
	
	public int insert(BucketVo vo) {
		return sqlSession.insert(NAMESPACE+".insert",vo);
	}
	
	public int tagInsert(HashMap<Object,Object> map) {
		return sqlSession.insert(NAMESPACE+".tagInsert",map);
	}
	
	public int likeInsert(HashMap<Object,Object> map) {
		return sqlSession.insert(NAMESPACE+".likeInsert",map);
	}
	
	public int getBucketNum(String savefileName) {
		return sqlSession.selectOne(NAMESPACE+".getBucketNum",savefileName);
	}
	
	public List<BucketVo> getBucket(int pageNum){
		return sqlSession.selectList(NAMESPACE+".select",pageNum);
	}
	
	
}
