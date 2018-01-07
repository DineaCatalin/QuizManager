import {Component, OnInit, ViewEncapsulation} from '@angular/core';
import {QuizService} from '../quiz.service';
import {Quiz} from '../../models/quiz';
import {Intrebare} from '../../models/Intrebare';
import {Raspuns} from '../../models/Raspuns';
import {Router} from '@angular/router';

@Component({
  selector: 'app-show-quiz',
  templateUrl: './show-quiz.component.html',
  styleUrls: ['./show-quiz.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class ShowQuizComponent implements OnInit {

  quiz: Quiz = this.quizService.result;
  intrebari: Intrebare[] = [];
  raspunsuri: Raspuns[] = [];

  tehnologii: string[] = [];
  limbaje: string[] = [];

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
  }

  // this.raspunsuri = this.quiz.intrebari;
  // }


}
