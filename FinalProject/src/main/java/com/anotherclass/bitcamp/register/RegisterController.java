package com.anotherclass.bitcamp.register;

import java.security.PrivateKey;

import javax.inject.Inject;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.anotherclass.bitcamp.service.register.RegisterService;

@Controller
public class RegisterController {
	private HashingSeting hashing = new HashingSeting();
	
	@Inject
	RegisterService registerService;
	
	
	@RequestMapping("/register")
	public String register() {
		return "register/userRegister";
	}
	
	@RequestMapping("/registerCreator")
	public String registerCreator() {
		return "register/creatorRegister";
	}
	
	@RequestMapping(value="/register/check", method = RequestMethod.POST)
	@ResponseBody
	public String idCheck(RegisterVO vo, String id) {
		vo.setMember_id(id);
		registerService.logIdCheck(vo);
		String cnt =vo.getAdditional_information_one();
		return cnt;
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
	
	// 회원 로그인폼
	@RequestMapping(value = "/login")
	public String login(HttpServletRequest request) {
		Rsa rsa = new Rsa();
		rsa.initRsa(request);
		return "register/loginFormUser";
	}
	
	// 강사 로그인폼
	@RequestMapping(value = "/creatorLogin")
	public String creatorlogin(HttpServletRequest request) {
		Rsa rsa = new Rsa();
		rsa.initRsa(request);
		return "register/loginFormCreator";
	}
	
	
	// 로그인 시 복호화 -- 회원/강사
	public void rsaLog(RegisterVO vo, HttpSession session) throws Exception{
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
		String hashingPw = hashing.setEncryption(memberPw, memberId);
		
		vo.setMember_id(memberId);
		vo.setMember_pw(hashingPw);
	}
	
	// 회원 로그인 실행
	@RequestMapping(value = "/loginOk", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView loginOk(RegisterVO vo, HttpSession session, HttpServletRequest request) throws Exception{
		String snsType = request.getParameter("sns_type");
		if(snsType==null || snsType.equals("")) { // 일반 로그인 시
			// 복호화
			rsaLog(vo, session);			
		} else {
			vo.setSns_type(snsType); // sns로그인 타입 저장 // ex) kakao
		}
		
		vo.setLogType(1);
		ModelAndView mav = new ModelAndView();
		RegisterVO logvo = new RegisterVO();
		logvo = registerService.loginUser(vo);
		if(logvo!=null) {
			if(logvo.getMember_img()==null || logvo.getMember_img().equals("")) {
				logvo.setMember_img("/img/etc/basic_profile.png");				
			}
			session.setAttribute("userId", logvo.getMember_id());
			session.setAttribute("userNick", logvo.getNick());
			session.setAttribute("userImg", logvo.getMember_img());
			session.setAttribute("userLog", 1);
			
			mav.setViewName("redirect:/");			
		} else {
			if(vo.getSns_type()!=null && !vo.getSns_type().equals("")) { // sns 로그인 - 기존 계정 없을 시
				// 계정 db 저장하기 ㅡㅡㅡㅡㅡㅡㅡㅡㅡ
				mav.setViewName("/register/registerResult");
			} else {
				mav.addObject("logType", "회원");
				mav.setViewName("/register/loginResult");
			}
		}
		return mav;
	}
	
	
	// 강사 로그인 실행
	@RequestMapping(value = "/creatorLoginOk", method = RequestMethod.POST)
	public ModelAndView creatorLoginOk(RegisterVO vo, HttpSession session) throws Exception{
		if(vo.getSns_type()==null || vo.getSns_type().equals("")) { // 일반 로그인 시
			// 복호화
			rsaLog(vo, session);			
		}
	
		vo.setLogType(2);
		ModelAndView mav = new ModelAndView();
		RegisterVO logvo = new RegisterVO();
		logvo = registerService.loginUser(vo);
		if(logvo!=null) {
			if(logvo.getMember_img()==null || logvo.getMember_img().equals("")) {
				logvo.setMember_img("/img/etc/basic_profile.png");				
			}
			session.setAttribute("creatorId", logvo.getMember_id());
			session.setAttribute("creatorNick", logvo.getNick());
			session.setAttribute("creatorImg", logvo.getMember_img());
			session.setAttribute("creatorLog", 1);
			
			mav.setViewName("redirect:/creator/");			
		} else {
			mav.setViewName("/register/loginResult");
		}
		return mav;
	}
	
	// 카카오 로그인 ----------- 수정할 것
	@RequestMapping(value = "/kakaoLoginOk")
	public String kakaoLoginOk(HttpSession session) {
		
		session.setAttribute("userLog", 1);
		return "redirect:/";
	}
	
	//// 콜백 ------- 수정할 것
	@RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(HttpServletRequest request) {
		
		return "register/loginForm";
	}
	
	
	// 로그아웃
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
}




















