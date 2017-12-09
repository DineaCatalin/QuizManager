import {Intrebare} from './Intrebare';

export class Quiz {

  punctajTotal: number;
  informatiiGenerale: string;
  intrebari: Intrebare[];

  constructor(punctajTotal: number, informatiiGenerale: string, intrebari: Intrebare[]) {
    this.punctajTotal = punctajTotal;
    this.informatiiGenerale = informatiiGenerale;
    this.intrebari = intrebari;
  }
}
