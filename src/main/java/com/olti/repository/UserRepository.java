package com.olti.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.olti.dto.UserDto;

@org.springframework.stereotype.Repository("userRepository")
public interface UserRepository extends JpaRepository<UserDto, Long> {
    
	UserDto findUsersByEmailAndPassword(String email, String password);
	UserDto findUsersByEmail(String email);
}