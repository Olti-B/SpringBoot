package com.olti.service;

import com.olti.dto.UserDto;;

public interface UserService {
	public UserDto findUserByEmailAndPassword(String email, String Password);

	public void saveUser(UserDto user);

	public UserDto findByEmail(String email);

}
