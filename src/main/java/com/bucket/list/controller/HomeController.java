package com.bucket.list.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bucket.list.service.BucketlistService;
import com.bucket.list.vo.BucketVo;

@Controller
public class HomeController {
	
	@Autowired
	private BucketlistService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model,HttpSession session) {
		String cp=session.getServletContext().getContextPath();
		session.getServletContext().setAttribute("cp",cp);
		List<BucketVo> list = service.getBucket(0);
		model.addAttribute("list",list);
		return ".main";
	}

}
