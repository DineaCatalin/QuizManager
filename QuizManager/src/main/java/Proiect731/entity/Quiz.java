package Proiect731.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

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
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER, targetEntity = Utilizator.class)
    @JoinColumn(name = "id_utilizator", nullable = false)
    private Utilizator utilizator;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "intrebare_quiz", joinColumns = @JoinColumn(name = "id_quiz", referencedColumnName = "id_quiz"), inverseJoinColumns = @JoinColumn(name = "id_intrebare", referencedColumnName = "id_intrebare"))
    private Set<Intrebare> intrebari;

    public Quiz() {

    }

    public Quiz(int punctajTotal, String informatiiGenerale, Utilizator utilizator) {
        this.punctajTotal = punctajTotal;
        this.informatiiGenerale = informatiiGenerale;
        this.utilizator = utilizator;
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

    public Set<Intrebare> getIntrebari() {
        return intrebari;
    }

    public void setIntrebari(Set<Intrebare> intrebari) {
        this.intrebari = intrebari;
    }

    @Override
    public String toString() {
        return "Quiz [idQuiz=" + idQuiz + ", punctajTotal=" + punctajTotal + ", informatiiGenerale="
                + informatiiGenerale + ", utilizator=" + utilizator + "]";
    }
}