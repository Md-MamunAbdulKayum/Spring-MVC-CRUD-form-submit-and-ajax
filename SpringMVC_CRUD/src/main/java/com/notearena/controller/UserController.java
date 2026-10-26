package com.notearena.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMethod;

import org.json.JSONArray;
import org.json.JSONObject;

import com.notearena.model.UserObjectForm;
import com.notearena.services.UserService;
import java.util.List;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;




@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "dashboard")
	public String getDashboard(@ModelAttribute("userObject") UserObjectForm userObject, Model model) {
		System.out.println("Check dashboard");
		return "userDashboard";
	}
	
	
	@RequestMapping(value = "addUser")
	public String addCustomer(@ModelAttribute("userObject") UserObjectForm userObject, Model model) {
	    System.out.println("Check add customer");
		model.addAttribute("userObject", userObject);
		return "addUser";
	}
	
	@RequestMapping(value = "viewUser", method = RequestMethod.POST)
	public String addCustomerAction(@ModelAttribute("userObject") UserObjectForm userObject, Model model) {
            if (userObject.getUserName() != null && !userObject.getUserName().trim().isEmpty()) {
                userService.addUser(userObject);
            }
		return "redirect:viewUser.do";
	}

	@RequestMapping(value = "viewUser", method = RequestMethod.GET)
	public String viewUserPage(@ModelAttribute("userObject") UserObjectForm userObject, Model model) {
		return "viewUser";
	}
	@RequestMapping(value = "showUser")
	public String showCustomer(@ModelAttribute("userObject") UserObjectForm userObject, Model model) {
		System.out.println("Check show customer");
//	    System.out.println("First name :"+userObject.getFirstName());
//	    System.out.println("Last  name :"+userObject.getLastName());
//	    System.out.println("Age :"+userObject.getAge());
//	    System.out.println("Email :"+userObject.getEmail());
//	    System.out.println("User name:"+userObject.getUserName());
//	    System.out.println("Password :"+userObject.getPassword());
//	    System.out.println("Status :"+userObject.getStatus());
//	    
         
	//model.addAttribute("userObject", userObject);
	return "viewUser";
	}
        
        @RequestMapping(value = "viewUsers", produces = MediaType.APPLICATION_JSON_VALUE)
        public @ResponseBody String viewCustomer() {
            List<UserObjectForm> users = userService.getAllUser();
            JSONArray jsonArray = new JSONArray();
            for (UserObjectForm user : users) {
                JSONObject obj = new JSONObject();
                obj.put("id", user.getId());
                obj.put("firstName", user.getFirstName());
                obj.put("lastName", user.getLastName());
                obj.put("age", user.getAge());
                obj.put("email", user.getEmail());
                obj.put("userName", user.getUserName());
                obj.put("status", user.getStatus());
                jsonArray.put(obj);
            }
            return jsonArray.toString();
	}
        
        @RequestMapping(value = "deleteUser", method = RequestMethod.POST)
        public @ResponseBody String deleteCustomer(@RequestParam(value = "userId") int userId) {
            if(userService.findUser(userId)) {
              System.out.println("Id: "+userId);
              userService.deleteUser(userId);
              System.out.println("Successfully deleted");
              return "success";
            }

       return "failed";
       }
    
        
}
