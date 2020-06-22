package edu.spring.project.domain;

import java.util.List;

public class getCityVO {
	private String name;
	private List<GetCityListVO> items;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public List<GetCityListVO> getItems() {
		return items;
	}
	public void setItems(List<GetCityListVO> items) {
		this.items = items;
	}
	
	
	
}
