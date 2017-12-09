package Proiect731.controllers;

public class Receive {

    private Integer nrIntrebari;
    private Integer nivelDificultate;
    private String limbaje;
    private String tehnologii;

    public Receive() {

    }

    public Receive(Integer nrIntrebari, Integer nivelDificultate, String limbaje, String tehnologii) {
        this.nrIntrebari = nrIntrebari;
        this.nivelDificultate = nivelDificultate;
        this.limbaje = limbaje;
        this.tehnologii = tehnologii;
    }

    public Integer getNrIntrebari() {
        return nrIntrebari;
    }

    public void setNrIntrebari(Integer nrIntrebari) {
        this.nrIntrebari = nrIntrebari;
    }

    public Integer getNivelDificultate() {
        return nivelDificultate;
    }

    public void setNivelDificultate(Integer nivelDificultate) {
        this.nivelDificultate = nivelDificultate;
    }

    public String getLimbaje() {
        return limbaje;
    }

    public void setLimbaje(String limbaje) {
        this.limbaje = limbaje;
    }

    public String getTehnologii() {
        return tehnologii;
    }

    public void setTehnologii(String tehnologii) {
        this.tehnologii = tehnologii;
    }
}
