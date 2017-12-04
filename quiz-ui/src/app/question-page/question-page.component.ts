import {Component, OnInit, ViewEncapsulation} from '@angular/core';
import {Intrebare} from "../models/Intrebare";
import {Raspuns} from "../models/Raspuns";
import {TraducereIntrebare} from "../models/TraducereIntrebare";
import {TraducereRaspuns} from "../models/TraducereRaspuns";
import {BackendService} from "../backend.service";

@Component({
  selector: 'app-question-page',
  templateUrl: './question-page.component.html',
  styleUrls: ['./question-page.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class QuestionPageComponent implements OnInit {

  questions: Intrebare[] = [];

  dificultati: string[] = ["Undefined", "Junior", "Intermediary", "Senior", "Architect"];

  edit: boolean = false;

  editableQuestion: Intrebare;

  constructor(private backend: BackendService) {
  }

  ngOnInit() {
    this.refresh();
  }

  refresh() {
    this.backend.getAllQuestions().subscribe(res => {
      this.questions = res;
      this.questions.forEach((intrebare: Intrebare) => {
        this.backend.getTranslationsOfQuestion(intrebare.idIntrebare).subscribe(res => {
          intrebare.traduceri = res;
        });
        this.backend.getAnswersByQuestion(intrebare.idIntrebare).subscribe(res => {
          intrebare.raspuns = res;
          intrebare.raspuns.forEach((raspuns: Raspuns) => {
            this.backend.getTranslationsOfAnswer(raspuns.idRaspuns).subscribe(res => {
              raspuns.traduceri = res;
            });
          });
        });
      });
    });
  }

  editQuestion(Question: Intrebare): void {
    this.edit = true;
    this.editableQuestion = Question;
  }

  finishEditing(): void {
    this.edit = false;
  }

  getDificultate(dif: number): string {
    return this.dificultati[dif];
  }

  deleteQuestion(Question: Intrebare): void {
    this.backend.deleteQuestion(Question.idIntrebare).subscribe(res => {
      alert("Delete successful");
      this.refresh();
    });
  }

  showAnswersMethod(question: Intrebare): void {
    question.showAnswers = true;
  }

  hideAnswers(question: Intrebare): void {
    question.showAnswers = false;
  }

}
