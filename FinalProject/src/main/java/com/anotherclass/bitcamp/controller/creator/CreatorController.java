package com.anotherclass.bitcamp.controller.creator;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.creator.MakeClassApplyService;
import com.anotherclass.bitcamp.vo.creator.CreatorClassCategoryVO;
import com.anotherclass.bitcamp.vo.creator.CreatorMakeClassDateTimeVO;
import com.anotherclass.bitcamp.vo.creator.CreatorMakeClassVO;

@Controller
@RequestMapping("/creator")
public class CreatorController {
	@Inject
	MakeClassApplyService makeClassApplyService;
	
	@RequestMapping("/")
	public String creator() {
		return "creator/creator";
	}
	@RequestMapping("/historyback")
	public String historyBack() {
		return "creator/historyback";
	}
	
	@RequestMapping("/makeClass")
	public ModelAndView makeClass() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("cate", makeClassApplyService.makeClassCategoryL());
		mav.setViewName("/creator/makeClass");
		return mav;
	}
	
	
	@RequestMapping(value="/makeClassOk", method=RequestMethod.POST)
	public ModelAndView creatClass(CreatorMakeClassVO vo,CreatorMakeClassDateTimeVO vo2, HttpServletRequest req) {
		
		String path = req.getSession().getServletContext().getRealPath("/upload");
		System.out.println(path);
		//파일업로드를 위해서는  HttpSerHttpServletRequest 객체를 이용하여 MultipartHttpSerHttpServletRequest 객체를 구하여야한다.
		MultipartHttpServletRequest mr = (MultipartHttpServletRequest)req;
		
		//mr에서 MultipartFile객체를 얻어와야 한다.
		List<MultipartFile> files = mr.getFiles("filename");
		List<String> fileList = new ArrayList<String>();//업로드된 파일명들을 저장할 곳
		//업로드한 파일이 있으면
		if(files!=null) {//ddd
			//업로드 구현
			for(int i=0; i<files.size(); i++) { //CCC
				//업로드 할 multipartFile 객체를 얻어오기
				MultipartFile mf = files.get(i);
				
				//원래 파일명
				String fname = mf.getOriginalFilename(); //cccc.jpg
				if(fname!=null && !fname.equals("")) {
				//같은파일명이 서버에 있는 지 확인
				File fileObj = new File(path, fname);	
				File newFileObj= new File(path, fname);
				if(fileObj.exists()) {//파일존재여부확인 --> 있으면 true, 업으면 false//BBBB
					//파일명 변경
					for(int num=1; ; num++) {//1,2,3,4.....
						int point = fname.lastIndexOf(".");
						String orgFileName = fname.substring(0, point);//파일명
						String orgFileExt = fname.substring(point+1);//확장자
						String newFileName = orgFileName+"("+num+")."+orgFileExt; // cccc(1).jpg
						newFileObj = new File(path, newFileName);
						if(!newFileObj.exists()) {
							break;
						}
					}//for AAAA
					
					
				}//if BBBB
				try {////업로드실행
					mf.transferTo(newFileObj);
				}catch(Exception e) {}
					fileList.add(newFileObj.getName());
			}
		}//for문 CCCC
		
	}//ddd
		System.out.println(path+fileList);
		ModelAndView mav = new ModelAndView();
		vo.setMember_id("test100");///////////////////////아이디 세션
		vo.setClass_thumb(path+fileList);
		int result = makeClassApplyService.makeClassApply(vo);
		
		String vo2GetStartDate = vo2.getStart_date();
		String vo2GetEndDate = vo2.getEnd_date();
		
		String[] startTimeResult = vo2GetStartDate.split(",");
		String[] endTimeResult = vo2GetEndDate.split(",");		
		System.out.println(startTimeResult.length);
		
		int result_date=0;
			for(int i=0; i < startTimeResult.length; i++) {
				
			vo2.setStart_date(startTimeResult[i]);
			vo2.setEnd_date(endTimeResult[i]);
			vo2.setClass_no(vo.getClass_no()); 
			vo2.setAll_headcount(vo.getMax_headcount());
			result_date = makeClassApplyService.makeClassApplyDateTime(vo2);
			
			};
		
		if(result == 1 && result_date ==1) {
			System.out.println("등록성공");
			mav.setViewName("/creator/makeClassOk");
		}
		return mav;
	}
	   
	@RequestMapping("/modifyClass")
	public String modifyClass() {
	    return "creator/modifyClass";
	}
	   
	@RequestMapping("/creatorChannel")
	public String creatorChannel() {
	    return "creator/creatorChannel";
	}
	
	@RequestMapping("/classMain")
	public String classMain() {
	    return "user/classDetailPage/classMain";
	}
	
	// 클래스 통계
	@RequestMapping(value = "/incomeChart")
	public String incomeChart() {
		return "creator/income/income_chart";
	}
	@RequestMapping(value="makeClass/ajaxList")
	@ResponseBody
	public List<CreatorClassCategoryVO> ajaxList(int no) {
		List<CreatorClassCategoryVO> result = makeClassApplyService.makeClassCategoryS(no);
		
		System.out.println("카테고리 디비");
		
		return result;
	}
}
