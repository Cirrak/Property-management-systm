package com.property.mgt.service;

import java.util.List;

import com.property.mgt.domain.BusinessClient;
import com.property.mgt.domain.BusinessOwner;
import com.property.mgt.domain.PersonClient;

public interface BusinessOwnerService {

	List<BusinessOwner> findAll();

	void save(BusinessOwner businessOwner);	

	BusinessOwner findOne(long businessOwnerId);

	void delete(BusinessOwner findOne);

}
