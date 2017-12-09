package Proiect731.QuizManager;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import Proiect731.entity.Intrebare;
import Proiect731.entity.Raspuns;
import Proiect731.service.RaspunsService;

@Ignore
@RunWith(SpringRunner.class)
@SpringBootTest
public class RaspunsTest {
	@Autowired
	private RaspunsService serviceRaspuns;

	@Test
	public void testGetAllRaspunsuri() {

		Intrebare intrebare = new Intrebare();
		Raspuns raspuns = new Raspuns(true, intrebare);

		raspuns = serviceRaspuns.saveOrUpdateRaspuns(raspuns);

		Iterable<Raspuns> raspunsList = serviceRaspuns.getAllRaspuns();// finAll()
		assertNotNull(raspunsList);

		serviceRaspuns.deleteRaspuns(raspuns.getIdRaspuns());// delete
		assertNull(serviceRaspuns.getRaspuns(raspuns.getIdRaspuns()));// getUtilizator
	}
}
