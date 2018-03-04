package com.app.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.app.model.ContactGroup;
import com.app.service.ContactGroupService;

@RestController
public class ContactsGroupApi {

	@Autowired
	private ContactGroupService groupService;
	
	@RequestMapping("/api/groups")
	public List<ContactGroup> getAllGroups() {
		return groupService.getAllGroups();
	}
}
