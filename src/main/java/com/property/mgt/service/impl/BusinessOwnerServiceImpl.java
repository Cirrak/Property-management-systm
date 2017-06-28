package com.property.mgt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.property.mgt.domain.BusinessClient;
import com.property.mgt.domain.BusinessOwner;
import com.property.mgt.repository.BusinessClientRepository;
import com.property.mgt.repository.BusinessOwnerRepository;
import com.property.mgt.service.BusinessClientService;
import com.property.mgt.service.BusinessOwnerService;

@Service
@Transactional
public class BusinessOwnerServiceImpl implements BusinessOwnerService {

	@Autowired
	BusinessOwnerRepository businessOwnerRepository;
	
	@Override
	public List<BusinessOwner> findAll() {
		return (List<BusinessOwner>) businessOwnerRepository.findAll();
	}

	@Override
	public void save(BusinessOwner businessOwner) {
		businessOwnerRepository.save(businessOwner);
	}

	@Override
	public BusinessOwner findOne(long businessOwnerId) {
		
		return businessOwnerRepository.findOne(businessOwnerId);
	}

	@Override
	public void delete(BusinessOwner businessOwner) {
		businessOwnerRepository.delete(businessOwner);
		
	}

}
