package com.local.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.local.laptopshop.domain.User;
import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User eric);

    List<User> findByEmail(String email);

    List<User> findAll();

    User findById(long id);

    void deleteById(long id);
}
