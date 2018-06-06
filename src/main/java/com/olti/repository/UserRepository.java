package com.olti.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.olti.dto.UserDto;

@org.springframework.stereotype.Repository("userRepository")
public interface UserRepository extends JpaRepository<UserDto, Long> {
	UserDto findByEmailAndPassword(String email, String password);
	UserDto findByEmail(String email);
}