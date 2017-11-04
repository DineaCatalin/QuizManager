package Proiect731.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Proiect731.entity.Utilizator;
import Proiect731.repository.UtilizatorRepo;

@Service
public class UtilizatorService {

	@Autowired
	private UtilizatorRepo utilizatorRepository;

	public Iterable<Utilizator> getAllUtilizatori() {
		return utilizatorRepository.findAll();
	}

	public Utilizator getUtilizator(int id) {
		return utilizatorRepository.findOne(id);
	}

	public Utilizator saveOrUpdateUtilizator(Utilizator utilizator) {
		return utilizatorRepository.save(utilizator);
	}

	public void deleteUtilizator(int id) {
		utilizatorRepository.delete(id);
	}
}
