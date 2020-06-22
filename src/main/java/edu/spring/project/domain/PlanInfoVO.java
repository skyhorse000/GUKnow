package edu.spring.project.domain;

public class PlanInfoVO {
	private int pn_srl;
	private String user_id;
	private int city_count;
	private String default_ci;
	private String start_day;
	private int tour_day;
	private String pn_title;
	private String default_city_name;
	private int pn_complete;
	
	
	public int getPn_complete() {
		return pn_complete;
	}
	public void setPn_complete(int pn_complete) {
		this.pn_complete = pn_complete;
	}
	
	public int getPn_srl() {
		return pn_srl;
	}
	public void setPn_srl(int pn_srl) {
		this.pn_srl = pn_srl;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getCity_count() {
		return city_count;
	}
	public void setCity_count(int city_count) {
		this.city_count = city_count;
	}
	public String getDefault_ci() {
		return default_ci;
	}
	public void setDefault_ci(String default_ci) {
		this.default_ci = default_ci;
	}
	public String getStart_day() {
		return start_day;
	}
	public void setStart_day(String start_day) {
		this.start_day = start_day;
	}
	public int getTour_day() {
		return tour_day;
	}
	public void setTour_day(int tour_day) {
		this.tour_day = tour_day;
	}
	public String getPn_title() {
		return pn_title;
	}
	public void setPn_title(String pn_title) {
		this.pn_title = pn_title;
	}
	public String getDefault_city_name() {
		return default_city_name;
	}
	public void setDefault_city_name(String default_city_name) {
		this.default_city_name = default_city_name;
	}
	
	
	
}
