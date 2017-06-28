package com.property.mgt.service;

import java.util.List;

import com.property.mgt.domain.PersonClient;
import com.property.mgt.domain.PersonOwner;

public interface PersonOwnerService {

	
	List<PersonOwner> findAll();

	void save(PersonOwner personOwner);

	PersonOwner findOne(long personBusinessId);

	void delete(PersonOwner findOne);

}
