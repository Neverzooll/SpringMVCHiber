package com.websystique.springmvc.dao;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Repository;
import com.websystique.springmvc.model.Office;


@Repository("officeDAO")
public class OfficeDAOImpl extends AbstractDao<Integer, Office> implements OfficeDAO {

	@Override
	public Office findById(int id) {
		Office office = getByKey(id);
		if (office != null) {
			Hibernate.initialize(office);
		}
		return office;
	}
	
	@Override
	public void save(Office office) {
		persist(office);
		
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		
	}

	@SuppressWarnings("unchecked")
	public List<Office> showAllOffices() {
		Criteria crit = createEntityCriteria();
		crit.addOrder(Order.asc("address"));
		return (List<Office>)crit.list();
	}

}
