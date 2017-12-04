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
import Proiect731.entity.TraducereRaspuns;
import Proiect731.service.IntrebareService;
import Proiect731.service.RaspunsService;
import Proiect731.service.TraducereIntrebareService;
import Proiect731.service.TraducereRaspunsService;

@RestController
@CrossOrigin
public class IntrebareController {

	@Autowired
	private IntrebareService service;

	@Autowired
	private TraducereIntrebareService serviceTradIntreb;

	@Autowired
	private RaspunsService raspunsService;

	@GetMapping(path = "/getIntrebari")
	public @ResponseBody Iterable<Intrebare> getAllIntrebari() {
		return service.getAllIntrebari();
	}

	@GetMapping("/getIntrebari/{id}")
	public Intrebare getById(@PathVariable("id") int id) {
		return service.getIntrebare(id);
	}

	@RequestMapping(value = "/createIntrebare", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Intrebare create(@RequestBody Intrebare obj) {
		System.out.println("Suntem La creere");
		System.out.println(obj);
		return service.saveOrUpdateIntrebare(obj);

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

	@RequestMapping(value = "/updateIntrebare", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Intrebare Update(@RequestBody Intrebare object) {
		System.out.println("Suntem la update");
		System.out.println(object);
		return service.saveOrUpdateIntrebare(object);
	}

	@RequestMapping("/filter/{dificultate}/{limbaj}/{domeniu}/{tehnologie}/{nrRaspunsuriCorecte}/{text}/{caseSensitive}/{limba}")
	public @ResponseBody Iterable<Intrebare> Filter(@PathVariable("dificultate") String dificultat,
			@PathVariable("limbaj") String limbj, @PathVariable("domeniu") String domeniu,
			@PathVariable("tehnologie") String tehnologie, @PathVariable("nrRaspunsuriCorecte") String nrRaspCor,
			@PathVariable("text") String text, @PathVariable("caseSensitive") boolean caseSensitive,
			@PathVariable("limba") String limba) {

		Iterable<Intrebare> listaIntrebariInitiala = getAllIntrebari();
		List<Intrebare> listaReturnare = new ArrayList<Intrebare>();
		if (dificultat.equals("___")) {
			dificultat = "";
		}
		if (tehnologie.equals("___")) {
			tehnologie = "";
		}
		if (domeniu.equals("___")) {
			domeniu = "";
		}
		if (limbj.equals("___")) {
			limbj = "";
		}
		if (nrRaspCor.equals("___")) {
			nrRaspCor = "";
		}
		if (text.equals("___")) {
			text = "";
		}

		String[] tmpDif = new String[0];
		String[] limbaj = new String[0];
		String[] tmpNrRaspCor = new String[0];
		int[] nrRaspCorecte = new int[0];

		if (dificultat.length() != 0) {
			if (dificultat.contains(",")) {
				tmpDif = dificultat.split(",");
			} else {
				tmpDif= new String[] {dificultat};
			}
		}
		
		int[] dificultate = new int[tmpDif.length];
		for (int i = 0; i < tmpDif.length; i++) {
			dificultate[i] = Integer.parseInt(tmpDif[i]);
		}
		
		
		if (limbj.length() != 0) {
			if (limbj.contains(",")) {
				limbaj = limbj.split(",");
			} else {
				limbaj= new String[] {limbj};
			}
		}
		
		
		if (nrRaspCor.length() != 0) {
			if (nrRaspCor.contains(",")) {
				tmpNrRaspCor = nrRaspCor.split(",");
			} else {
				tmpNrRaspCor= new String[] {nrRaspCor};
			}
		}
		
		nrRaspCorecte = new int[tmpNrRaspCor.length];
		for (int i = 0; i < tmpNrRaspCor.length; i++) {
			nrRaspCorecte[i] = Integer.parseInt(tmpNrRaspCor[i]);
		}
		// System.out.println(lI.size());
		// Filtrare dupa dificultate
		if (dificultate.length != 0) {
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
		System.out.println("dupa dif" + listaReturnare.size());
		// Filtrare dupa limbaj
		if (limbaj.length != 0) {
			int i = 0;
			while (i < listaReturnare.size()) {
				if (!VerificareLimbaje(limbaj, listaReturnare.get(i))) {
					listaReturnare.remove(i);
				} else {
					i++;
				}
			}

		}
		System.out.println("dupa limbaj" + listaReturnare.size());

		// Filtrare dupa numarul de raspunsuri corecte
		if (nrRaspCorecte.length != 0) {
			int i = 0;
			while (i < listaReturnare.size()) {
				if (!VerificareNrRaspunsuri(nrRaspCorecte, listaReturnare.get(i))) {
					listaReturnare.remove(i);
				} else {
					i++;
				}
			}
		}

		System.out.println("dupa nrRasp" + listaReturnare.size());

		// Filtrare dupa domeniu
		if (domeniu.length() != 0) {
			int i = 0;
			while (i < listaReturnare.size()) {
				if (!listaReturnare.get(i).getDomeniu().equals(domeniu)) {
					listaReturnare.remove(i);
				} else {
					i++;
				}
			}
		}
		System.out.println("dupa domeniu" + listaReturnare.size());
		// Filtrare dupa tehnologie
		if (tehnologie.length() != 0) {
			int i = 0;
			while (i < listaReturnare.size()) {
				if (!listaReturnare.get(i).getTehnologie().equals(tehnologie)) {
					listaReturnare.remove(i);
				} else {
					i++;
				}
			}
		}
		System.out.println("dupa tehnolo" + listaReturnare.size());

		System.out.println(text);
		// Verificam traducerile intrebarilor dupa cuvantul cheie

		if (text.length() != 0) {
			int i = 0;
			while (i < listaReturnare.size()) {
				boolean removed = false;
				List<TraducereIntrebare> trad = new ArrayList<TraducereIntrebare>();
				trad.addAll(serviceTradIntreb.getTraducereIntrebareByIntrebare(listaReturnare.get(i)));
				for (int j = 0; j < trad.size(); j++) {
					if (trad.get(j).getLimba().equals(limba)) {
						if (caseSensitive) {
							if (!trad.get(j).getEnunt().contains(text)) {
								listaReturnare.remove(i);
								removed = true;
							}
						} else {
							String enuntLower = trad.get(j).getEnunt().toLowerCase();
							String textLower = text.toLowerCase();
							if (!enuntLower.contains(textLower)) {
								listaReturnare.remove(i);
								removed = true;
							}
						}
					}
				}

				if (!removed) {
					i++;
				}
			}
		}
		System.out.println("dupa text" + listaReturnare.size());
		return listaReturnare;
	}

	// Verificare in lista de dificultate
	boolean VerificareDificultate(int[] dif, Intrebare intreb) {
		for (int i = 0; i < dif.length; i++) {
			if (dif[i] == intreb.getNivelDificultate()) {
				return true;
			}
		}
		return false;
	}

	// Verificare in lista de limbaje
	boolean VerificareLimbaje(String[] limbaj, Intrebare intreb) {
		for (int i = 0; i < limbaj.length; i++) {
			if (limbaj[i].equals(intreb.getLimbaj())) {
				return true;
			}
		}
		return false;
	}

	// Verificare in lista de Raspunsuri
	boolean VerificareNrRaspunsuri(int[] nrRaspunsuri, Intrebare intreb) {
		int nrRaspunsuriCorecte = 0;
		List<Raspuns> lRaspunsuri = new ArrayList<Raspuns>();
		lRaspunsuri.addAll(raspunsService.getRaspunsByIntrebare(intreb));
		for (int i = 0; i < lRaspunsuri.size(); i++) {
			if (lRaspunsuri.get(i).isValoareAdevar()) {
				nrRaspunsuriCorecte++;
			}
		}

		for (int i = 0; i < nrRaspunsuri.length; i++) {
			if (nrRaspunsuri[i] == nrRaspunsuriCorecte) {
				return true;
			}
		}
		return false;
	}
}
