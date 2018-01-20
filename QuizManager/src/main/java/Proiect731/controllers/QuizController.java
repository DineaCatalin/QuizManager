package Proiect731.controllers;

import Proiect731.entity.Intrebare;
import Proiect731.entity.Quiz;
import Proiect731.entity.Utilizator;
import Proiect731.service.QuizService;
import Proiect731.service.UtilizatorService;
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

    @Autowired
    private UtilizatorService utilizatorService;

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

    @RequestMapping(value = "/saveOrUpdateQuiz/{username}/{score}/{quizId}", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public Quiz create(@PathVariable("username") String username, @PathVariable("score") int score, @PathVariable("quizId") int quizId) {
        //nu face cascade delete
        Utilizator utilizator = utilizatorService.getUtilizator(username);
        Quiz quizToUpdate = service.getQuiz(quizId);
        quizToUpdate.setPunctajTotal(score);
        quizToUpdate.setUtilizator(utilizator);
        return service.saveOrUpdateQuiz(quizToUpdate);
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

    @GetMapping(path = "/searchQuizes/{user}/{language}/{domain}/{technology}/{difficultyLevel}")
    public @ResponseBody
    List<Quiz> searchQuizes(@PathVariable String user, @PathVariable String language, @PathVariable String domain, @PathVariable String technology, @PathVariable Integer difficultyLevel) {

        ArrayList<Quiz> filteredQuizes = new ArrayList<>();
        Iterable<Quiz> allQuizzes = getQuizesForUser(user);

        allQuizzes.iterator().forEachRemaining(
                quiz -> filteredQuizes.add(filterQuizData(quiz, language, domain, technology, difficultyLevel)));

        return filteredQuizes;
    }

    private Quiz filterQuizData(Quiz quiz, String language, String domain, String technology, Integer difficultyLevel) {
        List<Intrebare> foundQuestions = quiz.getIntrebari().stream().filter(intrebare ->
                (!language.equals("undefined") ? intrebare.getLimbaj().equals(language) : true)
                        && (!domain.equals("undefined") ? intrebare.getDomeniu().equals(domain) : true)
                        && (!technology.equals("undefined") ? intrebare.getTehnologie().equals(technology) : true)
                        && (difficultyLevel != null ? difficultyLevel.equals(intrebare.getNivelDificultate()) : true))
                .collect(Collectors.toList());
        return foundQuestions.size() > 0 ? quiz : null;
    }

    @GetMapping("/getQuizes/{user}")
    public List<Quiz> getQuizesForUser(@PathVariable("user") String user) {
        Iterable<Quiz> allQuizzes = service.getAllQuizzes();
        ArrayList<Quiz> filteredQuizes = new ArrayList<>();

        allQuizzes.iterator().forEachRemaining(
                quiz -> filteredQuizes.add(quiz.getUtilizator().getUsername().equals(user) ? quiz : null));

        return filteredQuizes.stream().filter(value -> value != null).collect(Collectors.toList());
    }
}
