package Proiect731.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import Proiect731.entity.Raspuns;
import Proiect731.entity.TraducereRaspuns;

public interface TraducereRaspunsRepo extends CrudRepository<TraducereRaspuns, Integer> {
	public List<TraducereRaspuns> getTraducereRaspunsByRaspuns(Raspuns raspuns);
}
