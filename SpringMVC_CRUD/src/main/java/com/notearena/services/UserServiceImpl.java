package com.notearena.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.notearena.dao.UserDAO;
import com.notearena.model.UserObjectForm;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO; 
	
	@Transactional
	public void addUser(UserObjectForm user) {
		// TODO Auto-generated method stub
		userDAO.addUser(user);
	}

	@Transactional
	public List<UserObjectForm> getAllUser() {
		
		return userDAO.getAllUser();
	}

	@Transactional
	public void deleteUser(Integer userId) {
		userDAO.deleteUser(userId);
		
	}

	public UserObjectForm getUser(int userId) {
		// TODO Auto-generated method stub
		return userDAO.getUser(userId);
	}

	public UserObjectForm updateUser(UserObjectForm user) {
		// TODO Auto-generated method stub
		return userDAO.updateUser(user);
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

    public boolean findUser(int userId) {
               return userDAO.finduser(userId);
    }


}
