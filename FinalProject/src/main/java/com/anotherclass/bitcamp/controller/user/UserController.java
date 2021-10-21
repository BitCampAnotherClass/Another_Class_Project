package com.anotherclass.bitcamp.controller.user;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.creator.MakeClassApplyService;
import com.anotherclass.bitcamp.vo.creator.CreatorClassCategoryVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {
	
	@Inject
	MakeClassApplyService makeClassApplyService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();

    	mav.setViewName("/user/home");
    	return mav;
	}
	
	@RequestMapping(value = "/cateL", method = RequestMethod.GET)
	@ResponseBody
	public List<CreatorClassCategoryVO> cateL() {
    	// 대분류 카테고리 가져오기
    	List<CreatorClassCategoryVO> cateL = makeClassApplyService.makeClassCategoryL();

    	return cateL;
	}
	
	
	@RequestMapping(value = "/cateS", method = RequestMethod.GET)
	@ResponseBody
	public List<CreatorClassCategoryVO> cateS(CreatorClassCategoryVO vo) {
    	// 중분류 카테고리 가져오기
    	List<CreatorClassCategoryVO> cateS = makeClassApplyService.makeClassCategoryS(vo.getCategory1_no());

    	return cateS;
	}
	
	
	// 임시 맵핑 --------------------------
	
	@RequestMapping(value = "/mypage/review")
	public String mypageReview() {
		return "/user/mypage/myPage_review";
	}
	
	@RequestMapping(value = "/classReview")
	public String classReview() {
		return "/user/classDetailPage/test";
	}

	
	
	
	
//	@RequestMapping(value = "/classMainPage")
//	public String classMainPage() {
//		return "/user/classDetailPage/classMain";
//	}	
////	
//	@RequestMapping(value = "/homeQnA")
//	public String homeQnA() {
//		return "/user/HomeQnA/userHelper_HomeQnA_list";
//	}
	@RequestMapping(value = "/AhomeQnA")
	public String AhomeQnA() {
		return "/admin/HomeQnA/admin_HomeQnA_view";
	}
	@RequestMapping(value = "/creatorclasslist")
	public String creatorclasslist() {
		return "/creator/optionList/classList";
	}
	@RequestMapping(value = "/creatorclassoptionlist")
	public String creatorclassoptionlist() {
		return "/creator/optionList/classOptionList";
	}	
	//지수백위한임시홈
//	@RequestMapping(value = "/temporaryhome")
//	public String temporaryhome() {
//		return "/user/classDetailPage/temporaryhome";
//	}
	
	
}
