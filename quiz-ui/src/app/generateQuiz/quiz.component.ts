import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import {QuizService} from '../quiz.service';

@Component({
  selector: 'app-quiz',
  templateUrl: './quiz.component.html',
  styleUrls: ['./quiz.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class QuizComponent implements OnInit {

  constructor(private quizService: QuizService) { }

  ngOnInit() {
  }

  result: any;

  nrInterbari;
  nivelDificultate;
  limbaj;
  domeniu;
  tehnologie;

  generateQuiz() {
    this.quizService.generateQuiz(this.nrInterbari, this.nivelDificultate, this.limbaj, this.domeniu, this.tehnologie).subscribe();
  }

}
