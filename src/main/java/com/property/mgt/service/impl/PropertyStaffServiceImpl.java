package com.property.mgt.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.property.mgt.domain.Client;
import com.property.mgt.domain.Contact;
import com.property.mgt.domain.Owner;
import com.property.mgt.domain.Person;
import com.property.mgt.domain.PersonOwner;
import com.property.mgt.domain.PropertyStaff;
import com.property.mgt.domain.Staff;
import com.property.mgt.repository.PropertyStaffRepository;
import com.property.mgt.repository.StaffRepository;
import com.property.mgt.repository.StaffRepository;
import com.property.mgt.service.PropertyStaffService;
import com.property.mgt.service.StaffService;
import com.property.mgt.service.StaffService;

@Service
@Transactional
public class PropertyStaffServiceImpl implements PropertyStaffService {
	
	@Autowired
	PropertyStaffRepository propertyStaffRepository;

	@Override
	public List<PropertyStaff> findAll() {
		return (List<PropertyStaff>)propertyStaffRepository.findAll();
	}
	

	
	@Override
	public void save(PropertyStaff propertyStaff) {
		propertyStaffRepository.save(propertyStaff);
	}


	@Override
	public void delete(PropertyStaff propertyStaff) {
		
		propertyStaffRepository.delete(propertyStaff);
	}



	@Override
	public PropertyStaff findOne(long id) {
		
		return propertyStaffRepository.findOne(id);
	}



	
  
}
