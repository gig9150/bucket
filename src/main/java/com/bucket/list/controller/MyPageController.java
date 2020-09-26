package com.bucket.list.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {
	
	@RequestMapping("/mypage/bucket")
	public String gobucket() {
		return ".mypage.bucket";
	}
	
	
}
