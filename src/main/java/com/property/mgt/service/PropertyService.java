package com.property.mgt.service;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.property.mgt.domain.Property;


public interface PropertyService {
	
	public void saveProperty(Property property);
	
	public Property findOnePropertyById(long propertyId);

	public List<Property> findAll();
	
	public void deleteProperty(Property property);
	public List<Property> findAllBuildings();
	public Property findOne(long propertyId);
}
