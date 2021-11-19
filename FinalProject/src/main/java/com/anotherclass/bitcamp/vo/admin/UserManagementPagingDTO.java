package com.anotherclass.bitcamp.vo.admin;

public class UserManagementPagingDTO {
	
	private int pageNumber; // 현재페이지;
	private int pageLimit; // 페이지 출력 제한 갯수;
	private int startNumber; // 페이징 시작 번호;
	private int endNumber; // 페이징 끝 번호;
	
	private int block;// 현재 블록 -- 현재 버튼목록이 몇번째인가;
	private int blockLimit; // 블록 제한 -- 버튼 출력 갯수 제한
	private int blockStartNumber; // 블록 시작숫자
	private int blockEndNumber; // 블록 끝 숫자
	private int prevButton; // 페이징 버튼 뒤로가기;
	private int nextButton; // 페이징 버튼 다음으로;
	private int blockMax; // 블럭 최대 갯수
	
	private String searchWord; // 검색어
	private String searchStartDate; // 가입날짜 검색 
	private String searchEndDate; // 가입날짜 검색

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public int getPageLimit() {
		return pageLimit;
	}

	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}

	public int getStartNumber() {
		return startNumber;
	}

	public void setStartNumber(int startNumber) {
		this.startNumber = startNumber;
	}

	public int getEndNumber() {
		return endNumber;
	}

	public void setEndNumber(int endNumber) {
		this.endNumber = endNumber;
	}

	public int getBlock() {
		return block;
	}

	public void setBlock(int block) {
		this.block = block;
	}

	public int getBlockLimit() {
		return blockLimit;
	}

	public void setBlockLimit(int blockLimit) {
		this.blockLimit = blockLimit;
	}

	public int getBlockStartNumber() {
		return blockStartNumber;
	}

	public void setBlockStartNumber(int blockStartNumber) {
		this.blockStartNumber = blockStartNumber;
	}

	public int getBlockEndNumber() {
		return blockEndNumber;
	}

	public void setBlockEndNumber(int blockEndNumber) {
		this.blockEndNumber = blockEndNumber;
	}

	public int getPrevButton() {
		return prevButton;
	}

	public void setPrevButton(int prevButton) {
		this.prevButton = prevButton;
	}

	public int getNextButton() {
		return nextButton;
	}

	public void setNextButton(int nextButton) {
		this.nextButton = nextButton;
	}
	
	public int getBlockMax() {
		return blockMax;
	}

	public void setBlockMax(int blockMax) {
		this.blockMax = blockMax;
	}

	public String getSearchWord() {
		return searchWord;
	}

	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}

	public String getSearchStartDate() {
		return searchStartDate;
	}

	public void setSearchStartDate(String searchStartDate) {
		this.searchStartDate = searchStartDate;
	}

	public String getSearchEndDate() {
		return searchEndDate;
	}

	public void setSearchEndDate(String searchEndDate) {
		this.searchEndDate = searchEndDate;
	}
	
	
	
}
