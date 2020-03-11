package com.websystique.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.websystique.springmvc.dao.OfficeDAO;
import com.websystique.springmvc.model.Office;

@Service("officeService")
@Transactional
public class OfficeServiceImpl implements OfficeService {
	
	@Autowired
	private OfficeDAO dao;

	public Office findById(int id) {
		return dao.findById(id);		
	};
	
	public void save(Office office) {
		dao.save(office);
	};
	
	public void deleteById(int id) {
		dao.deleteById(id);
	};
	
	public List<Office> showAllOffices(){
		return dao.showAllOffices();
	};
	
}
