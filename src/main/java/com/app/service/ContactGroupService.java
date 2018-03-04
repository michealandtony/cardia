package com.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.model.ContactGroup;
import com.app.repository.ContactGroupRepository;

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
