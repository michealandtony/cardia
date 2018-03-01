package com.app.auth.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.auth.model.Contact;
import com.app.auth.model.ContactGroup;
import com.app.auth.service.ContactGroupService;
import com.app.auth.service.ContactService;
import com.app.auth.service.MailService;

@Controller
public class MainWebController {

	@Autowired
	private ContactService contactService;
	private MailService mailService = new MailService();

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
		return "redirect:/contacts";
	}

	@RequestMapping(method=RequestMethod.GET, value="/compose")
	public String compose(Model model) {
		return "compose";
	}

	@RequestMapping(method=RequestMethod.POST, value="/compose")
	public String broadcast(Model mode, @RequestBody String content) {//, @RequestBody String groupName) {
		mailService.broadcast(content);//(groupName, content);
		return "compose";
	}
	
	@RequestMapping(value = {"/", "/home"})
	public String home(Model model) {
		return "home";
	}
}
