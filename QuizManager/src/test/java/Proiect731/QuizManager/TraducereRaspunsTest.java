package Proiect731.QuizManager;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import Proiect731.entity.Raspuns;
import Proiect731.entity.TraducereRaspuns;
import Proiect731.service.TraducereRaspunsService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class TraducereRaspunsTest {

	@Autowired
	private TraducereRaspunsService service;

	/**
	 * Test pt clasa -TraducereRaspuns- si serviciul -TraducereRaspunsService-
	 */
	@Test
	public void testGettAllTraducereRaspunsuri() {
		Raspuns raspuns = new Raspuns();
		TraducereRaspuns traducereR = new TraducereRaspuns("enunt", "limba", raspuns);

		traducereR = service.saveOrUpdateTraducereRaspuns(traducereR);// saveQuiz
		Iterable<TraducereRaspuns> lista = service.getAllTraducereRaspunsuri();// getAllQuiz
		assertNotNull(lista);

		service.deleteTraducereRaspuns(traducereR.getIdTraducere());// deleteQuiz
		assertNull(service.getTraducereRaspuns(traducereR.getIdTraducere()));// getQuiz

	}
}
