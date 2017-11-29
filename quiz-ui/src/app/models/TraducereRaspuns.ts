import {Raspuns} from "./Raspuns";

export class TraducereRaspuns {
  idTraducere: number;
  enunt: string;
  limba: string;
  raspuns: Raspuns;


  constructor(idTraducere: number, enunt: string, limba: string, raspuns: Raspuns) {
    this.idTraducere = idTraducere;
    this.enunt = enunt;
    this.limba = limba;
    this.raspuns = raspuns;
  }
}
