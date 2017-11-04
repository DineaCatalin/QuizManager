package Proiect731.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "traducere_intrebare")
public class TraducereIntrebare {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_traducere")
	private int idTraducere;

	@Column(name = "enunt")
	private String enunt;

	@Column(name = "limba")
	private String limba;

	@JsonIgnore
	@ManyToOne(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY, targetEntity = Intrebare.class)
	@JoinColumn(name = "id_intrebare", nullable = false)
	private Intrebare intrebare;

	public TraducereIntrebare() {

	}

	public TraducereIntrebare(String enunt, String limba, Intrebare idIntrebare) {
		this.enunt = enunt;
		this.limba = limba;
		this.intrebare = idIntrebare;
	}

	public int getIdTraducere() {
		return idTraducere;
	}

	public void setIdTraducere(int idTraducere) {
		this.idTraducere = idTraducere;
	}

	public String getEnunt() {
		return enunt;
	}

	public void setEnunt(String enunt) {
		this.enunt = enunt;
	}

	public String getLimba() {
		return limba;
	}

	public void setLimba(String limba) {
		this.limba = limba;
	}

	public Intrebare getIdIntrebare() {
		return intrebare;
	}

	public void setIdIntrebare(Intrebare idIntrebare) {
		this.intrebare = idIntrebare;
	}

	@Override
	public String toString() {
		return "TraducereIntrebare [idTraducere=" + idTraducere + ", enunt=" + enunt + ", limba=" + limba
				+ ", idIntrebare=" + intrebare + "]";
	}

}
