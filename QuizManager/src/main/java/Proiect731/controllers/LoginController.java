package Proiect731.controllers;

import Proiect731.entity.Utilizator;
import Proiect731.service.UtilizatorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@CrossOrigin
public class LoginController {

	@Autowired
	private UtilizatorService service;

	@GetMapping(path = "/login/{username}/{encodedPassword}")
	@ResponseBody
	public String login(@PathVariable("username") String username, @PathVariable("encodedPassword") String encodedPassword) {

		Utilizator user = service.getUtilizator(username);

			if(user != null && user.getParola().equals(encodedPassword))
				return "true";
		return "false";
	}
}
