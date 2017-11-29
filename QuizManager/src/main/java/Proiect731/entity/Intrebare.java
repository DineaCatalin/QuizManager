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

	public Intrebare() {

	}

	public Intrebare(int nivelDificultate, String limbaj, String domeniu, String tehnologie, int punctaj) {
		this.nivelDificultate = nivelDificultate;
		this.limbaj = limbaj;
		this.domeniu = domeniu;
		this.tehnologie = tehnologie;
		this.punctaj = punctaj;
	}

	public int getIdIntrebare() {
		return idIntrebare;
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
	
	public int getPunctaj() {
		return punctaj;
	}

	public void setPunctaj(int punctaj) {
		this.punctaj = punctaj;
	}

	public void setIdIntrebare(int idIntrebare) {
		this.idIntrebare = idIntrebare;
	}

	@Override
	public String toString() {
		return "Intrebare [idIntreabare=" + idIntrebare + ", nivelDificultate=" + nivelDificultate + ", limbaj="
				+ limbaj + ", domeniu=" + domeniu + ", tehnologie=" + tehnologie + ", punctaj=" + punctaj + "]";
	}
}
