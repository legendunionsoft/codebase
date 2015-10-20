package com.lusoft.album.bean;

public class Album {

	private Long id;
	
	/** 相册名称 **/
	private String name;
	
	/** 封面图片URL */
	private String coverImageUrl;
	
	/**  封面的内页 */
	private String insideFrontCoverImageUrl;

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

	public String getCoverImageUrl() {
		return coverImageUrl;
	}

	public void setCoverImageUrl(String coverImageUrl) {
		this.coverImageUrl = coverImageUrl;
	}

	public String getInsideFrontCoverImageUrl() {
		return insideFrontCoverImageUrl;
	}

	public void setInsideFrontCoverImageUrl(String insideFrontCoverImageUrl) {
		this.insideFrontCoverImageUrl = insideFrontCoverImageUrl;
	}
	
}
