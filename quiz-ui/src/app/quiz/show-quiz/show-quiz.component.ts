import {Component, OnInit, ViewChildren, ViewEncapsulation} from '@angular/core';
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
  questions: Intrebare[] = [];

  raspunsToCheck: Raspuns[] = [];

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

    // set the checkboxOptions size
    this.intrebari.forEach(i =>
      i.raspuns.forEach(r =>
        this.checkboxOptions.push(false)
      )
    );
    // console.log(this.checkboxOptions);

    // var index1: number = 0;
    // while (index1 < this.intrebari.length) {
    //   var index2: number = 0;
    //   while (index2 < this.intrebari[index1].raspuns.length) {
    //     this.questions[index1].raspuns[index2].idRaspuns = this.intrebari[index1].raspuns[index2].idRaspuns;
    //     this.questions[index1].raspuns[index2].valoareAdevar = this.intrebari[index1].raspuns[index2].valoareAdevar;
    //     index2++;
    //   }
    //   index1++;
    // }



    this.questions = this.intrebari;
    // initialize this.raspunsToCheck
    // this.intrebari.forEach(i=>{
    //   this.raspunsToCheck.push(i.raspuns);
    // })
    // this.raspunsToCheck
  }


  @ViewChildren('myItem') item;
  selectedIds = [];
  selectedIds2: boolean[] = [];

  OnCheckboxSelect(id, idRaspuns: number, event) {
    if (event.target.checked === true) {
      this.questions.forEach(q => {
        q.raspuns.forEach(r => {
            if (r.idRaspuns == idRaspuns) {
              r.valoareAdevar = true;
            }
          });
      });
      // this.selectedIds.push({id: id, checked: event.target.checked});
      // console.log('Selected Ids ', this.selectedIds);
    }
    if (event.target.checked === false) {
      this.questions.forEach(q => {
        q.raspuns.forEach(r => {
          if (r.idRaspuns == idRaspuns) {
            r.valoareAdevar = false;
          }
        });
      });
      // this.selectedIds = this.selectedIds.filter((item) => item.id !== id);
    }
    console.log(this.questions);
  }


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
        this.score += this.intrebari[index].punctaj;
      }

      index++;
    }

    console.log(this.score);
    console.log(this.score);
    console.log(this.score);
    console.log(this.score);
    console.log(this.score);
    console.log(this.score);
    console.log(this.score);
    console.log(this.score);
    console.log(this.score);
    console.log(this.score);


  }



  public clalculateScore() {


  }


}
