package Proiect731.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Proiect731.entity.Raspuns;
import Proiect731.repository.RaspunsRepo;

@Service
public class RaspunsService {

	@Autowired
    private RaspunsRepo RaspunsRepository;

    public Iterable<Raspuns> getAllRaspuns() {
        return RaspunsRepository.findAll();
    }

    public Raspuns getRaspuns(int id) {
        return RaspunsRepository.findOne(id);
    }

    public Raspuns saveOrUpdateRaspuns(Raspuns raspuns) {
    	return RaspunsRepository.save(raspuns);
    }

    public void deleteRaspuns(int id) {
    	RaspunsRepository.delete(id);
    }
}
