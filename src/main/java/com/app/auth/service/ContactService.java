package com.app.auth.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.auth.model.Contact;
import com.app.auth.repository.ContactRepository;

@Service
public class ContactService {

	@Autowired
	private ContactRepository contactRepository;

	public void save(Contact contact) {
		contactRepository.save(contact);
	}

	public List<Contact> getAllContacts() {
		return contactRepository.findAll();
	}

	public Object getAllContactsHtmlTable() {
		String data = "";
		int id = 0;
		for (Contact contact : contactRepository.findAll()) {
			data += "<tr><td>"+contact.getId()+"</td>\n" + 
					"                    <td>"+contact.getName()+"</td>\n" + 
					"                    <td>"+contact.getPhoneNumber()+"</td>\n" + 
					"                    <td>"+contact.getEmail()+"</td></tr>";
		}
		return data;
	}
}
