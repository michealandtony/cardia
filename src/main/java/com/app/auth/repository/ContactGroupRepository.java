package com.app.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.auth.model.ContactGroup;

public interface ContactGroupRepository extends JpaRepository<ContactGroup, Long> {

}
