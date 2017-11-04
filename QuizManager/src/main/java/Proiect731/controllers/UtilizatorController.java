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

	@GetMapping("/getUtilizator/{id}")
	public String getById(@PathVariable("id") int id) {
		Utilizator utilizator = service.getUtilizator(id);
		if (utilizator == null) {
			return "Utilizator not found!";
		}

		return "" + utilizator;
	}

	@RequestMapping(value = "/create", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String create(@RequestBody Utilizator utilizator) {
		String utilizatorId = "";
		try {
			service.saveOrUpdateUtilizator(utilizator);
			utilizatorId = String.valueOf(utilizator.getIdUtilizator());
		} catch (Exception ex) {
			return "Error creating the utilizator: " + ex.toString();
		}
		return "User succesfully created with id = " + utilizatorId;
	}

	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") int id) {
		try {
			service.deleteUtilizator(id);
		} catch (Exception ex) {
			return "Error deleting the utilizator : " + ex.toString();
		}
		return "Utilizator succesfully deleted!";
	}

	@RequestMapping("/update/{id}")
	@ResponseBody
	public String Update(@RequestBody Utilizator object, @PathVariable int id) {
		try {
			object.setIdUtilizator(id);
			service.saveOrUpdateUtilizator(object);
		} catch (Exception ex) {
			return "Error updating Utilizator" + ex.toString();
		}
		return "utilizator succesfully updated!";
	}
}
