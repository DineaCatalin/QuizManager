package Proiect731.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import Proiect731.entity.Intrebare;
import Proiect731.entity.Raspuns;
import Proiect731.entity.TraducereRaspuns;

public interface TraducereRaspunsRepo extends CrudRepository<TraducereRaspuns, Integer> {
	public List<TraducereRaspuns> getTraducereRaspunsByRaspuns(Raspuns raspuns);
	
	@Transactional
	@Modifying
	@Query("delete from TraducereRaspuns where id_raspuns = ?1")
	public void deleteByRaspuns(Raspuns raspuns);
}
