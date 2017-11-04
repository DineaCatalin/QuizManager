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

import Proiect731.entity.TraducereRaspuns;
import Proiect731.service.TraducereRaspunsService;

@RestController
@CrossOrigin
public class TraducereRaspunsController {

	@Autowired
	private TraducereRaspunsService service;

	@GetMapping(path = "/getRaspunsTraduse")
	public @ResponseBody Iterable<TraducereRaspuns> getAllRaspunsuriTraduse() {
		return service.getAllTraducereRaspunsuri();
	}

	@GetMapping("/getRaspunsTraduse/{id}")
	public String getById(@PathVariable("id") int id) {
		TraducereRaspuns obj = service.getTraducereRaspuns(id);
		if (obj == null) {
			return "TraducereRaspuns not found!";
		}

		return "" + obj;
	}

	@RequestMapping(value = "/createRaspunsTraduse", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String create(@RequestBody TraducereRaspuns obj) {
		String id = "";
		try {
			service.saveOrUpdateTraducereRaspuns(obj);
			id = String.valueOf(obj.getIdTraducere());
		} catch (Exception ex) {
			return "Error creating the TraducereRaspuns: " + ex.toString();
		}
		return "TraducereRaspuns succesfully created with id = " + id;
	}

	@GetMapping("/deleteRaspunsTraduse/{id}")
	public String delete(@PathVariable("id") int id) {
		try {
			service.deleteTraducereRaspuns(id);
		} catch (Exception ex) {
			return "Error deleting TraducereRaspuns : " + ex.toString();
		}
		return "TraducereRaspuns succesfully deleted!";
	}

	@RequestMapping("/updateRaspunsTraduse/{id}")
	@ResponseBody
	public String Update(@RequestBody TraducereRaspuns object, @PathVariable int id) {
		try {
			object.setIdTraducere(id);
			service.saveOrUpdateTraducereRaspuns(object);
		} catch (Exception ex) {
			return "Error updating TraducereRaspuns" + ex.toString();
		}
		return "TraducereRaspuns succesfully updated!";
	}
}
