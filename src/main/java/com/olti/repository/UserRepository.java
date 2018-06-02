package com.olti.repository;

import org.springframework.data.repository.Repository;

import com.olti.dto.UserDto;

public interface UserRepository extends Repository<UserDto, Long> {

}