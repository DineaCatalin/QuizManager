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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "raspuns")
public class Raspuns {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_raspuns")
	private int idRaspuns;

	@Column(name = "enunt")
	private String enunt;

	@Column(name = "valoareadevar")
	private boolean valoareAdevar;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_intrebare", nullable = false)
	private Intrebare intrebare;
	
	public Raspuns() {

	}

	public Raspuns(String enunt, boolean valoareAdevar, Intrebare intrebare) {
		this.enunt = enunt;
		this.valoareAdevar = valoareAdevar;
		this.intrebare = intrebare;
	}

	public int getIdRaspuns() {
		return idRaspuns;
	}

	public void setIdRaspuns(int idRaspuns) {
		this.idRaspuns = idRaspuns;
	}

	public String getEnunt() {
		return enunt;
	}

	public void setEnunt(String enunt) {
		this.enunt = enunt;
	}

	public boolean isValoareAdevar() {
		return valoareAdevar;
	}

	public void setValoareAdevar(boolean valoareAdevar) {
		this.valoareAdevar = valoareAdevar;
	}

	public Intrebare getIntrebare() {
		return intrebare;
	}

	public void setIntrebare(Intrebare intrebare) {
		this.intrebare = intrebare;
	}

	@Override
	public String toString() {
		return "Raspuns [idRaspuns=" + idRaspuns + ", enunt=" + enunt + ", valoareAdevar=" + valoareAdevar
				+ ", idIntrebare=" + intrebare + "]";
	}

}
