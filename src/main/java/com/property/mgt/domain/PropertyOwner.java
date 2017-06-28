package com.property.mgt.domain;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.Date;

/**
 * Created by zaid on 6/21/2017.
 */
@Entity
public class PropertyOwner {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="id")
    private long propertyOwnerId;

    @NotNull
    private Date startDate;

    @NotNull
    private Date endDate;

    @NotEmpty
    private String ownerId;

    @NotEmpty
    private String propertyId;

    PropertyOwner(){}

    public long getPropertyOwnerId() {
        return propertyOwnerId;
    }

    public void setPropertyOwnerId(long propertyOwnerId) {
        this.propertyOwnerId = propertyOwnerId;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(String ownerId) {
        this.ownerId = ownerId;
    }

    public String getPropertyId() {
        return propertyId;
    }

    public void setPropertyId(String propertyId) {
        this.propertyId = propertyId;
    }
}
