package com.property.mgt.domain;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.Valid;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Inheritance(strategy=InheritanceType.JOINED)
public class Business {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private long businessId;
	
	@NotEmpty
	@Size(min = 3, max =15, message="Name Field must be between 3 and 15 characters")
	private String name;
	
	@NotEmpty
	@Size(min = 3, max =15, message="Type must be between 3 and 15 characters")
	private String type;
	
	@NotEmpty
	@Size(min = 3, max =15, message="Contact must be between 3 and 15 characters")
	private String contactPerson;
	
	@Valid
	@OneToOne(fetch=FetchType.EAGER, cascade = CascadeType.ALL)
	private Contact contact;
	
	public Business(){
		
	}
	
	public long getBusinessId() {
		return businessId;
	}
	public void setBusinessId(long businessId) {
		this.businessId = businessId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getContactPerson() {
		return contactPerson;
	}
	public void setContactPerson(String contactPerson) {
		this.contactPerson = contactPerson;
	}
	public Contact getContact() {
		return contact;
	}
	public void setContact(Contact contact) {
		this.contact = contact;
	}
	
	
}
