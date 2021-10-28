package com.anotherclass.bitcamp.controller.admin;



import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.anotherclass.bitcamp.register.HashingSeting;
import com.anotherclass.bitcamp.register.RegisterVO;
import com.anotherclass.bitcamp.service.register.RegisterService;

@Controller
@RequestMapping("/admin")
public class idmake {
	
	private HashingSeting hashing = new HashingSeting();
	
	@Inject
	RegisterService registerService;
	
	@RequestMapping("/makeIdcheck")
	public String testing(RegisterVO vo)throws Exception  {
		String idText="";
		int check = 0;
		for (int i = 0; i < 50; i++) { 
			if(i % 10 == 0) { 
				System.err.println(); 
			} 
			idText=text()+number();
			System.err.println(idText);
			vo.setMember_pw(idText);
			vo.setMember_id(idText);
			vo.setMember_name(idText);
			vo.setMember_tel("010"+"-"+num2()+"-"+num3());
			vo.setMember_email(idText+"@naver.com");
			vo.setNick(idText);
			vo.setMember_pw(hashing.setEncryption(idText,idText));
			//check = registerService.userAccountJoin(vo);
			//check = registerService.creatorAccountJoin(vo);
			System.out.println("----------------------");
			System.out.println(vo.getMember_pw());
			System.out.println(vo.getMember_id());
			System.out.println(vo.getMember_name());
			System.out.println(vo.getMember_tel());
			System.out.println(vo.getMember_email());
			System.out.println(vo.getNick());
			System.out.println("----------------------");
			System.out.println("업로드중--->"+check);
		}
		System.out.println();
		
		return idText;
	}
	
	public static String text() {
		String text =""; 
		String ran = "abcdefghijklmnopqrstuvwxyz";
		for(int i = 0; i < 6; i++) { 
			text += ran.charAt((int)(Math.random() * ran.length())); 
		} 
		return text;
	}
	
	
	public static String num2() {
		String text = ""; 
		String ran = "123456789";
		for(int i = 0; i < 4; i++) { 
			text += ran.charAt((int)(Math.random() * ran.length())); 
		} 
		return text;
	}
	
	public static String num3() {
		String text = ""; 
		String ran = "0123456789";
		for(int i = 0; i < 4; i++) { 
			text += ran.charAt((int)(Math.random() * ran.length())); 
		} 
		return text;
	}
	
	public static String number() {
		String number = (int)(Math.random() * 999)+1 +""; 
		return number;
	}
	
}
