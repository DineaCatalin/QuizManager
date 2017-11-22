package Proiect731.controllers;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import Proiect731.entity.Intrebare;
import Proiect731.entity.Raspuns;
import Proiect731.entity.TraducereIntrebare;
import Proiect731.service.IntrebareService;

@RestController
@CrossOrigin
public class IntrebareController {

	@Autowired
	private IntrebareService service;

	@GetMapping(path = "/getIntrebari")
	public @ResponseBody Iterable<Intrebare> getAllIntrebari() {
		return service.getAllIntrebari();
	}

	@GetMapping("/getIntrebari/{id}")
	public String getById(@PathVariable("id") int id) {
		Intrebare obj = service.getIntrebare(id);
		if (obj == null) {
			return "Intrebare not found!";
		}

		return "" + obj;
	}

	@RequestMapping(value = "/createIntrebare", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String create(@RequestBody Intrebare obj) {
		String id = "";
		try {
			service.saveOrUpdateIntrebare(obj);
			id = String.valueOf(obj.getIdIntrebare());
		} catch (Exception ex) {
			return "Error creating the utilizator: " + ex.toString();
		}
		return "User succesfully created with id = " + id;
	}

	@GetMapping("/deleteIntrebare/{id}")
	public String delete(@PathVariable("id") int id) {
		try {
			service.deleteIntrebare(id);
		} catch (Exception ex) {
			return "Error deleting intrebare : " + ex.toString();
		}
		return "Intrebare succesfully deleted!";
	}

	@RequestMapping("/updateIntrebare/{id}")
	@ResponseBody
	public String Update(@RequestBody Intrebare object, @PathVariable int id) {
		try {
			object.setIdIntreabare(id);
			service.saveOrUpdateIntrebare(object);
		} catch (Exception ex) {
			return "Error updating Intrebare" + ex.toString();
		}
		return "Intrebare succesfully updated!";
	}

	/**
	 * Functie de filtrare plus functiile adiacente necesare
	 * 
	 * @param dificultate
	 * @param limbaj
	 * @param domeniu
	 * @param tehnologie
	 * @param nrRaspCorecte
	 * @param text
	 * @return
	 */
	@RequestMapping("/filter/{dificultate}/{limbaj}/{domeniu}/{tehnologie}/{nrRaspunsuriCorecte}/{text}/{caseSensitive}/{limba}")
	public @ResponseBody Iterable<Intrebare> Filter(@PathVariable("dificultate") List<Integer> dificultate,
			@PathVariable("limbaj") List<String> limbaj, @PathVariable("domeniu") String domeniu,
			@PathVariable("tehnologie") String tehnologie,
			@PathVariable("nrRaspunsuriCorecte") List<Integer> nrRaspCorecte, 
			@PathVariable("text") String text,
			@PathVariable("caseSensitive") boolean caseSensitive,
			@PathVariable("limba") String limba) {
		
		
		Iterable<Intrebare> listaIntrebariInitiala = getAllIntrebari();
		List<Intrebare> listaReturnare = new ArrayList<Intrebare>();

		
		
		//System.out.println(lI.size());
		// Filtrare dupa dificultate
		if (dificultate.isEmpty()) {
			listaIntrebariInitiala.forEach(elem -> {
				listaReturnare.add(elem);
			});
		} else {
			listaIntrebariInitiala.forEach(elem -> {
				if (VerificareDificultate(dificultate, elem)) {
					listaReturnare.add(elem);
				}
			});
		}
		System.out.println("dupa dif"+ listaReturnare.size());
		// Filtrare dupa limbaj
		if (!limbaj.isEmpty()) {
			int i = 0;
			while (i < listaReturnare.size()) {
				if (!VerificareLimbaje(limbaj, listaReturnare.get(i))) {
					listaReturnare.remove(i);
				}
				else {
					i++;
				}
			}

		}
		System.out.println("dupa limbaj"+ listaReturnare.size());
		
		
		//Filtrare dupa numarul de raspunsuri corecte
		if(!nrRaspCorecte.isEmpty()) {
			int i = 0;
			while (i < listaReturnare.size()) {
				if (!VerificareNrRaspunsuri(nrRaspCorecte, listaReturnare.get(i))) {
					listaReturnare.remove(i);
				}
				else {
					i++;
				}
			}
		}
		
		System.out.println("dupa nrRasp"+ listaReturnare.size());
		
		//Filtrare dupa domeniu
		if(domeniu.length()!=0) {
			int i = 0;
			while (i < listaReturnare.size()) {
				if (!listaReturnare.get(i).getDomeniu().equals(domeniu)) {
					listaReturnare.remove(i);
				}
				else {
					i++;
				}
			}
		}
		System.out.println("dupa domeniu"+ listaReturnare.size());
		//Filtrare dupa tehnologie 
		if(tehnologie.length()!=0) {
			int i = 0;
			while (i < listaReturnare.size()) {
				if (!listaReturnare.get(i).getTehnologie().equals(tehnologie)) {
					listaReturnare.remove(i);
				}
				else {
					i++;
				}
			}
		}
		System.out.println("dupa tehnolo"+ listaReturnare.size());
		
		// Verificam inati dupa cuvantul cheie
		if(text.length()!=0) {
			int i = 0;
			while (i < listaReturnare.size()) {
				boolean removed=false;
				List<TraducereIntrebare> trad=new ArrayList<TraducereIntrebare>();
				trad.addAll(listaReturnare.get(i).getTraducere());
				for(int j=0;j<trad.size();j++) {
					if(trad.get(j).getLimba().equals(limba)) {
						if(caseSensitive) {
							if (!trad.get(j).getEnunt().contains(text)) {
								listaReturnare.remove(i);
								removed=true;
							}
						}
						else {
							String enuntLower = trad.get(j).getEnunt().toLowerCase();
							String textLower = text.toLowerCase();
							if (!enuntLower.contains(textLower)) {
								listaReturnare.remove(i);
								removed=true;
							}
						}
					}
				}
				
				if(!removed) {
					i++;
				}
			}
		}
		System.out.println("dupa text"+ listaReturnare.size());
		return listaReturnare;
	}

	// Verificare in lista de dificultate
	boolean VerificareDificultate(List<Integer> dif, Intrebare intreb) {
		for (int i = 0; i < dif.size(); i++) {
			if (dif.get(i) == intreb.getNivelDificultate()) {
				return true;
			}
		}
		return false;
	}

	// Verificare in lista de limbaje
	boolean VerificareLimbaje(List<String> limbaj, Intrebare intreb) {
		for (int i = 0; i < limbaj.size(); i++) {
			if (limbaj.get(i).equals(intreb.getLimbaj())) {
				return true;
			}
		}
		return false;
	}
	// Verificare in lista de Raspunsuri
		boolean VerificareNrRaspunsuri(List<Integer> nrRaspunsuri, Intrebare intreb) {
			int nrRaspunsuriCorecte=0;
			List<Raspuns> lRaspunsuri=new ArrayList<Raspuns>();
			lRaspunsuri.addAll(intreb.getRaspunsuri());
			for(int i=0;i<lRaspunsuri.size();i++) {
				if(lRaspunsuri.get(i).isValoareAdevar()) {
					nrRaspunsuriCorecte++;
				}
			}
			
			for (int i = 0; i < nrRaspunsuri.size(); i++) {
				if (nrRaspunsuri.get(i) == nrRaspunsuriCorecte) {
					return true;
				}
			}
			return false;
		}
}
