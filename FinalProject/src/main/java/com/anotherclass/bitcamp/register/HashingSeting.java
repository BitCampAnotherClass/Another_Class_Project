package com.anotherclass.bitcamp.register;

import java.security.MessageDigest;
import java.security.SecureRandom;

public class HashingSeting {
	
	//Salt 값 생성
	String getSalt() throws Exception {
		SecureRandom scu = new SecureRandom(); // 랜덤를 대체하는 클래스 
		byte[] temp = new byte[16]; // byte 배열 크기 설정
		scu.nextBytes(temp); // 랜덤값 넣기
		return byteChange(temp);
	}
	
	//16진수(Hex) 출력용
	String byteChange(byte[] temp) {
		StringBuffer result = new StringBuffer(); 
		for(byte a : temp ) { // 16진수(Hex)로 출력하기
			result.append(String.format("%02x", a));
		}
		return result.toString(); 
	}
	
	//비밀번호와 Salt를 암호화 
	static String getHashing(String password,String salt) {
		StringBuffer result = new StringBuffer();
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256"); // SHA-256 암호화
			md.update(password.getBytes()); //password를 바이트화후 암호화
			md.update(salt.getBytes());
			byte bytes[] = md.digest(); // byte 배열에 담기
			for(byte a : bytes ) {  // 16진수(Hex)로 출력하기
				result.append(String.format("%02x", a));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result.toString();
	}
	
	String setEncryption(String pass) throws Exception {
		HashingSeting hs = new HashingSeting();
		String out = HashingSeting.getHashing(pass, hs.getSalt());
		return out;
	}
}
