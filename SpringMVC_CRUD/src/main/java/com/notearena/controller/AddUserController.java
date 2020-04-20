/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.notearena.controller;

import com.notearena.model.UserObjectForm;
import com.notearena.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Sourav
 */
@Controller
public class AddUserController {
    	@Autowired
	private UserService userService;
        
    	@RequestMapping(value = "addUserAjax", method = RequestMethod.POST)
	public @ResponseBody String addCustomerAction(
            @RequestParam(required = true) String firstName,
            @RequestParam(required = true) String lastName,
            @RequestParam(required = true) int age,
            @RequestParam(required = true) String email,
            @RequestParam(required = true) String userName,
            @RequestParam(required = true) String password,
            @RequestParam(required = true) int status,
            @ModelAttribute("userObject") UserObjectForm userObject) {
	    System.out.println("Check add customer ajax controller action");
            	    
            System.out.println(firstName+" ,"+lastName+" ,"+age+", "+email+", "+userName+", "+password+", "+status);
            try {
                userService.addUser(userObject);
                return "success";
            } catch (Exception e) {
                e.printStackTrace();
                return "failed";
            }
            
	}
}
