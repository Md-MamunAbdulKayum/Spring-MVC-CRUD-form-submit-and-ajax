package com.notearena.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping(value = "viewUser")
	public String addCustomerAction(@ModelAttribute("userObject") UserObjectForm userObject, Model model) {
	    System.out.println("Check add customer action");
            if (userObject.getUserName()!=null) {
                userService.addUser(userObject);
                userObject =null;
            }
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
        
        @RequestMapping(value = "viewUsers")
        public @ResponseBody String viewCustomer() throws Exception {
		System.out.println("Check view customer");
	    
            List<UserObjectForm> users = userService.getAllUser();
            System.out.println("Users: "+users.toString());
        JSONObject jassonObject = new JSONObject();
      //  System.out.println(userName + " ----------- " + jassonObject.toString());
        JSONArray jassonArray = new JSONArray();
        jassonArray.put(users);
            System.out.println(jassonArray);
        jassonObject.put("records", users);
        
        String dfsd = jassonArray.toString();
        String ddd = dfsd.substring(dfsd.indexOf("[")+1, dfsd.lastIndexOf("]"));
            System.out.println("ddd: "+ddd);
		//model.addAttribute("userObject", userObject);
	return ddd;
	}
        
        @RequestMapping(value = "deleteUser")
        public @ResponseBody String deleteCustomer(@RequestParam(value = "userId") int userId) throws Exception{
            if(userService.findUser(userId)) {
              System.out.println("Id: "+userId);
              userService.deleteUser(userId);
              System.out.println("Successfully deleted");
              return "success";
            }

       return "failed";
       }
    
        
}
