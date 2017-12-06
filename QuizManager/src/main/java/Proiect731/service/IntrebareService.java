package Proiect731.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Proiect731.entity.Intrebare;
import Proiect731.entity.Raspuns;
import Proiect731.entity.TraducereIntrebare;
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
	
	@Autowired
	private TraducereIntrebareService serviceTradIntreb;

	@Autowired
	private RaspunsService raspunsService;

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
	
	public Iterable<Intrebare> filter(String dificultat, String limbj, String domeniu, String tehnologie, String nrRaspCor,String text, boolean caseSensitive,String limba){
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
		if (dificultate.length == 0) {
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
