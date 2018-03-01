package com.app.auth.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.auth.model.Contact;
import com.app.auth.service.ContactService;

@RestController
public class ContactsApi {
	
	@Autowired
	ContactService contactService;

	@RequestMapping("/api/contacts")
	public List<Contact> getContacts() {
		return contactService.getAllContacts();
	}
}
