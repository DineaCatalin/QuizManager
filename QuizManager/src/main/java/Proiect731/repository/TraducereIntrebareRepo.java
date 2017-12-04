package Proiect731.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import Proiect731.entity.Intrebare;
import Proiect731.entity.TraducereIntrebare;
public interface TraducereIntrebareRepo extends CrudRepository<TraducereIntrebare,Integer>{
	public List<TraducereIntrebare> getTraducereIntrebareByIntrebare(Intrebare intrebare);
}
