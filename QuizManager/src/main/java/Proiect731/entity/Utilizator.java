package Proiect731.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "utilizator")
public class Utilizator {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_utilizator")
	private int idUtilizator;

	@Column(name = "username", length = 25)
	private String username;

	@Column(name = "parola", length = 20)
	private String parola;

	@Column(name = "rangacces")
	private int rangAcces;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "utilizator")
	private Set<Quiz> quizes = new HashSet<Quiz>();

	public Utilizator() {

	}

	public Utilizator(String username, String parola, int rangAcces) {
		this.username = username;
		this.parola = parola;
		this.rangAcces = rangAcces;
		this.quizes = new HashSet<Quiz>(0);
	}

	public int getIdUtilizator() {
		return idUtilizator;
	}

	public void setIdUtilizator(int idUtilizator) {
		this.idUtilizator = idUtilizator;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getParola() {
		return parola;
	}

	public void setParola(String parola) {
		this.parola = parola;
	}

	public int getRangAcces() {
		return rangAcces;
	}

	public void setRangAcces(int rangAcces) {
		this.rangAcces = rangAcces;
	}

	@Override
	public String toString() {
		return "Utilizator [idUtilizator=" + idUtilizator + ", username=" + username + ", parola=" + parola
				+ ", rangAcces=" + rangAcces + "]";
	}

}
