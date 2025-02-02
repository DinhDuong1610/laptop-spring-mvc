package com.local.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.local.laptopshop.domain.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findByName(String name);
}
