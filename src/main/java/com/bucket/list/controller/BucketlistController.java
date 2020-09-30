package com.bucket.list.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.bucket.list.service.BucketlistService;
import com.bucket.list.vo.BucketVo;

@Controller
public class BucketlistController {
	
	@Autowired
	private BucketlistService service;
	
	@RequestMapping("/write/bucket")
	public String goBucket() {
		return ".write.bucket";
	}
	
	//db저장
	@RequestMapping("/write/goBucket")
	public String bucket(HttpSession session,MultipartFile file,Model model,String title,
			String content,String[] tag) {
		String uploadPath = session.getServletContext().getRealPath("/resources/upload");
		String orgfileName = file.getOriginalFilename();
//		중복방지하기위해 랜덤숫자 생성 
		String savefileName = UUID.randomUUID()+"_"+orgfileName;
		System.out.println(UUID.randomUUID());
		try {
			InputStream fis = file.getInputStream();
			FileOutputStream fos = 
					new FileOutputStream(uploadPath + "\\" + savefileName);
			FileCopyUtils.copy(fis, fos);
			fis.close();
			fos.close();
			BucketVo vo = new BucketVo(0,(String)session.getAttribute("id"),title,content,orgfileName,savefileName);
			service.insert(vo,tag);
			return ".main";
		}catch(IOException ie) {
			System.out.println(ie.getMessage());
			return ".error";
		}catch(Exception e) {
			System.out.println(e.getMessage());
			return ".error";
		}
	}
	
	
}
