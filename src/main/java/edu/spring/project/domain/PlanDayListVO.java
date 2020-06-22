package edu.spring.project.domain;

public class PlanDayListVO {
	private int pn_srl; // 페이지 관리 번호
	private int set_day;
	private int ci_srl;
	private String city_name;	
	private String city_date; // 월, 일
	private int day_week;	
	private int year; // 년도
	private String city_lat;
	private String city_lng;
	
	
	
	
	public int getPn_srl() {
		return pn_srl;
	}
	public void setPn_srl(int pn_srl) {
		this.pn_srl = pn_srl;
	}
	public int getSet_day() {
		return set_day;
	}
	public void setSet_day(int set_day) {
		this.set_day = set_day;
	}
	public int getCi_srl() {
		return ci_srl;
	}
	public void setCi_srl(int ci_srl) {
		this.ci_srl = ci_srl;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public String getCity_date() {
		return city_date;
	}
	public void setCity_date(String city_date) {
		this.city_date = city_date;
	}
	public int getDay_week() {
		return day_week;
	}
	public void setDay_week(int day_week) {
		this.day_week = day_week;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getCity_lat() {
		return city_lat;
	}
	public void setCity_lat(String city_lat) {
		this.city_lat = city_lat;
	}
	public String getCity_lng() {
		return city_lng;
	}
	public void setCity_lng(String city_lng) {
		this.city_lng = city_lng;
	}
	
	 
	

	
	
}
