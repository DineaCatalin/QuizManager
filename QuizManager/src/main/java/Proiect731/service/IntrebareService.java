package Proiect731.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Proiect731.entity.Intrebare;
import Proiect731.repository.IntrebareRepo;

@Service
public class IntrebareService {

	@Autowired
	private IntrebareRepo intrebareRepository;

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
