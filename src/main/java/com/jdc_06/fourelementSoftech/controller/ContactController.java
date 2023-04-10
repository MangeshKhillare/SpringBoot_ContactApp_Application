package com.jdc_06.fourelementSoftech.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


import com.jdc_06.fourelementSoftech.entity.Contact;
import com.jdc_06.fourelementSoftech.service.ContactServiceI;

@Controller
public class ContactController {

	@Autowired
	private ContactServiceI contactServiceI;

	@GetMapping("/welcome")
	public String loadForm(Model model) {

		model.addAttribute("contact", new Contact());
		return "Welcome";

	}


	@PostMapping("/saveContact")
	public String saveContactData(Contact contact) {
				
		boolean saveContact = contactServiceI.saveContact(contact);
		
		return "ContactSuccess";
	}
	
	@GetMapping("/getAllContact")
	public String getAllContactData(Model model) {
		
		List<Contact> allContacts = contactServiceI.getAllContacts();
		
		model.addAttribute("list", allContacts);
		
		for (Contact contact : allContacts) {
			System.out.println(contact);
		}
		return "Get_AllContact";
	}
	
	@GetMapping("/getSingleContact/{contactId}")
	public String getSingleContactRecord(@PathVariable Integer contactId,Model model) {
		
		Contact singleContact = contactServiceI.getContactById(contactId);
		
		model.addAttribute("singleContactData", singleContact);
		
		return "Single_Contact";
	}
	
	@GetMapping("/deleteSingleContact/{contactId}")
	public String deleteSingleContact(@PathVariable Integer contactId) {
		
		boolean deleteContactById = contactServiceI.deleteContactById(contactId);
		
		return "Delete_Contact"; 
	}
}

