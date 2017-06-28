package com.property.mgt.service.impl;

import com.property.mgt.domain.PropertyOwner;
import com.property.mgt.repository.PropertyOwnerRepository;
import com.property.mgt.service.PropertyOwnerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zaid on 6/21/2017.
 */

@Service
@Transactional
public class PropertyOwnerServiceImpl implements PropertyOwnerService {

    @Autowired
    PropertyOwnerRepository propertyOwnerRepository;

    @Override
    public List<PropertyOwner> findAll() {
        return (List<PropertyOwner>)propertyOwnerRepository.findAll();
    }

    @Override
    public void save(PropertyOwner propertyOwner) {
       propertyOwnerRepository.save(propertyOwner);
    }

    @Override
    public PropertyOwner findOne(long id) {
        return propertyOwnerRepository.findOne(id);
    }

    @Override
    public void delete(PropertyOwner propertyOwner) {
       propertyOwnerRepository.delete(propertyOwner);
    }
}
