package com.bucket.list.vo;

public class BucketVo {
	private int bucket_id;
	private String member_id;
	private String title;
	private String content;
	private String ori_file;
	private String sav_file;
	private int li;
	
	public BucketVo() {}

	public BucketVo(int bucket_id, String member_id, String title, String content, String ori_file, String sav_file,
			int li) {
		super();
		this.bucket_id = bucket_id;
		this.member_id = member_id;
		this.title = title;
		this.content = content;
		this.ori_file = ori_file;
		this.sav_file = sav_file;
		this.li = li;
	}

	public int getBucket_id() {
		return bucket_id;
	}

	public void setBucket_id(int bucket_id) {
		this.bucket_id = bucket_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getOri_file() {
		return ori_file;
	}

	public void setOri_file(String ori_file) {
		this.ori_file = ori_file;
	}

	public String getSav_file() {
		return sav_file;
	}

	public void setSav_file(String sav_file) {
		this.sav_file = sav_file;
	}

	public int getLi() {
		return li;
	}

	public void setLi(int li) {
		this.li = li;
	}
	
}
