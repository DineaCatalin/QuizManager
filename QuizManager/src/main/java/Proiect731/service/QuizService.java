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
        Iterable<Intrebare> intrebari = intrebareService.filter(nivelDificultate.toString(), limbaj, "___", tehnologii, "___", "___", false, "");
        Set<Intrebare> intrebariToAdd = toSet(intrebari);

        int punctajTotal = 0;
        for (Intrebare i : intrebariToAdd) {
            punctajTotal += i.getPunctaj();
        }
        quiz.setPunctajTotal(punctajTotal);
        quiz.setIntrebari(intrebariToAdd);
        quizRepo.save(quiz);
        return quiz;

    }

    /**
     * conerts from iterable to set
     *
     * @param collection
     * @param <T>
     * @return
     */
    public <T> Set<T> toSet(Iterable<T> collection) {
        HashSet<T> set = new HashSet<T>();
        for (T item : collection)
            set.add(item);
        return set;
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
