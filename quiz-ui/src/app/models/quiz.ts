import {Intrebare} from './Intrebare';

export class Quiz {

  punctajTotal: number;
  informatiiGenerale: string;
  intrebari: Intrebare[];
  utilizator: string;

  constructor(punctajTotal: number, informatiiGenerale: string, intrebari: Intrebare[], utilizator: string) {
    this.punctajTotal = punctajTotal;
    this.informatiiGenerale = informatiiGenerale;
    this.intrebari = intrebari;
    this.utilizator = utilizator;
  }
}
