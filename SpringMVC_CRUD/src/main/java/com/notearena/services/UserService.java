package com.notearena.services;

import java.util.List;

import com.notearena.model.UserObjectForm;



public interface UserService {
	
	public void addUser(UserObjectForm user);

	public List<UserObjectForm> getAllUser();

	public void deleteUser(Integer userId);

	public UserObjectForm getUser(int userId);

	public UserObjectForm updateUser(UserObjectForm user);
        
        public boolean findUser(int userId);
}
