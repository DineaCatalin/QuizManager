package Proiect731.controllers;

import java.util.List;

public class Receive {

    private int nrInterbari;
    private List<String> niveleDificultate;
    private List<String> limbaje;
    private List<String> domenii;
    private List<String> tehnologii;

    public Receive() {

    }

    public Receive(Integer nrInterbari, List<String> niveleDificultate, List<String> limbaje, List<String> domenii, List<String> tehnologii) {
        this.nrInterbari = nrInterbari;
        this.niveleDificultate = niveleDificultate;
        this.limbaje = limbaje;
        this.domenii = domenii;
        this.tehnologii = tehnologii;
    }

    public Integer getNrInterbari() {
        return nrInterbari;
    }

    public void setNrInterbari(Integer nrInterbari) {
        this.nrInterbari = nrInterbari;
    }

    public List<String> getNiveleDificultate() {
        return niveleDificultate;
    }

    public void setNiveleDificultate(List<String> niveleDificultate) {
        this.niveleDificultate = niveleDificultate;
    }

    public List<String> getLimbaje() {
        return limbaje;
    }

    public void setLimbaje(List<String> limbaje) {
        this.limbaje = limbaje;
    }

    public List<String> getDomenii() {
        return domenii;
    }

    public void setDomenii(List<String> domenii) {
        this.domenii = domenii;
    }

    public List<String> getTehnologii() {
        return tehnologii;
    }

    public void setTehnologii(List<String> tehnologii) {
        this.tehnologii = tehnologii;
    }
}
