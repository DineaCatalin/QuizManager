import {Component, Input, OnInit, ViewEncapsulation} from '@angular/core';
import {QuizService} from '../quiz.service';
import {Quiz} from '../../models/quiz';
import {Intrebare} from '../../models/Intrebare';

@Component({
  selector: 'app-quiz',
  templateUrl: './quiz.component.html',
  styleUrls: ['./quiz.component.css'],
  encapsulation: ViewEncapsulation.None,
  // template: `
  //   <div [innerHTML]="obj | prettyprint"></div>
  // `,
  // pipes: [PrettyprintPipe]
})
export class QuizComponent implements OnInit {

  constructor(private quizService: QuizService) {
  }

  ngOnInit() {
  }

  result: Quiz;
  toShow: string;
  intrebari: Intrebare[];

  nrInterbari: number;
  niveleDificultate: number[] = [];
  limbaje: string[] = [];
  domenii: string[] = [];
  tehnologii: string[] = [];


  addNivelDificultate() {
      this.niveleDificultate.push(this.nivelDificultate);
      this.nivelDificultate = null;
      this.niveleDificultate.push(this.nivelDificultate2);
      this.nivelDificultate2 = null;
      this.niveleDificultate.push(this.nivelDificultate3);
      this.nivelDificultate3 = null;
    // this.niveleDif.push(this.nivelDificultate3);
    // this.nivelDificultate = null;
    // this.niveleDif.push(this.nivelDificultate3);
    // this.nivelDificultate = null;
    // this.niveleDif.push(this.nivelDificultate3);
    // this.nivelDificultate = null;
    // this.niveleDif.push(this.nivelDificultate7);
    // this.nivelDificultate7 = null;
    // this.niveleDif.push(this.nivelDificultate8);
    // this.nivelDificultate8 = null;
    // this.niveleDif.push(this.nivelDificultate9);
    // this.nivelDificultate9 = null;
    // this.niveleDif.push(this.nivelDificultate10);
    // this.nivelDificultate10 = null;
  }

  addLimbaj() {
    this.limbaje.push(this.limbaj);
    this.limbaj = null;
    this.limbaje.push(this.limbaj2)
    this.limbaj2 = null;
    this.limbaje.push(this.limbaj3)
    this.limbaj3 = null;
  }

  addDomeniu() {
    this.domenii.push(this.domeniu);
    this.domeniu = null;
    this.domenii.push(this.domeniu2);
    this.domeniu2 = null;
    this.domenii.push(this.domeniu3);
    this.domeniu3 = null;
  }

  addTehnologie() {
    this.tehnologii.push(this.tehnologie);
    this.tehnologie = null;
    this.tehnologii.push(this.tehnologie2);
    this.tehnologie2 = null;
    this.tehnologii.push(this.tehnologie3);
    this.tehnologie3 = null;
  }


  /**
   * beta model for displaying data.......
   * this function should be modified
   */
  generateQuiz() {

    this.addNivelDificultate();
    this.addLimbaj();
    this.addDomeniu();
    this.addTehnologie();
    this.quizService.generateQuiz(this.nrInterbari, this.niveleDificultate, this.limbaje, this.domenii, this.tehnologii).subscribe(resp => {
      console.log(resp);
      this.result = resp;
      if (this.result != null) {

        this.toShow = '';
        this.toShow += 'informatii generale: ' + this.result.informatiiGenerale + ', punctaj total: ' + this.result.punctajTotal +
          ', intrebari: ';
        this.result.intrebari.forEach(intreb => this.toShow += 'nivel dificultate:  ' + intreb.nivelDificultate + ',limbaj: '
          + intreb.limbaj + ', domenniu: ' + intreb.domeniu + ', tehnologie: ' + intreb.tehnologie + ', puncatj: ' + intreb.punctaj + '');
      }
    });
    // this.result = JSON.stringify(this.quizService.generateQuiz(this.nrInterbari, this.nivelDificultate, this.limbaj, this.domeniu, this.tehnologie).subscribe());
  }

  nivelDificultate;
  limbaj;
  domeniu;
  tehnologie;

  nivelDificultate2;
  limbaj2;
  domeniu2;
  tehnologie2;

  nivelDificultate3;
  limbaj3;
  domeniu3;
  tehnologie3;

  nivelDificultate4;
  limbaj4;
  domeniu4;
  tehnologie4;

  nivelDificultate5;
  limbaj5;
  domeniu5;
  tehnologie5;

  nivelDificultate6;
  limbaj6;
  domeniu6;
  tehnologie6;

  nivelDificultate7;
  limbaj7;
  domeniu7;
  tehnologie7;

  nivelDificultate8;
  limbaj8;
  domeniu8;
  tehnologie8;

  nivelDificultate9;
  limbaj9;
  domeniu9;
  tehnologie9;

  nivelDificultate10;
  limbaj10;
  domeniu10;
  tehnologie10;


}
