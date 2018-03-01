 package com.app.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.auth.model.Contact;

public interface ContactRepository extends JpaRepository<Contact, Long> {

}
