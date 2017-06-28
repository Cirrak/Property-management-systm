package com.property.mgt.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.property.mgt.domain.Client;
import com.property.mgt.domain.PropertyStaff;
import com.property.mgt.domain.Staff;
import com.property.mgt.service.PropertyStaffService;
import com.property.mgt.service.StaffService;
import com.property.mgt.service.StaffService;

@Controller
public class PropertyStaffController {

	@Autowired
	PropertyStaffService propertystaffService;
	
	public PropertyStaffController(){
		
	}
	
	// Used for displaying staffList
	
	@RequestMapping(value = {"/propertyStaffList"}, method = RequestMethod.GET)
	public String listClients(Model model) {
		
		List<PropertyStaff> propertystaffList = propertystaffService.findAll();
		
		model.addAttribute("propertystaffList", propertystaffList);
		return "propertyStaff/propertyStaffList";
		
	}
	
	// display add staff form 
	
	@RequestMapping(value = "/addPropertyStaff", method = RequestMethod.GET)
	public String addStaff(@ModelAttribute("propertyStaff") PropertyStaff propertystaff){
		
		return "propertyStaff/propertyStaffForm";	
	}
	
	
	@RequestMapping(value = "/addPropertyStaff", method = RequestMethod.POST)
	public String saveStaff(@Valid @ModelAttribute("propertyStaff") PropertyStaff propertyStaff, BindingResult result){
				if(result.hasErrors()){
			
			return "propertyStaff/propertyStaffForm";
		}
		
				
				propertystaffService.save(propertyStaff);
			
		return "redirect:/propertyStaffList";	
	}
	
	
	// Delete a Propertystaff
	
			@RequestMapping(value = "/deletePropertyStaff", method = RequestMethod.GET)
			public String deleteStaff(@RequestParam("propertyStateId") long propertyStateId, Model model) {
				
				// delete a staff
				propertystaffService.delete(propertystaffService.findOne(propertyStateId));
				
				return "redirect:/propertyStaffList";	
			}
			
			
			
			// Update a staffProperty
			@RequestMapping(value = "/updatePropertyStaff", method = RequestMethod.GET)
			public String showStaffPropertyFormForUpdate(@RequestParam("propertyStateId") long propertyStateId , Model model) {
				model.addAttribute("propertySaff",propertystaffService.findOne(propertyStateId));
				
				return "propertyStaff/propertyStaffForm";
			}
		
	
	/*
	//Display Staff Details
	@RequestMapping(value = "/staffDetails", method = RequestMethod.GET)
	public String displayPersonClientDetails() {
		return "staff/staffDetails";
	}
	
	
	// Delete a staff
	
		@RequestMapping(value = "/deleteStaff", method = RequestMethod.GET)
		public String deleteStaff(@RequestParam("staffId") long staffId, Model model) {
			
			// delete a staff
			staffService.delete(staffService.findOne(staffId));
			
			return "redirect:/staffList";
		}
		
		
		// Update a staff
		@RequestMapping(value = "/updateStaff", method = RequestMethod.GET)
		public String showStaffFormForUpdate(@RequestParam("staffId") long staffId , Model model) {
			model.addAttribute(staffService.findOne(staffId));
			
			return "staff/staffForm";
		}
	
		@RequestMapping(value = "/getStaffDetails", method = RequestMethod.GET)
		public @ResponseBody Staff getStaffDetails(@RequestParam("staffId") long staffId) {
			System.out.println("HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH");
		
			Staff theStaff = staffService.findOne(staffId);
		
			return theStaff;
			
		}*/
	
}
