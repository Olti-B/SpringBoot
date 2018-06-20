package com.olti.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.olti.dto.UserDto;
import com.olti.repository.UserRepository;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public UserDto findUsersByEmailAndPassword(String email, String password) {
		return userRepository.findUsersByEmailAndPassword(email, password);
	}

	@Override
	public void saveUser(UserDto user) {
		userRepository.save(user);

	}

	@Override
	public UserDto findByEmail(String email) {
		return userRepository.findUsersByEmail(email);
	}

}
