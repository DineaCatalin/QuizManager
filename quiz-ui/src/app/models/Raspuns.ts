import {Intrebare} from "./Intrebare";
import {TraducereRaspuns} from "./TraducereRaspuns";

export class Raspuns {
  idRaspuns: number;
  valoareAdevar: boolean;
  traduceri: TraducereRaspuns[]=[];


  constructor(idRaspuns: number, valoareAdevar: boolean, traduceri: TraducereRaspuns[]) {
    this.idRaspuns = idRaspuns;
    this.valoareAdevar = valoareAdevar;

    this.traduceri = traduceri;
  }
}
