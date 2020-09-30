package com.bucket.list.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bucket.list.dao.BucketlistDao;
import com.bucket.list.vo.BucketVo;

@Service
public class BucketlistService {

	@Autowired
	private BucketlistDao dao;
	
	@Transactional
	public int insert(BucketVo vo,String[] tagName) {
		dao.insert(vo);
		int num = dao.getBucketNum();
		HashMap<Object, Object> map = new HashMap<Object,Object>();
		map.put("bucket_id", num);
		for(int i=0;i<tagName.length;i++) {
			map.put("tag_name", tagName[i]);
			dao.tagInsert(map);
		}
		return 0;
	}
}
