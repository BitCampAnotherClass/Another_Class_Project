package com.anotherclass.bitcamp.register;

public class RegisterVO {
	
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_tel;
	private String member_email;
	private String creator_nick;
	private String additional_information_one;
	private String additional_information_two;
	private String member_img; // 프로필 이미지
	
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) throws Exception {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_tel() {
		return member_tel;
	}
	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getCreator_nick() {
		return creator_nick;
	}
	public void setCreator_nick(String creator_nick) {
		this.creator_nick = creator_nick;
	}
	public String getAdditional_information_one() {
		return additional_information_one;
	}
	public void setAdditional_information_one(String additional_information_one) {
		this.additional_information_one = additional_information_one;
	}
	public String getAdditional_information_two() {
		return additional_information_two;
	}
	public void setAdditional_information_two(String additional_information_two) {
		this.additional_information_two = additional_information_two;
	}
	public String getMember_img() {
		return member_img;
	}
	public void setMember_img(String member_img) {
		this.member_img = member_img;
	}
	
	
}
