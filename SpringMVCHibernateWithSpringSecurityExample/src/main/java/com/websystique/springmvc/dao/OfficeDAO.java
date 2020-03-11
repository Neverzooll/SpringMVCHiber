package com.websystique.springmvc.dao;

import java.util.List;

import com.websystique.springmvc.model.Office;


public interface OfficeDAO {

	Office findById(int id);
	
	void save(Office office);
	
	void deleteById(int id);
	
	List<Office> showAllOffices();

}

