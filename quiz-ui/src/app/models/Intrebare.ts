import {TraducereIntrebare} from "./TraducereIntrebare";
import {Raspuns} from "./Raspuns";

export class Intrebare {
  idIntrebare: number;
  nivelDificultate: number;
  limbaj: string;
  domeniu: string;
  tehnologie: string;
  punctaj: number;
  raspuns: Raspuns[]=[];
  traduceri: TraducereIntrebare[]=[];

  showAnswers: boolean = false;


  constructor(nivelDificultate: number, limbaj: string, domeniu: string, tehnologie: string, punctaj: number, raspuns: Raspuns[], traduceri: TraducereIntrebare[]) {
    this.nivelDificultate = nivelDificultate;
    this.limbaj = limbaj;
    this.domeniu = domeniu;
    this.tehnologie = tehnologie;
    this.punctaj = punctaj;
    this.raspuns = raspuns;
    this.traduceri = traduceri;
  }
}
