package Proiect731.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Proiect731.entity.Intrebare;
import Proiect731.entity.Raspuns;
import Proiect731.repository.IntrebareRepo;
import Proiect731.repository.RaspunsRepo;
import Proiect731.repository.TraducereIntrebareRepo;
import Proiect731.repository.TraducereRaspunsRepo;

@Service
public class IntrebareService {

	@Autowired
	private IntrebareRepo intrebareRepository;
	
	@Autowired
	private RaspunsRepo raspunsRepository;
	
	@Autowired
	private TraducereRaspunsRepo traducereRaspunsRepository;
	
	@Autowired
	private TraducereIntrebareRepo traducereIntrebareRepo;

	public Iterable<Intrebare> getAllIntrebari() {
		return intrebareRepository.findAll();
	}

	public Intrebare getIntrebare(int id) {
		return intrebareRepository.findOne(id);
	}

	public Intrebare saveOrUpdateIntrebare(Intrebare intrebare) {
		return intrebareRepository.save(intrebare);
	}

	public void deleteIntrebare(int id) {
		intrebareRepository.delete(id);
	}
}
