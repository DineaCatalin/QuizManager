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

import Proiect731.entity.TraducereIntrebare;
import Proiect731.service.TraducereIntrebareService;

@RestController
@CrossOrigin
public class TraducereIntrebareController {
	@Autowired
	private TraducereIntrebareService service;

	@GetMapping(path = "/getIntrebariTraduse")
	public @ResponseBody Iterable<TraducereIntrebare> getAllIntrebariTraduse() {
		return service.getAllTraducereIntrebari();
	}

	@GetMapping("/getIntrebariTraduse/{id}")
	public String getById(@PathVariable("id") int id) {
		TraducereIntrebare obj = service.getTraducereIntrebare(id);
		if (obj == null) {
			return "TraducereIntrebare not found!";
		}

		return "" + obj;
	}

	@RequestMapping(value = "/createIntrebariTraduse", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String create(@RequestBody TraducereIntrebare obj) {
		String id = "";
		try {
			service.saveOrUpdateTraducereIntrebare(obj);
			id = String.valueOf(obj.getIdTraducere());
		} catch (Exception ex) {
			return "Error creating the TraducereIntrebare: " + ex.toString();
		}
		return "TraducereIntrebare succesfully created with id = " + id;
	}

	@GetMapping("/deleteIntrebariTraduse/{id}")
	public String delete(@PathVariable("id") int id) {
		try {
			service.deleteTraducereIntrebare(id);
		} catch (Exception ex) {
			return "Error deleting TraducereIntrebare : " + ex.toString();
		}
		return "TraducereIntrebare succesfully deleted!";
	}

	@RequestMapping("/updateIntrebariTraduse/{id}")
	@ResponseBody
	public String Update(@RequestBody TraducereIntrebare object, @PathVariable int id) {
		try {
			object.setIdTraducere(id);
			service.saveOrUpdateTraducereIntrebare(object);
		} catch (Exception ex) {
			return "Error updating TraducereIntrebare" + ex.toString();
		}
		return "TraducereIntrebare succesfully updated!";
	}

}
