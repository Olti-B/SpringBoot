package com.olti.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.olti.dto.UserDto;
import com.olti.service.UserServiceImpl;

@Controller
public class PageController {
	
	@Autowired
	private UserServiceImpl userService;

	@RequestMapping(value= { "/", "home" }, method= RequestMethod.GET)
	public String welcome() {
		return "index";
	}

	@RequestMapping(value= "/about", method= RequestMethod.GET)
	public String about() {
		return "about";
	}

	@RequestMapping(value= "/login", method= RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping(value= "/register", method= RequestMethod.GET)
	public String register() {
		return "register";
	}
	
	@RequestMapping(value= "/users_auth/booking_page", method= RequestMethod.GET)
	public String auth_users() {
		return "/users_auth/booking_page";
	}
	
	@RequestMapping(value= "/login", method= RequestMethod.POST)
	public @ResponseBody String verifyLogin(@RequestParam String email, @RequestParam String userpassword, Model model,HttpServletResponse resp) throws IOException{
		
		UserDto user =  userService.findUserByEmailAndPassword(email, userpassword);
		
		if(user != null) {
			resp.sendRedirect("/users_auth/booking_page");	
			return "/users_auth/booking_page";
		}else {
			resp.sendRedirect("/login");
			model.addAttribute("errorLogin", "Could not find user");
		}
			
			return "";
	}


}