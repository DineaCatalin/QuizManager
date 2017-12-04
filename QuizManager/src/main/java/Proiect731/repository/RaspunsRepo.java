package Proiect731.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import Proiect731.entity.Intrebare;
import Proiect731.entity.Raspuns;

public interface RaspunsRepo extends CrudRepository<Raspuns, Integer> {
	public List<Raspuns> getRaspunsByIntrebare(Intrebare intrebare);
}
