package Proiect731.QuizManager;

import Proiect731.entity.Utilizator;
import Proiect731.service.UtilizatorService;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.assertNotNull;

@Ignore
@RunWith(SpringRunner.class)
@SpringBootTest
public class UtilizatorTest {

	@Autowired
	private UtilizatorService service;

	/**
	 * JUnit test Service-UtilizatorService- for Entity -Utilizator- Service
	 * 
	 */
	@Test
	public void testUtilizatorService() {

		Utilizator u1 = new Utilizator("Stefan", "1234", 1);

		u1 = service.saveOrUpdateUtilizator(u1);//Save()

		Iterable<Utilizator> utilizatoriList = service.getAllUtilizatori();//finAll()
		assertNotNull(utilizatoriList);
		//System.out.println(service.getAllUtilizatori());
//		service.deleteUtilizator(u1.getIdUtilizator());//delete
//		assertNull(service.getUtilizator(u1.getIdUtilizator()));//getUtilizator
	}
}
