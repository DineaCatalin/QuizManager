import {Intrebare} from './Intrebare';

export class Quiz {

  idQuiz: number;
  punctajTotal: number;
  informatiiGenerale: string;
  intrebari: Intrebare[];
  utilizator: string;

  constructor(idQuiz: number, punctajTotal: number, informatiiGenerale: string, intrebari: Intrebare[], utilizator: string) {
    this.punctajTotal = punctajTotal;
    this.informatiiGenerale = informatiiGenerale;
    this.intrebari = intrebari;
    this.utilizator = utilizator;
  }
}
