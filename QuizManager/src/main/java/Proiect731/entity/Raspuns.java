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


	@Column(name = "valoareadevar")
	private boolean valoareAdevar;

	@JsonIgnore
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER, targetEntity = Intrebare.class)
	@JoinColumn(name = "id_intrebare", nullable = false)
	private Intrebare intrebare;
	
	@OneToMany(cascade =CascadeType.ALL, mappedBy = "raspuns", fetch = FetchType.EAGER)
	private Set<TraducereRaspuns> traduceri = new HashSet<TraducereRaspuns>();
	
	
	
	public Raspuns() {

	}

	public Raspuns(boolean valoareAdevar, Intrebare intrebare) {
		this.valoareAdevar = valoareAdevar;
		this.intrebare = intrebare;
	}

	public int getIdRaspuns() {
		return idRaspuns;
	}

	public void setIdRaspuns(int idRaspuns) {
		this.idRaspuns = idRaspuns;
	}


	public boolean isValoareAdevar() {
		return valoareAdevar;
	}

	public void setValoareAdevar(boolean valoareAdevar) {
		this.valoareAdevar = valoareAdevar;
	}

	@JsonIgnore
	public Intrebare getIntrebare() {
		return intrebare;
	}

	public void setIntrebare(Intrebare intrebare) {
		this.intrebare = intrebare;
	}

	
	public Set<TraducereRaspuns> getTraduceri() {
		return traduceri;
	}

	public void setTraduceri(Set<TraducereRaspuns> traduceri) {
		this.traduceri = traduceri;
	}

	@Override
	public String toString() {
		return "Raspuns [idRaspuns=" + idRaspuns + ", valoareAdevar=" + valoareAdevar
				+ ", idIntrebare=" + intrebare + "]";
	}

}
