package Proiect731.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Proiect731.entity.TraducereRaspuns;
import Proiect731.repository.TraducereRaspunsRepo;

@Service
public class TraducereRaspunsService {

	 @Autowired
	    private TraducereRaspunsRepo traducereRaspunsRepository;

	    public Iterable<TraducereRaspuns> getAllTraducereRaspunsuri() {
	        return traducereRaspunsRepository.findAll();
	    }

	    public TraducereRaspuns getTraducereRaspuns(int id) {
	        return traducereRaspunsRepository.findOne(id);
	    }

	    public TraducereRaspuns saveOrUpdateTraducereRaspuns(TraducereRaspuns traducereR) {
	    	return traducereRaspunsRepository.save(traducereR);
	    }

	    public void deleteTraducereRaspuns(int id) {
	    	traducereRaspunsRepository.delete(id);
	    }
}
