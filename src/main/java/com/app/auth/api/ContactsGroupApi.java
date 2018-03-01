package com.app.auth.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.auth.model.ContactGroup;
import com.app.auth.service.ContactGroupService;

@RestController
public class ContactsGroupApi {

	@Autowired
	private ContactGroupService groupService;
	
	@RequestMapping("/api/groups")
	public List<ContactGroup> getAllGroups() {
		if (groupService.getAllGroups().isEmpty()) {
			ContactGroup group = new ContactGroup ("default", "descrition");
			groupService.save(group);
		}
		return groupService.getAllGroups();
	}
}
