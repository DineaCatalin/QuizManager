import {Component, OnInit, ViewEncapsulation} from '@angular/core';
import {Intrebare} from '../../models/Intrebare';
import {BackendService} from '../../backend.service';
import {TranslateService} from '../../quiz/translate.service';
import {QuizComponent} from '../../quiz/generateQuiz/quiz.component';
import { Quiz } from '../../models/quiz';
import{ HistoryPageComponent } from '../history-page.component'
import { Injectable } from '@angular/core';

@Component({
  selector: 'app-history-quiz-questions',
  templateUrl: './history-quiz-questions.component.html',
  styleUrls: ['./history-quiz-questions.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class HistoryQuizQuestionsComponent implements OnInit {

  questions: Intrebare[] = [];
  quiz: Quiz;

  dificultati: string[] = ['Undefined', 'Junior', 'Intermediary', 'Senior', 'Architect'];

  constructor(private backend: BackendService, private translateService: TranslateService) {
  }


  ngOnInit() {
    this.refresh();
     this.translateService.Language='en';
  }

  refresh(){
    //this.quiz=this.history.selectedQuiz;
    if(this.backend.getSelectedQuizHistory()!=null){
    this.questions=this.backend.getSelectedQuizHistory().intrebari;
  }
  }

  getDificultate(dif: number): string {
    return this.dificultati[dif];
  }

  showAnswersMethod(question: Intrebare): void {
    question.showAnswers = true;
  }

  hideAnswers(question: Intrebare): void {
    question.showAnswers = false;
  }

}
