package com.bucket.list.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bucket.list.dao.BucketlistDao;

@Service
public class BucketlistService {

	@Autowired
	private BucketlistDao dao;
	
}
