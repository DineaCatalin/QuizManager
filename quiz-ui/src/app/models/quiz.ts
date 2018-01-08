import {Intrebare} from './Intrebare';

export class Quiz {

  punctajTotal: number;
  informatiiGenerale: string;
  intrebari: Intrebare[];
  idUtilizator: number;

  constructor(punctajTotal: number, informatiiGenerale: string, intrebari: Intrebare[], idUtilizator: number) {
    this.punctajTotal = punctajTotal;
    this.informatiiGenerale = informatiiGenerale;
    this.intrebari = intrebari;
    this.idUtilizator = idUtilizator;
  }
}
