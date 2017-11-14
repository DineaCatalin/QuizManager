export class Raspuns {
  idRaspuns: number;
  idIntrebare: number;
  text: string;
  valoareAdevar: boolean;


  constructor(idIntrebare: number, text: string, valoareAdevar: boolean) {
    this.idIntrebare = idIntrebare;
    this.text = text;
    this.valoareAdevar = valoareAdevar;
  }
}
