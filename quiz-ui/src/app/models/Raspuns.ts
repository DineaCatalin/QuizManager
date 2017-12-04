import {Intrebare} from "./Intrebare";
import {TraducereRaspuns} from "./TraducereRaspuns";

export class Raspuns {
  idRaspuns: number;
  valoareAdevar: boolean;
  intrebare: Intrebare;
  traduceri: TraducereRaspuns[]=[];


  constructor(idRaspuns: number, valoareAdevar: boolean, intrebare: Intrebare, traduceri: TraducereRaspuns[]) {
    this.idRaspuns = idRaspuns;
    this.valoareAdevar = valoareAdevar;
    this.intrebare = intrebare;
    this.traduceri = traduceri;
  }
}
