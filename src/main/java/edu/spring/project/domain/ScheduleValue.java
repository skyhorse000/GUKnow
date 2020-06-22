package edu.spring.project.domain;



public class ScheduleValue {
	private int num; 
	private String ci_lat;
	private String ci_lng;
	private String ci_name;
	private String ci_srl;
	private int is_state;
	
	public ScheduleValue() {
		
	}
	
	public ScheduleValue(int num, String ci_lat, String ci_lng, String ci_name ,String ci_srl, int is_state) {
		super();
		this.num = num;
		this.ci_lat = ci_lat;
		this.ci_lng = ci_lng;
		this.ci_srl = ci_srl;
		this.is_state = is_state;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getCi_lat() {
		return ci_lat;
	}

	public void setCi_lat(String ci_lat) {
		this.ci_lat = ci_lat;
	}

	public String getCi_lng() {
		return ci_lng;
	}

	public void setCi_lng(String ci_lng) {
		this.ci_lng = ci_lng;
	}

	public String getCi_srl() {
		return ci_srl;
	}

	public void setCi_srl(String ci_srl) {
		this.ci_srl = ci_srl;
	}

	public int getIs_state() {
		return is_state;
	}

	public void setIs_state(int is_state) {
		this.is_state = is_state;
	}

	public String getCi_name() {
		return ci_name;
	}

	public void setCi_name(String ci_name) {
		this.ci_name = ci_name;
	}
	
	
	
	
}
