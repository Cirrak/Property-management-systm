package com.property.mgt.service;

import java.util.List;

import com.property.mgt.domain.Client;
import com.property.mgt.domain.PersonClient;
import com.property.mgt.domain.PropertyStaff;
import com.property.mgt.domain.Staff;

import com.property.mgt.domain.Staff;

public interface PropertyStaffService {

	
	List<PropertyStaff> findAll();	
    void save(PropertyStaff propertyStaff);    
    PropertyStaff findOne(long id);
    void delete(PropertyStaff propertyStaff);
    
   
	 

}
