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
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "quiz")
public class Quiz {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_quiz")
	private int idQuiz;

	@Column(name = "punctajtotal")
	private int punctajTotal;

	@Column(name = "informatiigenerale")
	private String informatiiGenerale;

	@JsonIgnore
	@ManyToOne(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY, targetEntity = Utilizator.class)
	@JoinColumn(name = "id_utilizator", nullable = false)
	private Utilizator utilizator;

	@JsonIgnore
	@ManyToMany(fetch = FetchType.LAZY, mappedBy = "quizes")
	private Set<Intrebare> intrebari= new HashSet<>();

	public Quiz() {

	}

	public Quiz(int punctajTotal, String informatiiGenerale, Utilizator utilizator) {
		this.punctajTotal = punctajTotal;
		this.informatiiGenerale = informatiiGenerale;
		this.utilizator = utilizator;
		this.intrebari = new HashSet<Intrebare>(0);
	}

	public int getIdQuiz() {
		return idQuiz;
	}

	public void setIdQuiz(int idQuiz) {
		this.idQuiz = idQuiz;
	}

	public int getPunctajTotal() {
		return punctajTotal;
	}

	public void setPunctajTotal(int punctajTotal) {
		this.punctajTotal = punctajTotal;
	}

	public String getInformatiiGenerale() {
		return informatiiGenerale;
	}

	public void setInformatiiGenerale(String informatiiGenerale) {
		this.informatiiGenerale = informatiiGenerale;
	}

	public Utilizator getIdUtilizator() {
		return utilizator;
	}

	public void setIdUtilizator(Utilizator utilizator) {
		this.utilizator = utilizator;
	}

	@Override
	public String toString() {
		return "Quiz [idQuiz=" + idQuiz + ", punctajTotal=" + punctajTotal + ", informatiiGenerale="
				+ informatiiGenerale + ", utilizator=" + utilizator + "]";
	}
}