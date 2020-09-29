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
	public String bucket(HttpSession session,MultipartFile file,Model model) {
		String uploadPath = session.getServletContext().getRealPath("/resources/upload");
		System.out.println(uploadPath);
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
			model.addAttribute("file",savefileName);
//			service.insert(new FileinfoVo(0,writer,title,content,orgfileName,savefileName,fileSize));
			return "bucket";
		}catch(IOException ie) {
			System.out.println(ie.getMessage());
			return "bucket";
		}
	}
	
	
}
