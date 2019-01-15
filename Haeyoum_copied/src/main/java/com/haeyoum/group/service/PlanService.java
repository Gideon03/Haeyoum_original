package com.haeyoum.group.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haeyoum.group.model.Plan;
import com.haeyoum.group.repository.PlanDAO;



@Service
public class PlanService {
	
	@Autowired
	private PlanDAO dao;
	
	public int insert(Plan plan) {
		return this.dao.insert(plan);
	} 
	
	public List<Plan> select(String yearMonth, int group_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("strToday", yearMonth);
		map.put("group_id", group_id);
		return dao.select(map);
	}
	
	public int getRecordCount(HashMap<String, Object> map) {
		return this.dao.getRecordCount(map);
	}
	public int update(Plan plan) {
		return this.dao.update(plan);
	}
	public Plan selectupdate(HashMap<String, Object> map) {
		return dao.selectupdate(map);
	}
	public int plandelete(HashMap<String, Object> map) {
		return dao.plandelete(map);
	}
	
}