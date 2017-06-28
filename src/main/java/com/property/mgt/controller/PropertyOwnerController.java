package com.property.mgt.controller;

import com.property.mgt.domain.PropertyOwner;
import com.property.mgt.service.PropertyOwnerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

import javax.validation.Valid;

/*
 * Created by zaid on 6/21/2017.
 */

@Controller
public class PropertyOwnerController {
	@Autowired
	PropertyOwnerService propertyOwnerService;
	
	public PropertyOwnerController(){}
		
	
	
	// Used for displaying staffList
	
	@RequestMapping(value = {"/propertyOwnerList"}, method = RequestMethod.GET)
	public String listClients(Model model) {
		
		List<PropertyOwner> propertyownerList = propertyOwnerService.findAll();
		
		model.addAttribute("propertyownerList", propertyownerList);
		return "propertyOwner/propertyOwnerList";
		
	}
	
	// display add staff form 
	
	@RequestMapping(value = "/addPropertyOwner", method = RequestMethod.GET)
	public String addPropertyOwner(@ModelAttribute("propertyOwner") PropertyOwner propertyowner){
		
		return "propertyOwner/propertyOwnerForm";	
	}
	
	
	@RequestMapping(value = "/addPropertyOwner", method = RequestMethod.POST)
	public String savePropertyOwner(@Valid @ModelAttribute("propertyOwner") PropertyOwner propertyOwner, BindingResult result){
				if(result.hasErrors()){
			
			return "propertyOwner/propertyOwnerForm";
		}
		
				
				propertyOwnerService.save(propertyOwner);
			
		return "redirect:/propertyOwnerList";	
	}
	
	
	// Delete a Propertystaff
	
			@RequestMapping(value = "/deletePropertyOwner", method = RequestMethod.GET)
			public String deletePropertyOwn(@RequestParam("propertyStateId") long propertyStateId, Model model) {
				
			
				propertyOwnerService.delete(propertyOwnerService.findOne(propertyStateId));
				
				return "redirect:/propertyOwnerList";	
			}



}
