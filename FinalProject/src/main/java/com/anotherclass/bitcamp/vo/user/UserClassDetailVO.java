package com.anotherclass.bitcamp.vo.user;

public class UserClassDetailVO {
	/*카테고리테이블*/
	private int category_no;
	private String category_name;
	private int  category1_no;
	private int category_sort;
	/*클래스테이블*/
	private int class_no;
	private String class_name;
	private String class_info;
	private int class_price;	
	private String member_id;	
	private String class_thumb;
	private String class_content;
	private String class_img_file;
	private String class_post_no;
	private String class_addr1;
	private String class_addr2;
	private int max_headcount;	
	private int request;
	private int progress;
	private String class_writedate;
	private String class_tag;
	/*멤버테이블*/
	private String member_pw;
	private String member_name;
	private String member_tel;
	private String member_email;
	private String post_no;
	private String addr1;
	private String addr2;
	private String nick;
	private String member_img;
	//가입일
	//탈퇴일
	
	/*크리에이터 테이블*/
	private String pay_company;
	private String account;
	private String creator_content;
	private String creator_content_img;
	private String creator_img;
	
	/*클래스옵션테이블*/
	private int class_option_no;
	private String start_date;
	private String end_date;
	private int all_headcount; //수강신청인원
	private int cancel;
	private String cancel_reason;
	
	/*클래스좋아요 테이블*/
	private int  class_like_no;
	private int class_count;//좋아요갯수
	
	
	
	public int getCategory_no() {
		return category_no;
	}
	public void setCategory_no(int category_no) {
		this.category_no = category_no;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public int getCategory1_no() {
		return category1_no;
	}
	public void setCategory1_no(int category1_no) {
		this.category1_no = category1_no;
	}
	public int getCategory_sort() {
		return category_sort;
	}
	public void setCategory_sort(int category_sort) {
		this.category_sort = category_sort;
	}
	public int getClass_no() {
		return class_no;
	}
	public void setClass_no(int class_no) {
		this.class_no = class_no;
	}
	public String getClass_name() {
		return class_name;
	}
	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	public String getClass_info() {
		return class_info;
	}
	public void setClass_info(String class_info) {
		this.class_info = class_info;
	}
	public int getClass_price() {
		return class_price;
	}
	public void setClass_price(int class_price) {
		this.class_price = class_price;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getClass_thumb() {
		return class_thumb;
	}
	public void setClass_thumb(String class_thumb) {
		this.class_thumb = class_thumb;
	}
	public String getClass_content() {
		return class_content;
	}
	public void setClass_content(String class_content) {
		this.class_content = class_content;
	}
	public String getClass_img_file() {
		return class_img_file;
	}
	public void setClass_img_file(String class_img_file) {
		this.class_img_file = class_img_file;
	}
	public String getClass_post_no() {
		return class_post_no;
	}
	public void setClass_post_no(String class_post_no) {
		this.class_post_no = class_post_no;
	}
	public String getClass_addr1() {
		return class_addr1;
	}
	public void setClass_addr1(String class_addr1) {
		this.class_addr1 = class_addr1;
	}
	public String getClass_addr2() {
		return class_addr2;
	}
	public void setClass_addr2(String class_addr2) {
		this.class_addr2 = class_addr2;
	}
	public int getMax_headcount() {
		return max_headcount;
	}
	public void setMax_headcount(int max_headcount) {
		this.max_headcount = max_headcount;
	}
	public int getRequest() {
		return request;
	}
	public void setRequest(int request) {
		this.request = request;
	}
	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
	public String getClass_writedate() {
		return class_writedate;
	}
	public void setClass_writedate(String class_writedate) {
		this.class_writedate = class_writedate;
	}
	public String getClass_tag() {
		return class_tag;
	}
	public void setClass_tag(String class_tag) {
		this.class_tag = class_tag;
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
	public String getPost_no() {
		return post_no;
	}
	public void setPost_no(String post_no) {
		this.post_no = post_no;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getMember_img() {
		return member_img;
	}
	public void setMember_img(String member_img) {
		this.member_img = member_img;
	}
	public String getPay_company() {
		return pay_company;
	}
	public void setPay_company(String pay_company) {
		this.pay_company = pay_company;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getCreator_content() {
		return creator_content;
	}
	public void setCreator_content(String creator_content) {
		this.creator_content = creator_content;
	}
	public String getCreator_content_img() {
		return creator_content_img;
	}
	public void setCreator_content_img(String creator_content_img) {
		this.creator_content_img = creator_content_img;
	}
	public String getCreator_img() {
		return creator_img;
	}
	public void setCreator_img(String creator_img) {
		this.creator_img = creator_img;
	}
	public int getClass_option_no() {
		return class_option_no;
	}
	public void setClass_option_no(int class_option_no) {
		this.class_option_no = class_option_no;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public int getAll_headcount() {
		return all_headcount;
	}
	public void setAll_headcount(int all_headcount) {
		this.all_headcount = all_headcount;
	}
	public int getCancel() {
		return cancel;
	}
	public void setCancel(int cancel) {
		this.cancel = cancel;
	}
	public String getCancel_reason() {
		return cancel_reason;
	}
	public void setCancel_reason(String cancel_reason) {
		this.cancel_reason = cancel_reason;
	}
	public int getClass_like_no() {
		return class_like_no;
	}
	public void setClass_like_no(int class_like_no) {
		this.class_like_no = class_like_no;
	}
	public int getClass_count() {
		return class_count;
	}
	public void setClass_count(int class_count) {
		this.class_count = class_count;
	}
	
	
	
	
}
