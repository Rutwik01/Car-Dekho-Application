package com.rbprojects.springmvc.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.rbprojects.springmvc.dao.UserDAO;
import com.rbprojects.springmvc.dto.CarDTO;
import com.rbprojects.springmvc.dto.UserDTO;

@Component
public class UserService {
	@Autowired
	private UserDAO userDAO;

	public UserDTO addUser(String email, String password) {
		UserDTO addedUser = null;
		boolean flag = true;
		List<UserDTO> users = userDAO.findAllUsers();
		for (UserDTO user : users) {
			if (user.getEmail().equals(email)) {
				flag = false;
				break;
			}
		}
		if (flag) {
			UserDTO userDTO = new UserDTO();
			userDTO.setEmail(email);
			userDTO.setPassword(password);
			userDTO.setCars(new ArrayList<CarDTO>());
			addedUser = userDAO.addUser(userDTO);
		}
		return addedUser;

	}

	public UserDTO checkUser(String email, String password) {
		List<UserDTO> users = userDAO.findAllUsers();
		UserDTO signedInUser = null;
		for (UserDTO user : users) {
			if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
				signedInUser = user;
				break;
			}
		}
		return signedInUser;
	}

	public void updateUser(UserDTO signedInUser, CarDTO addedCar) {
		userDAO.updateUser(signedInUser.getId(), addedCar.getId());
	}

	public void deleteUser(UserDTO signedInUser) {
		userDAO.deleteUser(signedInUser.getId());
	}
}
