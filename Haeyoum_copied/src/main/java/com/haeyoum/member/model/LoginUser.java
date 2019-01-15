package com.haeyoum.member.model;

public class LoginUser {

	private String member_id;
	private String member_image;
	private String member_name;
	private String member_nickname;
	private boolean Login = false;
	private int group_id = 0;

	public LoginUser() {
		super();
	}

	public LoginUser(String member_id, String member_image, String member_name, String member_nickname, boolean login) {
		super();
		this.member_id = member_id;
		this.member_image = member_image;
		this.member_name = member_name;
		this.member_nickname = member_nickname;
		Login = login;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_image() {
		return member_image;
	}

	public void setMember_image(String member_image) {
		this.member_image = member_image;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_nickname() {
		return member_nickname;
	}

	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}

	public boolean isLogin() {
		return Login;
	}

	public void setLogin(boolean login) {
		Login = login;
	}
	
	public int getGroup_id() {
		return group_id;
	}

	public void setGroup_id(int group_id) {
		this.group_id = group_id;
	}
				

}
