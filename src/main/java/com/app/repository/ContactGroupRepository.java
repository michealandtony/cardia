package com.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.model.ContactGroup;

public interface ContactGroupRepository extends JpaRepository<ContactGroup, Long> {

}
