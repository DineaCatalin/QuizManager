import {Component, OnInit, ViewEncapsulation} from '@angular/core';
import {QuizService} from '../quiz.service';
import {Quiz} from '../../models/quiz';
import {Intrebare} from '../../models/Intrebare';
import {Router} from '@angular/router';
import {Raspuns} from '../../models/Raspuns';

@Component({
  selector: 'app-show-quiz',
  templateUrl: './show-quiz.component.html',
  styleUrls: ['./show-quiz.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class ShowQuizComponent implements OnInit {

  quiz: Quiz = this.quizService.result;
  intrebari: Intrebare[] = [];

  tehnologii: string[] = [];
  limbaje: string[] = [];

  score: number = null;

  checkboxOptions: boolean[] = [];

  constructor(private quizService: QuizService, private router: Router) {
  }

  ngOnInit() {

    // if (this.quiz == null || this.quiz.intrebari.length == 0) {
    //   this.router.navigate(['./generateQuiz']);
    //   alert('no questions were found');
    // } else {
    this.intrebari = this.quiz.intrebari;


    let tArray: string[] = [];
    let lArray: string[] = [];
    for (let i: number = 0; i < this.intrebari.length; i++) {
      tArray.push(this.intrebari[i].tehnologie);
      lArray.push(this.intrebari[i].limbaj);
    }

    this.tehnologii = tArray.filter(function (elem, index, self) {
      return index === self.indexOf(elem);
    });
    this.limbaje = lArray.filter(function (elem, index, self) {
      return index === self.indexOf(elem);
    });

    this.intrebari.forEach(i =>
      i.raspuns.forEach(r =>
        this.checkboxOptions.push(false)
      )
    );

  }


  questions: Intrebare[] = this.intrebari;

  calculateScore2() {

    this.score = 0;

    let index: number = 0;
    while (index < this.intrebari.length) {
      let index2 = 0;

      let goodQuestion: boolean = true;
      while (index2 < this.intrebari[index].raspuns.length) {
        if (this.intrebari[index].raspuns[index2].valoareAdevar != this.questions[index].raspuns[index2].valoareAdevar) {
          goodQuestion = false;
        }

        index2++;
      }
      if (goodQuestion == true) {
        this.score += this.questions[index].punctaj;
      }

      index++;
    }

    console.log(this.score);

  }

  public clalculateScore() {

    // let intrebareTrue;
    // let index: number;
    // while (index < this.checkboxOptions.length) {
    //   this.intrebari.forEach(i => {
    //       intrebareTrue = true;
    //       i.raspuns.forEach(r => {
    //           if (this.checkboxOptions[index] != r.valoareAdevar) {
    //             intrebareTrue = false;
    //           }
    //           index++;
    //         }
    //       );
    //       if (intrebareTrue == true) {
    //         this.score += i.punctaj;
    //       }
    //       ;
    //     }
    //   );
    // }
  }


  randomAlg() {
    // let intrebariToCompare: Intrebare[];
    //
    // this.intrebari.forEach(i => {
    //   let intrebare: Intrebare;
    //   i.raspuns.forEach(r => {
    //     let raspuns: Raspuns;
    //     raspuns.valoareAdevar = false;
    //     intrebare.raspuns.push(raspuns);
    //   });
    //
    //   intrebariToCompare.push(intrebare);
    // });

  }


  // this.raspunsuri = this.quiz.intrebari;
  // }


}
