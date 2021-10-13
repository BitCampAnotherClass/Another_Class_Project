package com.anotherclass.bitcamp.controller.fileupload;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.vo.user.ClassVO;


@Controller
public class FileController {


	@Autowired ServletContext servletContext ;
		
	@RequestMapping(value="/fileUpload" , produces="application/json")
	@ResponseBody
	public ModelAndView fileUploadTest(ClassVO vo,HttpServletRequest req) {
		String path = "https://sung3moon.synology.me:49583/";
		MultipartHttpServletRequest mr =(MultipartHttpServletRequest)req;
		List<MultipartFile> files = mr.getFiles("filename");
		List<String> fileList = new ArrayList<String>();
		if(files!=null) {
			//업로드 구현
			for(int i=0; i<files.size(); i++) {
				
				MultipartFile mf = files.get(i);
				
				String fname = mf.getOriginalFilename();
				if(fname!=null && !fname.equals("")) {
					//같은 파일명이 서버에 있는지 확인
					File fileObj = new File(path, fname);
					File newFileObj= new File(path, fname);
					if(fileObj.exists()) {// 파일존재 여부 확인하기 있으면 true, 없으면 false
						for(int num=1; ; num++) {
							//파일명 변경
							int point = fname.lastIndexOf(".");
							String orgFileName = fname.substring(0,point);//파일명
							String orgFileExt =  fname.substring(point+1);//확장자
							String newFileName = orgFileName+"("+num+")."+orgFileExt;
							newFileObj = new File(path,newFileName);
							if(!newFileObj.exists()) {
								break;
							}
						}//for_end
					}
					try {
						//업로드실행
						mf.transferTo(newFileObj);
						fileList.add(newFileObj.getName());
					}catch(Exception e) {
						fileList.add(newFileObj.getName());
					}
				}
			}
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo",vo);
		return mav;
	}
}
