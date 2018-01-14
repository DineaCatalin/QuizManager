package Proiect731.controllers;

import Proiect731.entity.Utilizator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class LoginController {

	@GetMapping(path = "/login/{username}/{encodedPassword}")
	public Boolean login(@PathVariable("username") String username, @PathVariable("encodedPassword") String encodedPassword) {
		
		UtilizatorController ctrl = new UtilizatorController();
		Utilizator user = ctrl.getByUsername(username);

			if(user != null && user.getParola().equals(encodedPassword))
				return true;
		return false;
	}
}
