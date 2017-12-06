package Proiect731.controllers;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

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
import Proiect731.entity.Raspuns;
import Proiect731.entity.TraducereIntrebare;
import Proiect731.entity.TraducereRaspuns;
import Proiect731.service.IntrebareService;
import Proiect731.service.RaspunsService;
import Proiect731.service.TraducereIntrebareService;
import Proiect731.service.TraducereRaspunsService;

@RestController
@CrossOrigin
public class IntrebareController {

	@Autowired
	private IntrebareService service;

	@Autowired
	private TraducereIntrebareService serviceTradIntreb;

	@Autowired
	private RaspunsService raspunsService;

	@GetMapping(path = "/getIntrebari")
	public @ResponseBody Iterable<Intrebare> getAllIntrebari() {
		return service.getAllIntrebari();
	}

	@GetMapping("/getIntrebari/{id}")
	public Intrebare getById(@PathVariable("id") int id) {
		return service.getIntrebare(id);
	}

	@RequestMapping(value = "/createIntrebare", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String create(@RequestBody Intrebare obj) {
		System.out.println("Suntem La creere");
		System.out.println(obj);
		obj.getTraduceri().stream().forEach(traducere ->traducere.setIdIntrebare(obj));
		obj.getRaspuns().stream().forEach(raspuns -> {
			raspuns.setIntrebare(obj);
			//System.out.println(raspuns);
			
			raspuns.getTraduceri().stream().forEach(traducereRaspuns-> traducereRaspuns.setIdRaspuns(raspuns));
			//System.out.println(raspuns.getTraduceri().size());
		});
		service.saveOrUpdateIntrebare(obj);
		return "successful";

	}

	@GetMapping("/deleteIntrebare/{id}")
	public String delete(@PathVariable("id") int id) {
		
		try {
			service.deleteIntrebare(id);
			System.out.println("Intrebare succesfully deleted!");
		} catch (Exception ex) {
			System.out.println("Eroare! " + ex.getMessage());
			return "Error deleting intrebare : " + ex.toString();
		}
		return "Intrebare succesfully deleted!";
	}

	@RequestMapping(value = "/updateIntrebare", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String Update(@RequestBody Intrebare object) {
		System.out.println("Suntem la update");
		System.out.println(object);
		object.getTraduceri().stream().forEach(traducere ->traducere.setIdIntrebare(object));
		object.getRaspuns().stream().forEach(raspuns -> {
			raspuns.setIntrebare(object);
			//System.out.println(raspuns);
			
			raspuns.getTraduceri().stream().forEach(traducereRaspuns-> traducereRaspuns.setIdRaspuns(raspuns));
			//System.out.println(raspuns.getTraduceri().size());
		});
		service.saveOrUpdateIntrebare(object);
		return "Update successful";
	}

	@RequestMapping("/filter/{dificultate}/{limbaj}/{domeniu}/{tehnologie}/{nrRaspunsuriCorecte}/{text}/{caseSensitive}/{limba}")
	public @ResponseBody Iterable<Intrebare> Filter(@PathVariable("dificultate") String dificultate,
			@PathVariable("limbaj") String limbaj, @PathVariable("domeniu") String domeniu,
			@PathVariable("tehnologie") String tehnologie, @PathVariable("nrRaspunsuriCorecte") String nrRaspunsuriCorecte,
			@PathVariable("text") String text, @PathVariable("caseSensitive") boolean caseSensitive,
			@PathVariable("limba") String limba) {

		return service.filter(dificultate, limbaj, domeniu, tehnologie, nrRaspunsuriCorecte, text, caseSensitive, limba);
	}

	
}
