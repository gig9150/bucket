package com.bucket.list.service;

import java.util.HashMap;
import java.util.List;

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
		HashMap<Object, Object> tagMap = new HashMap<Object,Object>();
		HashMap<Object, Object> likeMap = new HashMap<Object,Object>();
		tagMap.put("bucket_id", num);
		likeMap.put("bucket_id",num);
		likeMap.put("member_id",vo.getMember_id());
		if(tag != null) {
			for(int i=0;i<tag.length;i++) {
				tagMap.put("tag_name", tag[i]);
				dao.tagInsert(tagMap);
			}
		}
		dao.likeInsert(likeMap);
		return 0;
	}
	
	public List<BucketVo> getBucket(int pageNum){
		return dao.getBucket(pageNum);
	}
}
