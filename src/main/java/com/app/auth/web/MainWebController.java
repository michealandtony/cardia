package com.app.auth.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.model.Broadcast;
import com.app.model.Contact;
import com.app.model.ContactGroup;
import com.app.service.ContactGroupService;
import com.app.service.ContactService;
import com.app.service.MailService;

@Controller
public class MainWebController {

	@Autowired
	private ContactService contactService;

	@Autowired
	private ContactGroupService groupService; 

	@RequestMapping(method=RequestMethod.GET, value="/contacts")
	public String contacts(Model model) {
		model.addAttribute("contactList", contactService.getAllContactsHtmlTable());
		return "contacts";
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/contacts")
	public String addContacts(Model model, Contact contact) {
		contactService.save(contact);
		return "contacts";
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/groups")
	public String addGroup(Model model, ContactGroup group) {
		groupService.save(group);
		return "groups";
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/groups")
	public String groupView(Model model) {
		return "groups";
	}

	@RequestMapping(method=RequestMethod.GET, value="/compose")
	public String compose(Model model) {
		return "compose";
	}
	
	@RequestMapping(value = {"/", "/home"})
	public String home(Model model) {
		return "redirect:/contacts";
	}
}
