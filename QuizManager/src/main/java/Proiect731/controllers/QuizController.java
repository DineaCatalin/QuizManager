package Proiect731.controllers;

import Proiect731.entity.Intrebare;
import Proiect731.entity.Quiz;
import Proiect731.service.QuizService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@CrossOrigin
public class QuizController {

    @Autowired
    private QuizService service;

    @GetMapping(path = "/getQuiz")
    public @ResponseBody
    Iterable<Quiz> getAllQuizuri() {
        return service.getAllQuizzes();
    }


    @RequestMapping(value = "/generateQuiz", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public Quiz generateQuiz(@RequestBody Receive receive) {
        return service.generateQuiz(receive.getNrInterbari(), receive.getNivelDificultate(), receive.getLimbaj(), receive.getTehnologie(), receive.getLimba());
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

    @GetMapping(path = "/searchQuizes/{language}/{domain}/{technology}/{difficultyLevel}")
    public @ResponseBody
    List<Quiz> searchQuizes(@PathVariable String language, @PathVariable String domain, @PathVariable String technology, @PathVariable Integer difficultyLevel) {

        ArrayList<Quiz> filteredQuizes = new ArrayList<>();
        Iterable<Quiz> allQuizzes = service.getAllQuizzes();

        allQuizzes.iterator().forEachRemaining(
                quiz -> filteredQuizes.add(filterQuizData(quiz, language, domain, technology, difficultyLevel)));

        return filteredQuizes;
    }

    private Quiz filterQuizData(Quiz quiz, String language, String domain, String technology, Integer difficultyLevel) {
        List<Intrebare> foundQuestions = quiz.getIntrebari().stream().filter(intrebare ->
                ( !language.equals("undefined") ? intrebare.getLimbaj().equals(language) : true)
                        && (!domain.equals("undefined") ? intrebare.getDomeniu().equals(domain) : true)
                        && (!technology.equals("undefined") ? intrebare.getTehnologie().equals(technology) : true)
                        && (difficultyLevel != null ? difficultyLevel.equals(intrebare.getNivelDificultate()) : true))
                .collect(Collectors.toList());
        return foundQuestions.size() > 0 ? quiz : null;
    }
    @GetMapping("/getQuizes/{user}")
    public List<Quiz> getById(@PathVariable("user") String user) {
        Iterable<Quiz> allQuizzes = service.getAllQuizzes();
        ArrayList<Quiz> filteredQuizes = new ArrayList<>();

        allQuizzes.iterator().forEachRemaining(
                quiz -> filteredQuizes.add(quiz.getUtilizator().getUsername().equals(user) ? quiz : null));

        return filteredQuizes;
    }
}
