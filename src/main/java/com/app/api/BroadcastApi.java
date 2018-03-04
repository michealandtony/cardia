package com.app.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.model.Broadcast;
import com.app.model.Contact;
import com.app.service.ContactGroupService;
import com.app.service.ContactService;
import com.app.service.MailService;

@Controller
public class BroadcastApi {
	
	@Autowired
	ContactService contactService;
	@Autowired
	private ContactGroupService groupService;
	
	MailService mailService = new MailService();

	@RequestMapping("/broadcast")
	public String broadcast(Broadcast broadcast) {
		List<Contact> contacts = contactService.getAllContacts();
		
		for (Contact contact : contacts)
			if (contact.getGroupName().equals(broadcast.getGroupName()))
				mailService.smsTo(contact, broadcast.getMessage());
		
		return "redirect:/contacts";
	}
}

