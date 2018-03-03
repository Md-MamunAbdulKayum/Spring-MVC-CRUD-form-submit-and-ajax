package com.notearena.dao;

import java.util.List;

import com.notearena.model.UserObjectForm;



public interface UserDAO {
	public void addUser(UserObjectForm user);
	
	public List<UserObjectForm> getAllUser();

	public void deleteUser(Integer userId);

	public UserObjectForm updateUser(UserObjectForm user);

	public UserObjectForm getUser(int userId);
        
        public boolean finduser(int userId);
}
