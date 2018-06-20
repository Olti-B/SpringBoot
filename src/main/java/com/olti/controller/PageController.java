package com.olti.controller;

import java.io.IOException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.olti.dto.UserDto;
import com.olti.service.UserServiceImpl;

@Controller
public class PageController {

    @Autowired
    private UserServiceImpl userService;

    private UserDto user;

    @RequestMapping(value = { "/", "home" }, method = RequestMethod.GET)
    public String welcome() {
	return "index";
    }

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String about() {
	return "about";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
	return "login";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register() {
	return "register";
    }

    @RequestMapping(value = "/users_auth/booking_page", method = RequestMethod.GET)
    public String auth_users() {
	return "/users_auth/booking_page";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String verifyLogin(@RequestParam String email, String password, Model model){

	if (userService.findUsersByEmailAndPassword(email, password) != null) {
	    return "/users_auth/booking_page";
	} else {
	    model.addAttribute("errorLogin", "Could not find user");
	    return "/login";
	}

    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String saveNewUser(@RequestParam String name, String email, String username, String password, String confirm, Model model) {

	if (!password.isEmpty()) {
	    if (password.equals(confirm)) {
		if (userService.findByEmail(email) == null) {
		    userService.saveUser(new UserDto(username, password, email));
		    return "/login";
		} else {
		    model.addAttribute("successUserAdded", "User Exist");
		}
	    } else {
		model.addAttribute("errorRegister", "Please enter the same password");
	    }
	} else {
	    model.addAttribute("errorRegister", "Please empty Field");
	}
	
	return "/register";
	
    }

}