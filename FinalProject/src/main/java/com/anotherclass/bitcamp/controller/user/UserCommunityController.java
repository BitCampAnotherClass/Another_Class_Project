package com.anotherclass.bitcamp.controller.user;

import java.io.File;
import java.io.FileInputStream;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.user.UserCommunityService;
import com.anotherclass.bitcamp.vo.user.CommunityVO;

@Controller
public class UserCommunityController {
	
	@Inject
	UserCommunityService userCommunityService;
	
	
	@RequestMapping(value = "/CommunityMain")
	public ModelAndView CommunityMain(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/community/commu_main");
		
	
		try {
			String path = request.getSession().getServletContext().getRealPath("/js");
			System.out.println(path);
			File f = new File(path,"MOCK_DATA.txt");
			System.out.println(f.length());
			FileInputStream fis = new FileInputStream(f);
		
			byte[] b = new byte[(int)f.length()];
			int cnt = fis.read(b, 0, (int)f.length());
			String str = new String( b);
				System.out.println("oooooo->"+str);
			JSONParser jsonParse = new JSONParser();	
			mav.addObject("data",jsonParse.parse(str));
			System.out.println(str);
			
		}catch(Exception e) {e.printStackTrace();}
		////////////
		
		
		return mav;
	}

	@RequestMapping(value = "/CommunityContentDetail")
	public ModelAndView CommunityContentDetail(int community_no) {
		ModelAndView mav = new ModelAndView();
		
		CommunityVO vo = userCommunityService.CommuDetailAllRecord(community_no);
		
		mav.addObject("vo",vo);
		mav.setViewName("/user/community/commu_content_detail");
		return mav;
	}
	
	@RequestMapping(value = "/CommunityNewContent")
	public String CommunityNewContent() {
		
		return "/user/community/commu_new_content";
	}
}
