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
public class EditUserController {
    @Autowired
	private UserService userService;
        
    	@RequestMapping(value = "editUserAjax", method = RequestMethod.POST)
	public @ResponseBody String addCustomerAction(
            @RequestParam(required = true) int userId,
            @RequestParam(required = true) String firstName,
            @RequestParam(required = true) String lastName,
            @RequestParam(required = true) int age,
            @RequestParam(required = true) String email,
            @RequestParam(required = true) String userName,
            @RequestParam(required = true) String password,
            @ModelAttribute("userObject") UserObjectForm userObject) {
	    System.out.println("Check edit customer ajax controller action");
            
	        // adding the user id to the userObject as it is not the part of userObject from the UI (input field path)
            userObject.setId(userId);

            System.out.println("Id "+userObject.getId()+", "+ firstName+" ,"+lastName+" ,"+age+", "+email+", "+userName+", "+password);
            try {
                userService.updateUser(userObject);
                return "success";
            } catch (Exception e) {
                e.printStackTrace();
                return "failed";
            }
            
	}
}
