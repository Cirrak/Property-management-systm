package com.property.mgt.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.property.mgt.domain.Building;
import com.property.mgt.domain.Property;
import com.property.mgt.exception.PropertyPhotoUploadException;
import com.property.mgt.service.PropertyService;
import com.property.mgt.util.SessionIdentifierGenerator;

@Controller
@RequestMapping(value="/property")
public class PropertyController {
	
	//@Autowired
	//ServletContext servletContext;
	
	@Autowired
	PropertyService propertyService;
	
	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String propertyHome() {
		
		return "welcome";
	}
	

	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String addBuildingPost(@Valid @ModelAttribute("building") Building building, BindingResult result,
			HttpServletRequest request) {
		if(result.hasErrors())
			return "property/register";
		
		
		building.setPhotoName(SessionIdentifierGenerator.getRandomString());
		
		MultipartFile propertyPhoto = building.getPhoto(); 
		String rootDirectory = request.getServletContext().getRealPath("/");
		// isEmpty means file exists BUT NO Content
		if (propertyPhoto != null && !propertyPhoto.isEmpty()) {
			String fileSeparator = System.getProperty("file.separator");
			try {
				propertyPhoto.transferTo(new File(rootDirectory + fileSeparator
						+ "resources" + fileSeparator + "images"
						+ fileSeparator + "" + building.getPhotoName() + ".png"));
			} catch (Exception e) {
				e.printStackTrace();
				throw new PropertyPhotoUploadException("Building Photo missing!", building);
			}
		}else
			throw new PropertyPhotoUploadException("Building Photo missing!", building);
		
		propertyService.saveProperty(building);
		return "redirect:/property/buildings";
	}
	
	
		
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String addProperty(@ModelAttribute("building") Building building) {
	
		return "property/register";
	}
	
	
	@RequestMapping(value = "/buildings", method = RequestMethod.GET)
	public String buildings(Model model) {
		List<Property> buildings = propertyService.findAllBuildings();
		model.addAttribute("size", buildings.size());
		model.addAttribute("buildings", buildings);
		return "property/buildings";
	}
	
	
	// Delete a property
	
			@RequestMapping(value = "/deleteProperty", method = RequestMethod.GET)
			public String deleteProperty(@RequestParam("propertyId") long propertyId, Model model) {
				
				// delete a property
				propertyService.deleteProperty(propertyService.findOne(propertyId));
				
			
				return "redirect:/property/buildings";
			}

}
