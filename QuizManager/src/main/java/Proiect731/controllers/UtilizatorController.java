package Proiect731.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import Proiect731.entity.Utilizator;
import Proiect731.service.UtilizatorService;

@RestController
@CrossOrigin
public class UtilizatorController {

	@Autowired
	private UtilizatorService service;

	@GetMapping(path = "/getUtilizatori")
	public @ResponseBody Iterable<Utilizator> getAllUtilizatori() {
		return service.getAllUtilizatori();
	}

	@GetMapping("/getUtilizator/{username}")
	public Utilizator getByUsername(@PathVariable("username") String username) {
		Utilizator utilizator = service.getUtilizator(username);
		return utilizator;
	}

	@RequestMapping(value = "/create", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String create(@RequestBody Utilizator utilizator) {
		String username = "";
		try {
			if (service.getUtilizator(utilizator.getUsername()) != null)
				return "The user already exists!";
			utilizator.setRangAcces(2); //user
			service.saveOrUpdateUtilizator(utilizator);
			username = String.valueOf(utilizator.getUsername());

		} catch (Exception ex) {
			return "Error creating the utilizator: " + ex.toString();
		}
		return "User succesfully created with id = " + username;
	}

	@GetMapping("/delete/{username}")
	public String delete(@PathVariable("username") String username) {
		try {
			service.deleteUtilizator(username);
		} catch (Exception ex) {
			return "Error deleting the utilizator : " + ex.toString();
		}
		return "Utilizator succesfully deleted!";
	}

	@RequestMapping("/update/{username}")
	@ResponseBody
	public String Update(@RequestBody Utilizator object, @PathVariable String username) {
		try {
			service.saveOrUpdateUtilizator(object);
		} catch (Exception ex) {
			return "Error updating Utilizator" + ex.toString();
		}
		return "utilizator succesfully updated!";
	}
}
