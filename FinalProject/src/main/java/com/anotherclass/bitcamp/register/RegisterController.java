package com.anotherclass.bitcamp.register;

import java.security.PrivateKey;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.register.RegisterService;

@Controller
public class RegisterController {
	
	@Inject
	RegisterService registerService;
	private HashingSeting hashing = new HashingSeting();
	
	@RequestMapping("/register")
	public String register() {
		return "register/userRegister";
	}
	
	// 유저 회원가입
	@RequestMapping(value="/userJoin",method=RequestMethod.POST)
	public ModelAndView userJoin(RegisterVO vo)throws Exception {
		ModelAndView mav = new ModelAndView();
		vo.setMember_pw(hashing.setEncryption(vo.getMember_pw(),vo.getMember_id()));
		int check = registerService.userAccountJoin(vo);
		if(check>0) {
			
		}else{
			
		}
		mav.setViewName("redirect:/");
		return mav;
	}
	
	// 강사 회원가입
	@RequestMapping(value="/creatorJoin",method=RequestMethod.POST)
	public ModelAndView creatorJoin(RegisterVO vo)throws Exception {
		ModelAndView mav = new ModelAndView();
		vo.setMember_pw(hashing.setEncryption(vo.getMember_pw(),vo.getMember_id()));
		int check = registerService.creatorAccountJoin(vo);
		if(check>0) {
			
		}else{
			
		}
		mav.setViewName("redirect:/");
		return mav;
	}
	
	
	// 로그인폼
	@RequestMapping(value = "/login")
	public String login(HttpServletRequest request) {
		Rsa rsa = new Rsa();
		rsa.initRsa(request);
		return "register/loginForm";
	}
	
	// 로그인 실행
	@RequestMapping(value = "/loginOk", method = RequestMethod.POST)
	public ModelAndView loginOk(RegisterVO vo, HttpSession session) throws Exception{
		Rsa rsa = new Rsa();
		// 로그인 전 세션에 저장된 개인키 가져오기
		PrivateKey privateKey = (PrivateKey) session.getAttribute(Rsa.RSA_WEB_KEY);
//		System.out.println("암호화id : " + vo.getMember_id());
//		System.out.println("암호화pw : " + vo.getMember_pw());
		// 복호화
		String memberId = rsa.decryptRsa(privateKey, vo.getMember_id());
		String memberPw = rsa.decryptRsa(privateKey, vo.getMember_pw());
//		System.out.println("복호화id : " + memberId);
//		System.out.println("복호화pw : " + memberPw);

		// 해싱
		String hashingPw = hashing.setEncryption(memberPw,memberId);
		
		vo.setMember_id(memberId);
		vo.setMember_pw(hashingPw);
		
		/////// 임시!!! 수정하기!!!!
		ModelAndView mav = new ModelAndView();
		RegisterVO logvo = new RegisterVO();
		logvo = registerService.loginMember(vo);
		if(logvo != null) {
			session.setAttribute("logid", logvo.getMember_id());
			session.setAttribute("logname", logvo.getMember_name());
			mav.setViewName("redirect:/");			
		} else {
			mav.setViewName("/login"); // 수정하기
		}
		return mav;
	}
}




















