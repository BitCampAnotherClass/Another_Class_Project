package com.anotherclass.bitcamp.vo.user;

public class tempMemberVO {// 세션에 아이디 심어두고 백작업 우선적으로 하기위해 만든 멤버브이오..-지수-
	private String member_id;
	private String member_pw;
	private String member_name;
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	
	
}
