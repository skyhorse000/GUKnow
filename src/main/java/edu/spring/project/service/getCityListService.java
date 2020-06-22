package edu.spring.project.service;

import java.util.List;

import edu.spring.project.domain.ScheduleValue;

// db의 city 리스트를 얻어옴
public interface getCityListService {
	List<ScheduleValue> getCityListRead();
}
