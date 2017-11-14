export class Intrebare{

  idIntrebare: number;
  nivelDificultate: number;
  limbaj: string;
  domeniu: string;
  tehnologie: string;
  punctaj: number;
  text: string;

  constructor(nivelDificultate: number, limbaj: string, domeniu: string, tehnologie: string, punctaj: number, text: string) {
    this.nivelDificultate = nivelDificultate;
    this.limbaj = limbaj;
    this.domeniu = domeniu;
    this.tehnologie = tehnologie;
    this.punctaj = punctaj;
    this.text = text;
  }
}
