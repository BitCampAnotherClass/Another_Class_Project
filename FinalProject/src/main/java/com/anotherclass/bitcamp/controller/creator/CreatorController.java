package com.anotherclass.bitcamp.controller.creator;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/creator")
public class CreatorController {
	
	@RequestMapping("/")
	public String creator() {
		return "creator/creator";
	}
	
	@RequestMapping("/makeClass")
	public String creatClass() {
	    return "creator/makeClass";
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
	
	
	@RequestMapping(value="creatorChannel/ajaxJson", produces="application/text;charset=UTF-8")
	@ResponseBody
	public String ajaxJson() {
		int no = 1234;
		String username = "홍길동";
		String tel = "010-1234-4567";
		String addr = "서울시 마포구 백범로";
		
		//데이터를 문자열로 만든다.
		String jsonData = "{\"no\":\""+no+"\",\"username\":\""+username+"\"";
				jsonData += ",\"tel\":\""+tel+"\",\"addr\":\""+addr+"\"}";
				
		System.out.println(jsonData);
		
		return jsonData;
	}
}
