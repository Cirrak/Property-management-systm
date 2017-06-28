package com.property.mgt.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.property.mgt.domain.BusinessClient;
import com.property.mgt.domain.BusinessOwner;

@Repository
public interface BusinessOwnerRepository extends CrudRepository<BusinessOwner, Long> {

}
