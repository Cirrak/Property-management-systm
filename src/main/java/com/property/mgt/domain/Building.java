package com.property.mgt.domain;

import javax.persistence.Entity;
import javax.validation.constraints.NotNull;

@Entity
public class Building extends Property {
       
	@NotNull
	private Integer floors;

	public Building(){
		
	}

	
	public Integer getFloors() {
		return floors;
	}

	public void setFloors(int floors) {
		this.floors = floors;
	}

	
	
}
