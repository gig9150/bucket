package com.bucket.list.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bucket.list.service.MemberService;
import com.bucket.list.vo.BucketVo;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@RequestMapping("/member/login")
	public String gologin() {
		return ".member.login"; 
	}
	
//	로그인 기능
	@RequestMapping("/member/loginOk")
	public String gologinOk(String idCheckbox,String id,String pwd,HttpSession session,Model model,HttpServletResponse response) {
		HashMap<String ,String> map = new HashMap<String,String>();
		map.put("id",id);
		map.put("pwd",pwd);
		String member_id = service.login(map);
		if(member_id == null) {
			model.addAttribute("msg", "fail");
			return ".member.login";
		}else {
			session.setAttribute("id", member_id);
//			if(idCheckbox!=null) {
//				Cookie cookie = new Cookie("loginCookie",member_id);
//				cookie.setPath("/");
//				cookie.setMaxAge(60*60*24*7);
//				Cookie cookie1 = new Cookie("checkBox",idCheckbox);
//				cookie1.setPath("/");
//				cookie1.setMaxAge(60*60*24*7);
//				response.addCookie(cookie);
//				response.addCookie(cookie1);
//			}
			return "redirect:/";
		}
	}
	
	@RequestMapping("/member/join")
	public String goJoin() {
		return ".member.join";
	}
	
//	회원가입 기능
	@RequestMapping("/member/JoinOk")
	public String goJoinOk(String id,String pwd,String email,String phone) {
		HashMap<String,String> map =  new HashMap<String,String>();
		map.put("id", id);
		map.put("pwd", pwd);
		map.put("email", email);
		map.put("phone", phone);
		int n = service.join(map);
		if(n>0) {
			return ".member.joinOk";
		}else {
			return ".member.join";
		}
	}
	
//	로그아웃
	@RequestMapping("/member/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
