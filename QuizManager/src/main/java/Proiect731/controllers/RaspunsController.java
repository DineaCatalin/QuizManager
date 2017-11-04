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

import Proiect731.entity.Raspuns;
import Proiect731.service.RaspunsService;

@RestController
@CrossOrigin
public class RaspunsController {

	@Autowired
	private RaspunsService service;

	@GetMapping(path = "/getRaspuns")
	public @ResponseBody Iterable<Raspuns> getAllRaspunsuri() {
		return service.getAllRaspuns();
	}

	@GetMapping("/getRaspuns/{id}")
	public String getById(@PathVariable("id") int id) {
		Raspuns obj = service.getRaspuns(id);
		if (obj == null) {
			return "Intrebare not found!";
		}

		return "" + obj;
	}

	@RequestMapping(value = "/createRaspuns", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String create(@RequestBody Raspuns obj) {
		String id = "";
		try {
			service.saveOrUpdateRaspuns(obj);
			id = String.valueOf(obj.getIdRaspuns());
		} catch (Exception ex) {
			return "Error creating the raspuns: " + ex.toString();
		}
		return "Raspuns succesfully created with id = " + id;
	}

	@GetMapping("/deleteRaspuns/{id}")
	public String delete(@PathVariable("id") int id) {
		try {
			service.deleteRaspuns(id);
		} catch (Exception ex) {
			return "Error deleting raspuns : " + ex.toString();
		}
		return "Raspuns succesfully deleted!";
	}

	@RequestMapping("/updateRaspuns/{id}")
	@ResponseBody
	public String Update(@RequestBody Raspuns object, @PathVariable int id) {
		try {
			object.setIdRaspuns(id);
			service.saveOrUpdateRaspuns(object);
		} catch (Exception ex) {
			return "Error updating Raspuns" + ex.toString();
		}
		return "Raspuns succesfully updated!";
	}
}
