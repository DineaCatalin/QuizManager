package Proiect731.controllers;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Proiect731.entity.Utilizator;

@Controller
public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET, consumes = MediaType.APPLICATION_JSON_VALUE)
	public boolean login(@RequestParam String username, @RequestParam String encodedPassword) {
		
		UtilizatorController ctrl = new UtilizatorController();
		Utilizator user = ctrl.getByUsername(username);
		
			if(user != null && user.getParola().equals(encodedPassword))
				return true;
		return false;
	}
}
