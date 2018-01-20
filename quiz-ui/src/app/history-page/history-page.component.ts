import {Component, OnInit, ViewEncapsulation} from '@angular/core';
import {BackendService} from '../backend.service';
import {Quiz} from '../models/quiz';
import {Observable} from 'rxjs/Observable';
import {Intrebare} from '../models/Intrebare';
import {TranslateService} from '../quiz/translate.service';
import { Router } from '@angular/router';
import {HistoryQuizQuestionsComponent} from './history-quiz-questions/history-quiz-questions.component'


@Component({
  selector: 'app-history-page',
  templateUrl: './history-page.component.html',
  styleUrls: ['./history-page.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class HistoryPageComponent implements OnInit {

  constructor(private backend: BackendService, private translateService: TranslateService, private rout:Router) {
  }

  historyList: Quiz[];

  nivelD: number[] = [1, 2, 3, 4];

  nivelDificultate: number;
  limbaj: string;
  domeniu: string;
  tehnologie: string;
  utilizator: string;
  media: number;

  selectedQuiz:Quiz;

  ngOnInit() {
    const obj = JSON.parse(sessionStorage.getItem(sessionStorage.key(0)));
    this.utilizator = obj.username;
    this.backend.getHistory(this.utilizator).subscribe((res: Quiz[]) => {
      this.historyList = res;
      this.media = this.backend.calculate(this.historyList);
    });
  }

  searchQuizes() {
    this.backend.quizSearch(this.utilizator, this.nivelDificultate, this.limbaj, this.domeniu, this.tehnologie).subscribe((res: Quiz[]) => {
      this.historyList = res;
    });

  }

  getQuestionsOfQuiz(q:Quiz){
    //this.questionsHist.quiz=q;
    this.selectedQuiz=q;
    this.backend.setSelectedQuizHistory(q);
    this.rout.navigate(["/history-quiz-questions"])
  }

}
