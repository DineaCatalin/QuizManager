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

import Proiect731.entity.TraducereRaspuns;
import Proiect731.service.RaspunsService;
import Proiect731.service.TraducereRaspunsService;

@RestController
@CrossOrigin
public class TraducereRaspunsController {

	@Autowired
	private TraducereRaspunsService service;
	@Autowired
	private RaspunsService raspunsService;

	@GetMapping(path = "/getRaspunsTraduse")
	public @ResponseBody Iterable<TraducereRaspuns> getAllRaspunsuriTraduse() {
		return service.getAllTraducereRaspunsuri();
	}

	@GetMapping("/getRaspunsTraduse/{id}")
	public TraducereRaspuns getById(@PathVariable("id") int id) {
		return service.getTraducereRaspuns(id);
	}

	@GetMapping("/getRaspunsTraduseByRaspuns/{id}")
	public List<TraducereRaspuns> getByRaspuns(@PathVariable("id") int id) {
		return service.getTraduceriByRaspuns(raspunsService.getRaspuns(id));
	}

	@RequestMapping(value = "/createRaspunsTraduse", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public TraducereRaspuns create(@RequestBody TraducereRaspuns obj) {
		System.out.println(obj);
		return service.saveOrUpdateTraducereRaspuns(obj);
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

	@RequestMapping("/updateRaspunsTraduse")
	@ResponseBody
	public TraducereRaspuns Update(@RequestBody TraducereRaspuns object) {
		return service.saveOrUpdateTraducereRaspuns(object);
	}
}
