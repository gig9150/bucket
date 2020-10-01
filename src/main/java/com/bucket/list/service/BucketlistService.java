package com.bucket.list.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.bucket.list.dao.BucketlistDao;
import com.bucket.list.vo.BucketVo;

@Service
public class BucketlistService {

	@Autowired
	private BucketlistDao dao;
	
	@Transactional
	public int insert(BucketVo vo,String[] tag,String savefileName) {
		dao.insert(vo);
		int num = dao.getBucketNum(savefileName);
		HashMap<Object, Object> map = new HashMap<Object,Object>();
		map.put("bucket_id", num);
		if(tag != null) {
			for(int i=0;i<tag.length;i++) {
				map.put("tag_name", tag[i]);
				dao.tagInsert(map);
			}
		}
		return 0;
	}
}
