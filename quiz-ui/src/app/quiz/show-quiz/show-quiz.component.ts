import {Component, OnInit, ViewEncapsulation} from '@angular/core';
import {QuizService} from '../quiz.service';
import {Quiz} from '../../models/quiz';
import {Intrebare} from '../../models/Intrebare';

@Component({
  selector: 'app-show-quiz',
  templateUrl: './show-quiz.component.html',
  styleUrls: ['./show-quiz.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class ShowQuizComponent implements OnInit {

  quiz: Quiz = this.quizService.result;
  intrebari: Intrebare[] = this.quiz.intrebari;

  constructor(private quizService: QuizService) {
  }

  ngOnInit() {
  }


}
