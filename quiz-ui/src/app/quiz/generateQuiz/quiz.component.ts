import {Component, Input, OnInit, ViewEncapsulation} from '@angular/core';
import {QuizService} from '../quiz.service';
import {Quiz} from '../../models/quiz';
import {Intrebare} from '../../models/Intrebare';
import {Router, RouterLinkActive} from '@angular/router';

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

  constructor(private quizService: QuizService, private router: Router) {
  }

  ngOnInit() {
  }

  result: Quiz;
  toShow: string;
  intrebari: Intrebare[];

  nrInterbari: number;
  nivelDificultate: number;
  limbaj: string;
  domeniu: string;
  tehnologie: string;


  /**
   * beta model for displaying data.......
   * this function should be modified
   */
  generateQuiz() {

    this.quizService.generateQuiz(this.nrInterbari, this.nivelDificultate, this.limbaj, this.domeniu, this.tehnologie).subscribe(resp => {
      console.log(resp);
      this.result = resp;
      if (this.result != null) {

        this.router.navigate(['./showQuiz']);
        // this.toShow = '';
        // this.toShow += 'informatii generale: ' + this.result.informatiiGenerale + ', punctaj total: ' + this.result.punctajTotal +
        //   ', intrebari: ';
        // this.result.intrebari.forEach(intreb => this.toShow += 'nivel dificultate:  ' + intreb.nivelDificultate + ',limbaj: '
        //   + intreb.limbaj + ', domenniu: ' + intreb.domeniu + ', tehnologie: ' + intreb.tehnologie + ', puncatj: ' + intreb.punctaj + '');
      }
    });
    // this.result = JSON.stringify(this.quizService.generateQuiz(this.nrInterbari, this.nivelDificultate, this.limbaj, this.domeniu, this.tehnologie).subscribe());
  }


}
