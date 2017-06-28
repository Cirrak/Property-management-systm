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
import com.property.mgt.domain.BusinessClient;
import com.property.mgt.domain.BusinessOwner;
import com.property.mgt.domain.Client;
import com.property.mgt.domain.PersonClient;
import com.property.mgt.domain.PersonOwner;
import com.property.mgt.service.BusinessClientService;
import com.property.mgt.service.BusinessOwnerService;
import com.property.mgt.service.PersonClientService;
import com.property.mgt.service.PersonOwnerService;

@Controller
public class OwnerController {

	@Autowired
	PersonOwnerService personOwnerService;
	
	@Autowired
	BusinessOwnerService businessOwnerService;

	
	/* 
	 * Controllers for person clients
	 */
	
	// Used for displaying PersonClients

	@RequestMapping(value = "/listPersonOwners", method = RequestMethod.GET)
	public String listPersonOwners(Model model) {
		List<PersonOwner> personOwnerList = personOwnerService.findAll();
		model.addAttribute("personOwnerList", personOwnerList);
		return "owner/personOwners";
	}

	// display add Personclient form

	@RequestMapping(value = "/addPersonOwner", method = RequestMethod.GET)
	public String inputPersonOwner(@ModelAttribute("personOwner") PersonOwner personOwner) {
		return "owner/addPersonOwner";
	}

	// Save the Personclient
	@RequestMapping(value = "/addPersonOwner", method = RequestMethod.POST)
	public String savePersonOwner(@Valid @ModelAttribute("personOwner") PersonOwner personOwner, BindingResult result, RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			return "owner/addPersonOwner";
		}

		// do the try catch exception handling later
		personOwnerService.save(personOwner);

		redirectAttributes.addFlashAttribute("personOwner", personOwner);

		return "redirect:/personOwnerDetails";
	}

	// Display the details of a saved Personclient

	@RequestMapping(value = "/personOwnerDetails", method = RequestMethod.GET)
	public String displayPersonOwnerDetails() {
		return "owner/personOwnerDetails";
	}
	
	// Delete a Person Client
	
	@RequestMapping(value = "/deletePersonOwner", method = RequestMethod.GET)
	public String deletePersonOwner(@RequestParam("OwnerId") long personOwnerId, Model theModel) {
		
		// delete the customer
		personOwnerService.delete(personOwnerService.findOne(personOwnerId));
		
		return "redirect:/listPersonOwners";
	}
	
	@RequestMapping(value = "/updatePersonOwner", method = RequestMethod.GET)
	public String showPersonOwnerFormForUpdate(@RequestParam("OwnerId") long personOwnerId , Model model) {
		model.addAttribute(personOwnerService.findOne(personOwnerId));
		
		return "owner/addPersonOwner";
	}
	
	@RequestMapping(value="/showPersonOwnerDetail")
	public @ResponseBody  PersonOwner  getRestPersonOwner(@RequestParam("OwnerId") Long personOwnerId  ) {
		
		PersonOwner personOwner = personOwnerService.findOne(personOwnerId);
		
 		return personOwner ;
	}

	
	/* 
	 * Controllers for business clients
	 */
	
	// Used for displaying Business Clients

		@RequestMapping(value = "/listBusinessOwners", method = RequestMethod.GET)
		public String listBusinessOwners(Model model) {
			List<BusinessOwner> businessOwnerList = businessOwnerService.findAll();
			model.addAttribute("businessOwnerList", businessOwnerList);
			return "owner/businessOwners";
		}

		// display add Business client form

		@RequestMapping(value = "/addBusinessOwner", method = RequestMethod.GET)
		public String inputBusinessOwner(@ModelAttribute("businessOwner") BusinessOwner businessOwner) {
			return "owner/addBusinessOwner";
		}

		// Save the Business client
		@RequestMapping(value = "/addBusinessOwner", method = RequestMethod.POST)
		public String saveBusinessOwner(@Valid @ModelAttribute("businessOwner") BusinessOwner businessOwner, BindingResult result,	RedirectAttributes redirectAttributes) {
			if (result.hasErrors()) {
				return "owner/addBusinessOwner";
			}

			// do the try catch exception handling later
			businessOwnerService.save(businessOwner);

			redirectAttributes.addFlashAttribute("businessOwner", businessOwner);

			return "redirect:/businessOwnerDetails";
		}

		// Display the details of a saved Personowner

		@RequestMapping(value = "/businessOwnerDetails", method = RequestMethod.GET)
		public String displayBusinessOwnerDetails() {
			return "owner/businessOwnerDetails";
		}
		
		
		@RequestMapping(value = "/deleteBusinessOwner", method = RequestMethod.GET)
		public String deleteBusinessOwner(@RequestParam("OwnerId") long OwnerId, Model theModel) {
			
			// delete the customer
			businessOwnerService.delete(businessOwnerService.findOne(OwnerId));
			
			return "redirect:/listBusinessOwners";
		}

		@RequestMapping(value = "/updateBusinessOwner", method = RequestMethod.GET)
		public String showBusinessOwnerFormForUpdate(@RequestParam("OwnerId") long OwnerId , Model model) {
			model.addAttribute(businessOwnerService.findOne(OwnerId));
			
			return "owner/addBusinessOwner";
		}
		
		
		@RequestMapping(value="/showBusinessOwnerDetail")
		public @ResponseBody  BusinessOwner  getRestBusinessOwner (@RequestParam("OwnerId") Long OwnerId  ) {
			
			BusinessOwner businessOwner = businessOwnerService.findOne(OwnerId);
			System.out.println(businessOwner.getBusiness().getName());
	 		return businessOwner ;
		}
	
}
