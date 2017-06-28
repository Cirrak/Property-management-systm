package com.property.mgt.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.property.mgt.domain.PersonClient;
import com.property.mgt.domain.PersonOwner;

@Repository
public interface PersonOwnerRepository extends CrudRepository<PersonOwner, Long> {

}
