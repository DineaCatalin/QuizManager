package Proiect731.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import Proiect731.entity.Intrebare;
import Proiect731.entity.Raspuns;

public interface RaspunsRepo extends CrudRepository<Raspuns, Integer> {
	public List<Raspuns> getRaspunsByIntrebare(Intrebare intrebare);
	
	@Transactional
	@Modifying
	@Query("delete from Raspuns where id_intrebare = ?1")
	public void deleteByIntrebare(Intrebare intrebare);
}
