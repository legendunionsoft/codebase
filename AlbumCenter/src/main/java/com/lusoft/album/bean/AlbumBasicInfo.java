package com.lusoft.album.bean;

public class AlbumBasicInfo {

	private Long id;
	
	private String name;
	
	private String free;
	
	private int price;
	
	private String remark;
	
	private String coverImageUrl;
	
	private String coverImage2Url;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFree() {
		return free;
	}

	public void setFree(String free) {
		this.free = free;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getCoverImageUrl() {
		return coverImageUrl;
	}

	public void setCoverImageUrl(String coverImageUrl) {
		this.coverImageUrl = coverImageUrl;
	}

	public String getCoverImage2Url() {
		return coverImage2Url;
	}

	public void setCoverImage2Url(String coverImage2Url) {
		this.coverImage2Url = coverImage2Url;
	}
	
}
