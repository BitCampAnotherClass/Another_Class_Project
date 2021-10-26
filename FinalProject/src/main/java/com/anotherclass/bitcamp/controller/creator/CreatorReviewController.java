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
public class CreatorReviewController {
	@Inject
	MakeClassApplyService makeClassApplyService;
	
	@RequestMapping("/review")
	public String creatorReview() {
		return "creator/creatorClassReview";
	}
	
}
