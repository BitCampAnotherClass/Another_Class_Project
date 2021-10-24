package com.anotherclass.bitcamp.vo.creator;

public class CreatorCAskPagingVO {
	   private int totalRecord; //총레코드수
	   private int nowPage=1; //현재페이지
	   private int totalPage; //총페이지수
	   private int pageRecord=15;
	   
	   //페이지
	   private int onePageNumCount=5; //한페이지당레코드수	  
	   private int startPage=1;
	   
	   private int nowRecordMul = nowPage*pageRecord;	   
	   
	   //검색어
	   private String searchKeyword;
	   private String searchkey;
	   private String searchWord;
	
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getPageRecord() {
		return pageRecord;
	}
	public void setPageRecord(int pageRecord) {
		this.pageRecord = pageRecord;
	}
	public int getOnePageNumCount() {
		return onePageNumCount;
	}
	public void setOnePageNumCount(int onePageNumCount) {
		this.onePageNumCount = onePageNumCount;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getNowRecordMul() {
		return nowRecordMul;
	}
	public void setNowRecordMul(int nowRecordMul) {
		this.nowRecordMul = nowRecordMul;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public String getSearchkey() {
		return searchkey;
	}
	public void setSearchkey(String searchkey) {
		this.searchkey = searchkey;
	}
	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
	   
	   
	
	

}
