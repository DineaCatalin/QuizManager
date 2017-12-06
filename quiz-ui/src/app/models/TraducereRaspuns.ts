import {Raspuns} from "./Raspuns";

export class TraducereRaspuns {
  idTraducere: number;
  enunt: string;
  limba: string;



  constructor(idTraducere: number, enunt: string, limba: string) {
    this.idTraducere = idTraducere;
    this.enunt = enunt;
    this.limba = limba;
  }
}
