package com.property.mgt.repository;

import com.property.mgt.domain.PropertyOwner;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by zaid on 6/21/2017.
 */
@Repository
public interface PropertyOwnerRepository extends CrudRepository<PropertyOwner, Long> {

}
