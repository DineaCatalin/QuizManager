import {Component, OnInit, ViewChildren, ViewEncapsulation} from '@angular/core';
import {QuizService} from '../quiz.service';
import {Quiz} from '../../models/quiz';
import {Intrebare} from '../../models/Intrebare';
import {Router} from '@angular/router';
import {Raspuns} from '../../models/Raspuns';
import {TranslateService} from '../translate.service';
import {Utilizator} from '../../models/Utilizator';

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

  showResult: boolean;


  constructor(private quizService: QuizService, private router: Router, private translateService: TranslateService) {
  }

  clone(obj) {
    if (null == obj || 'object' != typeof obj) return obj;
    var copy = obj.constructor();
    for (var attr in obj) {
      if (obj.hasOwnProperty(attr)) copy[attr] = obj[attr];
    }
    return copy;
  }


  ngOnInit() {

    if (this.quiz == null || this.quiz.intrebari.length == 0) {
      this.router.navigate(['./generateQuiz']);
      alert('no questions were found');
    } else {
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
      // copy by value
      this.questions = JSON.parse(JSON.stringify(this.intrebari));
      this.questions.forEach(q => {
        q.raspuns.forEach(r => {
          r.valoareAdevar = false;
        });
      });
      this.showResult = false;
    }
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
    }
    if (event.target.checked === false) {
      this.questions.forEach(q => {
        q.raspuns.forEach(r => {
          if (r.idRaspuns == idRaspuns) {
            r.valoareAdevar = false;
          }
        });
      });
    }
    console.log(this.questions);
  }


  calculateScore() {

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
    this.showResult = true;
    this.quiz.punctajTotal = this.score;
    const username = sessionStorage.key(0);
    this.quizService.updateQuiz(this.quiz, username);
  }


}
