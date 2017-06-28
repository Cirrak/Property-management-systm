package com.property.mgt.service;

import com.property.mgt.domain.PropertyOwner;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zaid on 6/21/2017.
 */

public interface PropertyOwnerService {
    List<PropertyOwner> findAll();
    void save(PropertyOwner propertyOwner);
    PropertyOwner findOne(long id);
    void delete(PropertyOwner propertyOwner);
    
    
   
      
    
}
