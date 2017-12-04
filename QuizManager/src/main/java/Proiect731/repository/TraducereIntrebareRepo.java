package Proiect731.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import Proiect731.entity.Intrebare;
import Proiect731.entity.Raspuns;
import Proiect731.entity.TraducereIntrebare;
public interface TraducereIntrebareRepo extends CrudRepository<TraducereIntrebare,Integer>{
	public List<TraducereIntrebare> getTraducereIntrebareByIntrebare(Intrebare intrebare);
	
	@Transactional
	@Modifying
	@Query("delete from TraducereIntrebare where id_intrebare = ?1")
	public void deleteByIntrebare(Intrebare intrebare);
}
