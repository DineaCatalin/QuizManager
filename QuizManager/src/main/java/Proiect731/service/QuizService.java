package Proiect731.service;

import java.nio.channels.InterruptedByTimeoutException;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

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

    public Quiz generateQuiz(final Integer nrIntrebari, final Integer nivelDificultate, final String limbaj, final String tehnologii, final String limba)

    {
        Quiz quiz = new Quiz();
        Iterable<Intrebare> intrebari = intrebareService.filter(nivelDificultate.toString(), limbaj, "___", tehnologii, "___", "___", true, limba);

        Set<Intrebare> intrebariToAdd = new HashSet<>();

        List<Intrebare> filteredQuiestions = toListFromIterable(intrebari);


        int index = 0;
        while (index < nrIntrebari && index < filteredQuiestions.size()) {
            intrebariToAdd.add(filteredQuiestions.get(index));
            index++;
        }


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
     * Converts Iterable to list.
     *
     * @param iterable
     * @param <T>
     * @return
     */
    public static <T> List<T> toListFromIterable(final Iterable<T> iterable) {
        return StreamSupport.stream(iterable.spliterator(), false)
                .collect(Collectors.toList());
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
     * Converts {@link Iterable} to {@link List}
     *
     * @param iterable
     * @param <E>
     * @return
     */
    public static <E> List<E> toList(Iterable<E> iterable) {
        if (iterable instanceof List) {
            return (List<E>) iterable;
        }
        ArrayList<E> list = new ArrayList<E>();
        if (iterable != null) {
            for (E e : iterable) {
                list.add(e);
            }
        }
        return list;
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
