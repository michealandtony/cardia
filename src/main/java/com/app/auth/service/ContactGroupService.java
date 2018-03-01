package com.app.auth.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.auth.model.ContactGroup;
import com.app.auth.repository.ContactGroupRepository;

@Service
public class ContactGroupService {

	@Autowired 
	private ContactGroupRepository groupRepository;
	
	public void save (ContactGroup group) {
		groupRepository.save(group);
	}
	
	public List<ContactGroup> getAllGroups (){
		return groupRepository.findAll();
	}
}
