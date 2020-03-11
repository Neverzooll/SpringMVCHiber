package com.websystique.springmvc.service;

import java.util.List;

import com.websystique.springmvc.model.Office;

public interface OfficeService {

	Office findById(int id);
	
	void save(Office office);
	
	void deleteById(int id);
	
	List<Office> showAllOffices();
	
}
