package Proiect731.QuizManager;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import Proiect731.entity.Intrebare;
import Proiect731.entity.TraducereIntrebare;
import Proiect731.service.TraducereIntrebareService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class TraducereIntrebareTest {
	@Autowired
	private TraducereIntrebareService service;

	/**
	 * Test pt clasa -TraducereIntrebare- si serviciul -TraducereIntrebareService-
	 */
	@Test
	public void testTraducereIntrebare() {
		Intrebare intrebare = new Intrebare();
		TraducereIntrebare traducereI = new TraducereIntrebare("enunt", "limba", intrebare);

		traducereI = service.saveOrUpdateTraducereIntrebare(traducereI);// save
		Iterable<TraducereIntrebare> lista = service.getAllTraducereIntrebari();// getAll
		assertNotNull(lista);

		service.deleteTraducereIntrebare(traducereI.getIdTraducere());// delete
		assertNull(service.getTraducereIntrebare(traducereI.getIdTraducere()));

	}
}
