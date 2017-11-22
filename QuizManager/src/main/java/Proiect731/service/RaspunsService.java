package Proiect731.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Proiect731.entity.Intrebare;
import Proiect731.entity.Raspuns;
import Proiect731.repository.IntrebareRepo;
import Proiect731.repository.RaspunsRepo;

@Service
public class RaspunsService {

	@Autowired
    private RaspunsRepo RaspunsRepository;
	
	@Autowired
	private IntrebareService IntrebService;

    public Iterable<Raspuns> getAllRaspuns() {
        return RaspunsRepository.findAll();
    }

    public Raspuns getRaspuns(int id) {
        return RaspunsRepository.findOne(id);
    }

    public Raspuns saveOrUpdateRaspuns(Raspuns raspuns) {
    	
    	return RaspunsRepository.save(raspuns);
    }

    public Raspuns saveOrUpdateRaspuns(Raspuns raspuns, Intrebare idIntreb) {
    	System.out.println(idIntreb.getIdIntrebare());
    	Intrebare intreb=IntrebService.getIntrebare(idIntreb.getIdIntrebare());
    	
    	if(intreb==null) {
    		System.out.println("avemNull");
    		intreb=IntrebService.saveOrUpdateIntrebare(idIntreb);
    		return RaspunsRepository.save(new Raspuns(raspuns.getEnunt(), raspuns.isValoareAdevar(), intreb));
    	}
    	else {
    		System.out.println(intreb.getIdIntrebare());
    	}
    	return RaspunsRepository.save(new Raspuns(raspuns.getEnunt(), raspuns.isValoareAdevar(), intreb));
    	
    }
    public void deleteRaspuns(int id) {
    	RaspunsRepository.delete(id);
    }
}
