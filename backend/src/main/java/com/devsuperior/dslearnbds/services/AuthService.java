package com.devsuperior.dslearnbds.services;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.common.exceptions.UnauthorizedClientException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.devsuperior.dslearnbds.entities.User;
import com.devsuperior.dslearnbds.repositories.UserRepository;
import com.devsuperior.dslearnbds.services.exceptions.ForbiddenException;
import com.devsuperior.dslearnbds.services.exceptions.UnAuthorizedException;

@Service
public class AuthService {

	@Autowired
	private UserRepository repository;
	
	@Transactional(readOnly = true)
	public User authenticated() {
		try {
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		return repository.findByEmail(username);
	}catch (Exception e) {
		throw new UnAuthorizedException("Invalid User");
	}
  }	
	
	public void validateSelfOrAdmin(Long userId) {
		User user = authenticated();
		
		if(!user.getId().equals(userId) && !user.hasHole("ROLE_ADMIN")) {
			throw new ForbiddenException("Acess denied");
		}
	}
}
