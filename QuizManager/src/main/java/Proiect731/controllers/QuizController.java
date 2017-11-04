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

import Proiect731.entity.Quiz;
import Proiect731.service.QuizService;

@RestController
@CrossOrigin
public class QuizController {

	@Autowired
	private QuizService service;

	@GetMapping(path = "/getQuiz")
	public @ResponseBody Iterable<Quiz> getAllQuizuri() {
		return service.getAllQuizuri();
	}

	@GetMapping("/getQuiz/{id}")
	public String getById(@PathVariable("id") int id) {
		Quiz obj = service.getQuiz(id);
		if (obj == null) {
			return "Intrebare not found!";
		}

		return "" + obj;
	}

	@RequestMapping(value = "/createQuiz", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String create(@RequestBody Quiz obj) {
		String id = "";
		try {
			service.saveOrUpdateQuiz(obj);
			id = String.valueOf(obj.getIdQuiz());
		} catch (Exception ex) {
			return "Error creating the quiz: " + ex.toString();
		}
		return "Quiz succesfully created with id = " + id;
	}

	@GetMapping("/deleteQuiz/{id}")
	public String delete(@PathVariable("id") int id) {
		try {
			service.deleteQuiz(id);
		} catch (Exception ex) {
			return "Error deleting quiz : " + ex.toString();
		}
		return "Quiz succesfully deleted!";
	}

	@RequestMapping("/updateQuiz/{id}")
	@ResponseBody
	public String Update(@RequestBody Quiz object, @PathVariable int id) {
		try {
			object.setIdQuiz(id);
			service.saveOrUpdateQuiz(object);
		} catch (Exception ex) {
			return "Error updating Quiz" + ex.toString();
		}
		return "Quiz succesfully updated!";
	}
}
