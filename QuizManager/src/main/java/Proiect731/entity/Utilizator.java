package Proiect731.entity;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "utilizator")
public class Utilizator {

	@Id
	@Column(name = "username", length = 25)
	private String username;

	@Column(name = "parola", length = 20)
	private String parola;

	@Column(name = "rangacces")
	private int rangAcces;

	@OneToMany(cascade = { CascadeType.PERSIST, CascadeType.REMOVE }, mappedBy = "utilizator")
	private Set<Quiz> quizes = new HashSet<Quiz>();

	public Utilizator() {

	}

	public Utilizator(String username, String parola, int rangAcces) {
		this.username = username;
		this.parola = parola;
		this.rangAcces = rangAcces;
		this.quizes = new HashSet<Quiz>(0);
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
		return "Utilizator [username=" + username + ", parola=" + parola
				+ ", rangAcces=" + rangAcces + "]";
	}

}
