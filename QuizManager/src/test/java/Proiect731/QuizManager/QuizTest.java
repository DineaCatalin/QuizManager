package Proiect731.QuizManager;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import Proiect731.entity.Quiz;
import Proiect731.entity.Utilizator;
import Proiect731.service.QuizService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class QuizTest {

	@Autowired
	private QuizService service;

	/**
	 * Test pt clasa -Quiz- si serviciul -QuizService-
	 */
	@Test
	public void testGettAllQuiz() {
		Utilizator u1 = new Utilizator("Stefan", "1234", 1);
		Quiz q1 = new Quiz(30, "mediu", u1);

		q1 = service.saveOrUpdateQuiz(q1);// saveQuiz
		Iterable<Quiz> listQuiz = service.getAllQuizuri();// getAllQuiz
		assertNotNull(listQuiz);

		service.deleteQuiz(q1.getIdQuiz());// deleteQuiz
		assertNull(service.getQuiz(q1.getIdQuiz()));// getQuiz

	}
}
