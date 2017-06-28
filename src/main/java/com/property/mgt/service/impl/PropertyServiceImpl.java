package com.property.mgt.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.property.mgt.domain.Building;
import com.property.mgt.domain.Property;

import com.property.mgt.repository.PropertyRepository;

import com.property.mgt.service.PropertyService;

@Service
@Transactional
public class PropertyServiceImpl implements PropertyService {

	@Autowired
	PropertyRepository propertyRepository;



	@Override
	public void saveProperty(Property property) {
		propertyRepository.save(property);
	}

	@Override
	public Property findOnePropertyById(long propertyId) {
		return propertyRepository.findOne(propertyId);
	}

	@Override
	public List<Property> findAll() {
		return (List<Property>) propertyRepository.findAll();
	}

	@Override
	public void deleteProperty(Property property) {
		propertyRepository.delete(property);
	}



	@Override
	public List<Property> findAllBuildings() {
		List<Property> properties = (List<Property>) propertyRepository
				.findAll();
//		List<Property> properties2 = new ArrayList<>();
//		 properties.stream()
//				.filter(property -> (property instanceof Building))
//				.forEach(property->{properties2.add(property);});
//		return properties2;
		return properties;
	}

	@Override
	public Property findOne(long propertyId) {
		
		return propertyRepository.findOne( propertyId);
	}

}
