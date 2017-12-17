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

    /**
     * method that generates a quiz
     *
     * @param nrIntrebari
     * @param nivelDificultate
     * @param limbaje
     * @param tehnologii
     * @return
     */
    public Quiz generateQuiz(Integer nrIntrebari, List<String> nivelDificultate, List<String> limbaje, List<String> domenii, List<String> tehnologii) {
        Quiz quiz = new Quiz();

        Set<Intrebare> intrebariToAdd = new HashSet<>();

        for (int i = 0; i < nrIntrebari; i++) {
            List<Intrebare> intrebariDinCareAleg= (List<Intrebare>) intrebareService.filter(nivelDificultate.get(i),limbaje.get(i), domenii.get(i), tehnologii.get(i),"___", "___", false, "___");
            int randomNum = 0 + (int)(Math.random() * intrebariDinCareAleg.size());
            Intrebare intrebare = new Intrebare(intrebariDinCareAleg.get(randomNum).getNivelDificultate(),intrebariDinCareAleg.get(randomNum).getLimbaj(), intrebariDinCareAleg.get(randomNum).getDomeniu(), intrebariDinCareAleg.get(randomNum).getTehnologie(), intrebariDinCareAleg.get(randomNum).getPunctaj());
            intrebariToAdd.add(intrebare);

        }
        quiz.setIntrebari(intrebariToAdd);
        return quiz;

    }

    public Quiz generateQuiz2(Integer nrIntrebari, Integer nivelDificultate, String limbaje, String tehnologii) {

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
