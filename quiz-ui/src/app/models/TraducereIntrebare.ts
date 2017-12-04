import {Intrebare} from "./Intrebare";

export class TraducereIntrebare {
  idTraducere: number;
  enunt: string;
  limba: string;
  intrebare: Intrebare;


  constructor(idTraducere: number, enunt: string, limba: string, intrebare: Intrebare) {
    this.idTraducere = idTraducere;
    this.enunt = enunt;
    this.limba = limba;
    this.intrebare = intrebare;
  }
}
