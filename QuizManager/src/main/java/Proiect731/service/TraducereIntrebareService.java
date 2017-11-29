package Proiect731.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Proiect731.entity.Intrebare;
import Proiect731.entity.TraducereIntrebare;
import Proiect731.repository.TraducereIntrebareRepo;

@Service
public class TraducereIntrebareService {

	 @Autowired
	    private TraducereIntrebareRepo traducereIntrebareRepository;

	    public Iterable<TraducereIntrebare> getAllTraducereIntrebari() {
	        return traducereIntrebareRepository.findAll();
	    }

	    public TraducereIntrebare getTraducereIntrebare(int id) {
	        return traducereIntrebareRepository.findOne(id);
	    }

	    public TraducereIntrebare saveOrUpdateTraducereIntrebare(TraducereIntrebare traducereI) {
	    	return traducereIntrebareRepository.save(traducereI);
	    }

	    public void deleteTraducereIntrebare(int id) {
	    	traducereIntrebareRepository.delete(id);
	    }
	    
	    public List<TraducereIntrebare> getTraducereIntrebareByIntrebare(Intrebare intrebare) {
	    	return this.traducereIntrebareRepository.getTraducereIntrebareByIntrebare(intrebare);
	    }
}
