package com.property.mgt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.property.mgt.domain.PersonClient;
import com.property.mgt.domain.PersonOwner;
import com.property.mgt.repository.PersonClientRepository;
import com.property.mgt.repository.PersonOwnerRepository;
import com.property.mgt.service.PersonClientService;
import com.property.mgt.service.PersonOwnerService;

@Service
@Transactional
public class PersonOwnerServiceImpl implements PersonOwnerService {
	
	@Autowired
	PersonOwnerRepository personOwnerRepository;

	@Override
	public List<PersonOwner> findAll() {
		return (List<PersonOwner>) personOwnerRepository.findAll();
		
	}

	@Override
	public void save(PersonOwner personOwner) {
		personOwnerRepository.save(personOwner);
		
	}

	@Override
	public PersonOwner findOne(long personOwnertId) {
		return (PersonOwner)personOwnerRepository.findOne(personOwnertId);
	}

	@Override
	public void delete(PersonOwner personOwner) {
		personOwnerRepository.delete(personOwner);
		
	}

}
