package com.property.mgt.domain;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.validation.Valid;

@Entity
public class BusinessOwner extends Owner implements Serializable {
	
/**
	 * 
	 */
	private static final long serialVersionUID = 1111111111L;

//	@Id
//	@GeneratedValue(strategy=GenerationType.AUTO)
//	@Column(name="id")
	//private long businessOwnerId;
	
	@Valid
	@OneToOne(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	private Business business;
	
	public BusinessOwner(){
		
	}

	public Business getBusiness() {
		return business;
	}

	public void setBusiness(Business business) {
		this.business = business;
	}

	/*public long getBusinessOwnerId() {
		return businessOwnerId;
	}

	public void setBusinessCLientId(long businessOwnerId) {
		this.businessOwnerId = businessOwnerId;
	}*/
}
