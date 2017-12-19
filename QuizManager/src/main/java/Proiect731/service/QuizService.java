package Proiect731.service;

import java.util.*;

import Proiect731.entity.Intrebare;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Proiect731.entity.Quiz;
import Proiect731.repository.QuizRepo;
import javassist.compiler.ast.ASTList;

@Service
public class QuizService {

    @Autowired
    private QuizRepo quizRepo;
    @Autowired
    private IntrebareService intrebareService;

    public Quiz generateQuiz(final Integer nrIntrebari, final Integer nivelDificultate, final String limbaj, final String tehnologii) {
        Quiz quiz = new Quiz();


        final List<Intrebare> toateIntrebarile = (List<Intrebare>) intrebareService.getIntrebareRepository().findAll();
        List<Intrebare> intrebariFiltrate = new ArrayList<>();
        Set<Intrebare> interbariToAdd = new HashSet<>();


        toateIntrebarile.forEach(intrebare -> {
            if ((intrebare.getNivelDificultate() == nivelDificultate.intValue()) && (intrebare.getLimbaj().equals(limbaj)) && (intrebare.getTehnologie().equals(tehnologii))) {
                intrebariFiltrate.add(intrebare);
            }
        });

        //TODO: nu imi face filtrarea cum trebuie=> intrebariFiltrare = null ----
        for (int i = 0; i < nrIntrebari; i++) {
            if (intrebariFiltrate.size() > 0) {

                int randomNum = 0 + (int) (Math.random() * (intrebariFiltrate.size() - 1));
                interbariToAdd.add(intrebariFiltrate.get(randomNum));
            }
        }
        quiz.setIntrebari(interbariToAdd);
        quizRepo.save(quiz);
        return quiz;

    }

    /**
     * generatesa a lsit of random quizzes
     *
     * @return List<Quiz>
     */
    public List<Quiz> generateRandomQuizzes() {
        List<Quiz> generatedQuizzes = new ArrayList<>();
        Iterable<Quiz> itQuiezzes = getAllQuizzes();

        itQuiezzes.forEach(q -> generatedQuizzes.add(q));
        Collections.shuffle(generatedQuizzes);

        return generatedQuizzes;
    }

    public Iterable<Quiz> getAllQuizzes() {
        return quizRepo.findAll();
    }

    public Quiz getQuiz(int id) {
        return quizRepo.findOne(id);
    }

    public Quiz saveOrUpdateQuiz(Quiz quiz) {
        return quizRepo.save(quiz);
    }

    public void deleteQuiz(int id) {
        quizRepo.delete(id);
    }
}
