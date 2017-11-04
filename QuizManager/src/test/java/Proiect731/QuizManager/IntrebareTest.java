package Proiect731.QuizManager;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import Proiect731.entity.Intrebare;
import Proiect731.service.IntrebareService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class IntrebareTest {

	@Autowired
	private IntrebareService service;

	/**
	 * JUnit test Service-IntrebareService- for Entity -Intrebare- Service
	 * -saveOrUpdateIntrebarer- & -getAllIntrebari-
	 */
	@Test
	public void testIntrebare() {

		Intrebare i1 = new Intrebare(5, "java", "it", "eclipse", 10);

		i1 = service.saveOrUpdateIntrebare(i1);// save

		Iterable<Intrebare> intrebariList = service.getAllIntrebari();// getAll
		assertNotNull(intrebariList);
		System.out.print(service.getAllIntrebari());

		service.deleteIntrebare(i1.getIdIntrebare());// deleteIntrebare
		assertNull(service.getIntrebare(i1.getIdIntrebare()));// getIntrebare
	}
}
