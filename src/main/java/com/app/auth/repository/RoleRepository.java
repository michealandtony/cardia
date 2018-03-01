package com.app.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.auth.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}
