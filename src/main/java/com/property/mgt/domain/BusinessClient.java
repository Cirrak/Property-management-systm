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
public class BusinessClient extends Client implements Serializable {
	
/**
	 * 
	 */
	private static final long serialVersionUID = 1111111111L;

//	@Id
//	@GeneratedValue(strategy=GenerationType.AUTO)
//	@Column(name="id")
	private long businessCLientId;
	
	@Valid
	@OneToOne(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	private Business business;
	
	public BusinessClient(){
		
	}

	public Business getBusiness() {
		return business;
	}

	public void setBusiness(Business business) {
		this.business = business;
	}

	public long getBusinessCLientId() {
		return businessCLientId;
	}

	public void setBusinessCLientId(long businessCLientId) {
		this.businessCLientId = businessCLientId;
	}
}
