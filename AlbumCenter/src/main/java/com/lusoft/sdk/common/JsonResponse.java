package com.lusoft.sdk.common;

public class JsonResponse {

	private String status;
	
	private String msg;
	
	private Object data;
	
	public JsonResponse(Object data) {
		this.data = data;
		this.status = "success";
	}
	
	public JsonResponse(String msg) {
		this.status = "fail";
		this.msg = msg;
	}
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}
	
}
