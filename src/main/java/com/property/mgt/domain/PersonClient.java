package com.property.mgt.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.validation.Valid;
import javax.xml.bind.annotation.XmlTransient;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class PersonClient extends Client implements Serializable {
	
/**
	 * 
	 */
	private static final long serialVersionUID = 12222L;
//	@Id
//	@GeneratedValue(strategy=GenerationType.AUTO)
//	@Column(name="id")
	private long personClientId;
	private Date startdate;
	private String status;
	
	@Valid
	@OneToOne(fetch=FetchType.EAGER ,cascade=CascadeType.ALL)
	private Person person;
	
	public PersonClient(){
		
	}

	public long getPersonClientId() {
		return personClientId;
	}

	public void setPersonClientId(long personClientId) {
		this.personClientId = personClientId;
	}

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}
	

}
