package com.property.mgt.service;

import java.util.List;

import com.property.mgt.domain.BusinessClient;
import com.property.mgt.domain.PersonClient;

public interface BusinessClientService {

	List<BusinessClient> findAll();

	void save(BusinessClient businessClient);	

	BusinessClient findOne(long businessClientId);

	void delete(BusinessClient findOne);

}
