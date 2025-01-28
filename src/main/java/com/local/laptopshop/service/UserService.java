package com.local.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.local.laptopshop.domain.User;
import com.local.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public String handleHello() {
        return "Hello from servie";
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public List<User> getAllUsersByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public User handleSaveUser(User user) {
        User eric = this.userRepository.save(user);
        return eric;
    }

    public void deleteUserById(long id) {
        this.userRepository.deleteById(id);
    }
}
