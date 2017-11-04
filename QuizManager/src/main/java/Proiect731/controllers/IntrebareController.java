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

import Proiect731.entity.Intrebare;
import Proiect731.service.IntrebareService;

@RestController
@CrossOrigin
public class IntrebareController {

	@Autowired
	private IntrebareService service;

	@GetMapping(path = "/getIntrebari")
	public @ResponseBody Iterable<Intrebare> getAllIntrebari() {
		return service.getAllIntrebari();
	}

	@GetMapping("/getIntrebari/{id}")
	public String getById(@PathVariable("id") int id) {
		Intrebare obj = service.getIntrebare(id);
		if (obj == null) {
			return "Intrebare not found!";
		}

		return "" + obj;
	}

	@RequestMapping(value = "/createIntrebare", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String create(@RequestBody Intrebare obj) {
		String id = "";
		try {
			service.saveOrUpdateIntrebare(obj);
			id = String.valueOf(obj.getIdIntrebare());
		} catch (Exception ex) {
			return "Error creating the utilizator: " + ex.toString();
		}
		return "User succesfully created with id = " + id;
	}

	@GetMapping("/deleteIntrebare/{id}")
	public String delete(@PathVariable("id") int id) {
		try {
			service.deleteIntrebare(id);
		} catch (Exception ex) {
			return "Error deleting intrebare : " + ex.toString();
		}
		return "Intrebare succesfully deleted!";
	}

	@RequestMapping("/updateIntrebare/{id}")
	@ResponseBody
	public String Update(@RequestBody Intrebare object, @PathVariable int id) {
		try {
			object.setIdIntreabare(id);
			service.saveOrUpdateIntrebare(object);
		} catch (Exception ex) {
			return "Error updating Intrebare" + ex.toString();
		}
		return "Intrebare succesfully updated!";
	}
}
