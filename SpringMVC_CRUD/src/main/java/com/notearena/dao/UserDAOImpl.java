package com.notearena.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.notearena.model.UserObjectForm;


@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addUser(UserObjectForm employee) {
		sessionFactory.getCurrentSession().save(employee);
	}
	
	@SuppressWarnings("unchecked")
	public List<UserObjectForm> getAllUser() {
		return sessionFactory.getCurrentSession().createQuery("from UserObjectForm")
				.list();
	}

	public void deleteUser(Integer userId) {
		UserObjectForm employee = sessionFactory.getCurrentSession().get(
				UserObjectForm.class, userId);
		if (employee != null) {
			sessionFactory.getCurrentSession().delete(employee);
		}
	}

	
	public UserObjectForm updateUser(UserObjectForm user) {
		sessionFactory.getCurrentSession().update(user);
		return user;
	}

	public UserObjectForm getUser(int userId) {
		return (UserObjectForm) sessionFactory.getCurrentSession().get(
				UserObjectForm.class, userId);
	}

    public boolean findUser(int userId) {
        return sessionFactory.getCurrentSession().get(UserObjectForm.class, userId) != null;
    }

        
	

}