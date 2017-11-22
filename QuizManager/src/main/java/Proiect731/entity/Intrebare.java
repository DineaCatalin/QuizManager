package Proiect731.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "intrebare")
public class Intrebare {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_intrebare")
	private int idIntrebare;

	@Column(name = "niveldificultate")
	private int nivelDificultate;

	@Column(name = "limbaj")
	private String limbaj;

	@Column(name = "domeniu")
	private String domeniu;

	@Column(name = "tehnologie")
	private String tehnologie;

	@Column(name = "punctaj")
	private int punctaj;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "intrebare", fetch = FetchType.EAGER)
	private Set<Raspuns> raspuns = new HashSet<Raspuns>();

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "intrebare", fetch = FetchType.EAGER)
	private Set<TraducereIntrebare> traduceri = new HashSet<TraducereIntrebare>();

	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "intrebare_quiz", joinColumns = { @JoinColumn(name = "id_intrebare",nullable=false) }, inverseJoinColumns = {
			@JoinColumn(name = "id_quiz",nullable=false) })
	private Set<Quiz> quizes = new HashSet<>();

	public Intrebare() {

	}

	public Intrebare(int nivelDificultate, String limbaj, String domeniu, String tehnologie, int punctaj) {
		this.nivelDificultate = nivelDificultate;
		this.limbaj = limbaj;
		this.domeniu = domeniu;
		this.tehnologie = tehnologie;
		this.punctaj = punctaj;
		this.quizes = new HashSet<>(0);
		this.traduceri = new HashSet<TraducereIntrebare>(0);
		this.raspuns = new HashSet<Raspuns>(0);
	}

	public int getIdIntrebare() {
		return idIntrebare;
	}

	public void setIdIntreabare(int idIntreabare) {
		this.idIntrebare = idIntreabare;
	}

	public int getNivelDificultate() {
		return nivelDificultate;
	}

	public void setNivelDificultate(int nivelDificultate) {
		this.nivelDificultate = nivelDificultate;
	}

	public String getLimbaj() {
		return limbaj;
	}

	public void setLimbaj(String limbaj) {
		this.limbaj = limbaj;
	}

	public String getDomeniu() {
		return domeniu;
	}

	public void setDomeniu(String domeniu) {
		this.domeniu = domeniu;
	}

	public String getTehnologie() {
		return tehnologie;
	}

	public void setTehnologie(String tehnologie) {
		this.tehnologie = tehnologie;
	}

	public int getpunctaj() {
		return punctaj;
	}

	public void setpunctaj(int punctaj) {
		this.punctaj = punctaj;
	}

	public Set<TraducereIntrebare> getTraducere() {
		return traduceri;
	}
	
	public void setTraduceri(Set<TraducereIntrebare> trad) {
		this.traduceri=trad;
	}
	
	
	public Set<Raspuns> getRaspunsuri() {
		return raspuns;
	}
	
	public void setRaspunsuri(Set<Raspuns> rasp) {
		this.raspuns=rasp;
	}
	
	@Override
	public String toString() {
		return "Intrebare [idIntreabare=" + idIntrebare + ", nivelDificultate=" + nivelDificultate + ", limbaj="
				+ limbaj + ", domeniu=" + domeniu + ", tehnologie=" + tehnologie + ", punctaj=" + punctaj + "]";
	}
}
