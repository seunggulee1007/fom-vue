package net.smilegate.common.vo;

public class Criteria {
	
	private int page; //현재 페이지
	private int perPageNum; //페이지당 보여질 게시물의 수
	
	public Criteria() {}
	
	public Criteria(int page, int perPageNum) {
		this.page = page;
		this.perPageNum = perPageNum;
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPerPageNum() {
		return perPageNum;
	}
	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}

	@Override
	public String toString() {
		return " {\"page\":\"" + page + "\", \"perPageNum\":\"" + perPageNum + "\"} ";
	}
	
}
