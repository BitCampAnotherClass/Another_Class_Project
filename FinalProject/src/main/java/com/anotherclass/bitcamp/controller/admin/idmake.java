package com.anotherclass.bitcamp.controller.admin;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class idmake {
	
	@RequestMapping("/makeIdcheck")
	public String testing() {
		String idText="";
		
		for (int i = 0; i < 500; i++) { 
			if(i % 10 == 0) { 
				System.err.println(); 
			} 
			idText=text()+number()+" ";
			System.err.println(idText);
		}
		
		return idText;
	}
	
	public static String text() {
		String text = ""; 
		String ran = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
		for(int i = 0; i < 6; i++) { 
			text += ran.charAt((int)(Math.random() * ran.length())); 
		} 
		return text;
	}
	
	public static String number() {
		String number = (int)(Math.random() * 999)+1 +""; 
		return number;
	}
	
}
