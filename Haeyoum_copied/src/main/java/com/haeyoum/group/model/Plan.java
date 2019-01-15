package com.haeyoum.group.model;

import java.util.Date;

public class Plan {
	private int group_id;
	private int sort_id;
	private int con_id;
	private String plan_name;
	private String plan_text;
	private Date plan_st_date;
	private Date plan_st_time;
	private int plan_end_date;
	private Date plan_end_time;
	private String plan_yearMonth;
	private int plan_day;
	private String plan_writer;
	private Date plan_regdate;
	private Date plan_today;

	public Plan() {
	}
	
	public String getPlan_yearMonth() {
		return plan_yearMonth;
	}
	public void setPlan_yearMonth(String plan_yearMonth) {
		this.plan_yearMonth = plan_yearMonth;
	}
	public int getPlan_day() {
		return plan_day;
	}
	public void setPlan_day(int plan_day) {
		this.plan_day = plan_day;
	}
	public Date getPlan_today() {
		return plan_today;
	}
	public void setPlan_today(Date plan_today) {
		this.plan_today = plan_today;
	}
	public Date getPlan_st_date() {
		return plan_st_date;
	}
	public void setPlan_st_date(Date plan_st_date) {
		this.plan_st_date = plan_st_date;
	}
	public Date getPlan_st_time() {
		return plan_st_time;
	}
	public void setPlan_st_time(Date plan_st_time) {
		this.plan_st_time = plan_st_time;
	}
	public int getPlan_end_date() {
		return plan_end_date;
	}
	public void setPlan_end_date(int plan_end_date) {
		this.plan_end_date = plan_end_date;
	}
	public Date getPlan_end_time() {
		return plan_end_time;
	}
	public void setPlan_end_time(Date plan_end_time) {
		this.plan_end_time = plan_end_time;
	}
	public int getGroup_id() {
		return group_id;
	}
	public void setGroup_id(int group_id) {
		this.group_id = group_id;
	}
	public int getSort_id() {
		return sort_id;
	}
	public void setSort_id(int sort_id) {
		this.sort_id = sort_id;
	}
	public int getCon_id() {
		return con_id;
	}
	public void setCon_id(int con_id) {
		this.con_id = con_id;
	}
	public String getPlan_name() {
		return plan_name;
	}
	public void setPlan_name(String plan_name) {
		this.plan_name = plan_name;
	}
	public String getPlan_text() {
		return plan_text;
	}
	public void setPlan_text(String plan_text) {
		this.plan_text = plan_text;
	}
	public String getPlan_writer() {
		return plan_writer;
	}
	public void setPlan_writer(String plan_writer) {
		this.plan_writer = plan_writer;
	}
	public Date getPlan_regdate() {
		return plan_regdate;
	}
	public void setPlan_regdate(Date plan_regdate) {
		this.plan_regdate = plan_regdate;
	}
	
}

