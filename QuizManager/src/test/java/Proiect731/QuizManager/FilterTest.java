package Proiect731.QuizManager;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import Proiect731.controllers.IntrebareController;
import Proiect731.entity.Intrebare;
import Proiect731.entity.Raspuns;
import Proiect731.entity.TraducereIntrebare;
import Proiect731.service.IntrebareService;
import Proiect731.service.RaspunsService;
import Proiect731.service.TraducereIntrebareService;

@Ignore
@RunWith(SpringRunner.class)
@SpringBootTest
public class FilterTest {

    @Test
    public void test() {

    }

//	@Autowired
//	private IntrebareService serviceIntreb;
//	
//	@Autowired
//	private TraducereIntrebareService serviceTrad;
//	
//	@Autowired
//	private RaspunsService serviceRaspuns;
//	
//	@Autowired
//	private IntrebareController intrCtrl= new IntrebareController();
//	
//	
//	Intrebare i1;
//	Intrebare i2;
//	Intrebare i3;
//	Intrebare i4;
//	Intrebare i5;
//	Intrebare i6;
//	
//	@Before
//	public void beforeTest() {
//		i1=new Intrebare(2,"java","it","eclipse",10);
//		 i2=new Intrebare(2,"sql","baze de date","mysql workbench",10);
//		 i3=new Intrebare(3,"java","it","eclipse",15);
//		 i4=new Intrebare(1,"html","web","visual studio code",5);
//		 i5=new Intrebare(4,"html","web","visual studio code",20);
//		 i6=new Intrebare(4,"html","web","visual studio code",20);
//		
//		Set<TraducereIntrebare> tr1= new HashSet<TraducereIntrebare>();
//		tr1.add(new TraducereIntrebare("Care este limba oficiala a Romaniei?", "romana", i1));
//		i1.setTraduceri(tr1);
//		
//		Set<TraducereIntrebare> tr2= new HashSet<TraducereIntrebare>();
//		tr2.add(new TraducereIntrebare("As dd ssaa adsd asd sdasdaadd sasaasdsasd asdadsdsa?", "romana", i2));
//		i2.setTraduceri(tr2);
//		
//		Set<TraducereIntrebare> tr3= new HashSet<TraducereIntrebare>();
//		tr3.add(new TraducereIntrebare("Baifad kajnfdkjsn Test ksajvns kjasnd?", "romana", i3));
//		i3.setTraduceri(tr3);
//		
//		Set<TraducereIntrebare> tr4= new HashSet<TraducereIntrebare>();
//		tr4.add(new TraducereIntrebare("akjfnshbf janfajdsf Test kjsbgjdf aklngskjdf?", "engleza", i4));
//		i4.setTraduceri(tr4);
//		
//		Set<TraducereIntrebare> tr5= new HashSet<TraducereIntrebare>();
//		tr5.add(new TraducereIntrebare("asdkmdn ksjnbgdjfbg kjfnbfd asd jdfhbndgf?", "romana", i5));
//		i5.setTraduceri(tr5);
//		
//		Set<TraducereIntrebare> tr6= new HashSet<TraducereIntrebare>();
//		tr6.add(new TraducereIntrebare("asvsadjvbsdb bhdvskhd fbshj khbsdvkshdb?", "romana", i6));
//		i6.setTraduceri(tr6);
//		
//		Raspuns r11= new Raspuns("limba romana",false,i1);
//		Raspuns r12= new Raspuns("limba maghiara",false,i1);
//		Raspuns r13= new Raspuns("davai ceas",true,i1);
//		Raspuns r14= new Raspuns("nici un raspuns nu este corect",false,i1);
//		
//		Raspuns r21= new Raspuns("Asd",false,i2);
//		Raspuns r22= new Raspuns("Dsa",false,i2);
//		Raspuns r23= new Raspuns("Sad",true,i2);
//		Raspuns r24= new Raspuns("Das",true,i2);
//		
//		Raspuns r31= new Raspuns("adsa",true,i3);
//		Raspuns r32= new Raspuns("sdfadfds",true,i3);
//		Raspuns r33= new Raspuns("sgdfgs",false,i3);
//		Raspuns r34= new Raspuns("gfsdkfjgn",true,i3);
//		
//		Raspuns r41= new Raspuns("asdf",true,i4);
//		Raspuns r42= new Raspuns("gdsffdsg",true,i4);
//		Raspuns r43= new Raspuns("afda",false,i4);
//		Raspuns r44= new Raspuns("dafafds",false,i4);
//		
//		Raspuns r51= new Raspuns("asdag",false,i5);
//		Raspuns r52= new Raspuns("hjndbg",false,i5);
//		Raspuns r53= new Raspuns("gasdg",false,i5);
//		Raspuns r54= new Raspuns("kmgkhnjasdbx",false,i5);
//		
//		Raspuns r61= new Raspuns("asfdasd",true,i6);
//		Raspuns r62= new Raspuns("asdfads",true,i6);
//		Raspuns r63= new Raspuns("asdgasd",true,i6);
//		Raspuns r64= new Raspuns("svbfsdjasd",true,i6);
//		
//		
//		Set<Raspuns> rasp1= new HashSet<Raspuns>();
//		rasp1.add(r11);
//		rasp1.add(r12);
//		rasp1.add(r13);
//		rasp1.add(r14);
//		i1.setRaspunsuri(rasp1);
//		
//		Set<Raspuns> rasp2= new HashSet<Raspuns>();
//		rasp2.add(r21);
//		rasp2.add(r22);
//		rasp2.add(r23);
//		rasp2.add(r24);
//		i2.setRaspunsuri(rasp2);
//		
//		Set<Raspuns> rasp3= new HashSet<Raspuns>();
//		rasp3.add(r31);
//		rasp3.add(r32);
//		rasp3.add(r33);
//		rasp3.add(r34);
//		i3.setRaspunsuri(rasp3);
//		
//		Set<Raspuns> rasp4= new HashSet<Raspuns>();
//		rasp4.add(r41);
//		rasp4.add(r42);
//		rasp4.add(r43);
//		rasp4.add(r44);
//		i4.setRaspunsuri(rasp4);
//		
//		Set<Raspuns> rasp5= new HashSet<Raspuns>();
//		rasp5.add(r51);
//		rasp5.add(r52);
//		rasp5.add(r53);
//		rasp5.add(r54);
//		i5.setRaspunsuri(rasp5);
//		
//		Set<Raspuns> rasp6= new HashSet<Raspuns>();
//		rasp6.add(r61);
//		rasp6.add(r62);
//		rasp6.add(r63);
//		rasp6.add(r64);
//		i6.setRaspunsuri(rasp6);
//		
//		i1=serviceIntreb.saveOrUpdateIntrebare(i1);
//		i2=serviceIntreb.saveOrUpdateIntrebare(i2);
//		i3=serviceIntreb.saveOrUpdateIntrebare(i3);
//		i4=serviceIntreb.saveOrUpdateIntrebare(i4);
//		i5=serviceIntreb.saveOrUpdateIntrebare(i5);
//		i6=serviceIntreb.saveOrUpdateIntrebare(i6);
//	}
//	
//	@Test
//	public void testFilter1() {
//		
//		 
//		
//		
//		
//		
//		
//		
//		
//		Iterable<Intrebare> intrebariList = serviceIntreb.getAllIntrebari();// getAll
//		assertNotNull(intrebariList);
//		
//		
//		List<Integer> dif1= Arrays.asList(2,4);
//		List<String> limbaj1=Arrays.asList("java","sql");
//		List<Integer> raspCorNr1=Arrays.asList(1,3,4);
//		List<Intrebare> l1=(List<Intrebare>)intrCtrl.Filter(dif1, limbaj1, "it", "eclipse", raspCorNr1, "Romaniei", true, "romana");
//	
//		List<Intrebare> expect1=Arrays.asList(i1);
//		
//		
//		
//		
//		assertEquals(expect1.get(0).getIdIntrebare(), l1.get(0).getIdIntrebare());
//		assertEquals(l1.get(0).getTraducere().iterator().next().getEnunt(),"Care este limba oficiala a Romaniei?");
//		System.out.println(l1.size());
//		
//		
//		
//		
//		
//		
//		
//	}
//
//	@After
//	public void afterTest() {
//	
//		serviceIntreb.deleteIntrebare(i1.getIdIntrebare());// deleteIntrebare
//		assertNull(serviceIntreb.getIntrebare(i1.getIdIntrebare()));
//		
//		serviceIntreb.deleteIntrebare(i2.getIdIntrebare());// deleteIntrebare
//		assertNull(serviceIntreb.getIntrebare(i2.getIdIntrebare()));
//		serviceIntreb.deleteIntrebare(i3.getIdIntrebare());// deleteIntrebare
//		assertNull(serviceIntreb.getIntrebare(i3.getIdIntrebare()));
//		serviceIntreb.deleteIntrebare(i4.getIdIntrebare());// deleteIntrebare
//		assertNull(serviceIntreb.getIntrebare(i4.getIdIntrebare()));
//		serviceIntreb.deleteIntrebare(i5.getIdIntrebare());// deleteIntrebare
//		assertNull(serviceIntreb.getIntrebare(i5.getIdIntrebare()));
//		
//		serviceIntreb.deleteIntrebare(i6.getIdIntrebare());// deleteIntrebare
//		assertNull(serviceIntreb.getIntrebare(i6.getIdIntrebare()));
//	
//	}
}
