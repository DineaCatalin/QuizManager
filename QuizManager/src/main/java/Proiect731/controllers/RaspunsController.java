package Proiect731.controllers;

import java.util.List;

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
import Proiect731.service.IntrebareService;
import Proiect731.service.RaspunsService;

@RestController
@CrossOrigin
public class RaspunsController {

	@Autowired
	private RaspunsService service;
	
	@Autowired
	private IntrebareService intService;

	@GetMapping(path = "/getRaspuns")
	public @ResponseBody Iterable<Raspuns> getAllRaspunsuri() {
		return service.getAllRaspuns();
	}

	@GetMapping("/getRaspuns/{id}")
	public Raspuns getById(@PathVariable("id") int id) {
		return service.getRaspuns(id);
	}
	
	@GetMapping("/getRaspunsByIntrebare/{id}")
	public List<Raspuns> getByIntrebare(@PathVariable("id") int id) {
		return service.getRaspunsByIntrebare(intService.getIntrebare(id));
	}

	@RequestMapping(value = "/createRaspuns", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Raspuns create(@RequestBody Raspuns obj) {
		System.out.println(obj);
		return service.saveOrUpdateRaspuns(obj);
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

	@RequestMapping("/updateRaspuns")
	@ResponseBody
	public Raspuns Update(@RequestBody Raspuns object) {
		return service.saveOrUpdateRaspuns(object);
	}
}
