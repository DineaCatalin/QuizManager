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

    public Quiz generateQuiz(Integer nrIntrebari, Integer nivelDificultate, String limbaje, String tehnologii) {

        Intrebare intrebare = new Intrebare();
        intrebare.setNivelDificultate(nivelDificultate);
        intrebare.setLimbaj(limbaje);
        intrebare.setTehnologie(tehnologii);

        Quiz quiz = new Quiz();

        Set<Intrebare> intrebareSet = new HashSet<>();
        intrebareSet.add(intrebare);

        quiz.setIntrebari(intrebareSet);
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
