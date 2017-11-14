import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import {Intrebare} from '../models/quiz';
import {Raspuns} from '../models/raspuns';

@Component({
  selector: 'app-user-page',
  templateUrl: './user-page.component.html',
  styleUrls: ['./user-page.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class UserPageComponent implements OnInit {

  questions: Intrebare[] = [
    new Intrebare(3, 'C', null, null, 50, 'What is a class?'),
    new Intrebare(3, 'C', null, null, 50, 'What is an object?'),
    new Intrebare(3, 'C', null, null, 50, 'What is Encapsulation?')
  ];

  quizToAdd: Intrebare = new Intrebare(null, null, null, null, null, null);
  answer1: Raspuns = new Raspuns(0, null, false);
  answer2: Raspuns = new Raspuns(0, null, false);
  answer3: Raspuns = new Raspuns(0, null, false);
  answer4: Raspuns = new Raspuns(0, null, false);

  questionToEdit: Intrebare;

  showForm = false;

  showEdit = false;



  constructor() { }

  ngOnInit() {
  }

  addQuestion(): void {
    this.questions.push(this.quizToAdd);
    this.quizToAdd = new Intrebare(null, null, null, null, null, null);
    this.showForm = false;
    /** this.backendService.addQuestion(this.quizToAdd)
    //this.backendService.addAnswer(this.answer1);
    //this.backendService.addAnswer(this.answer2);
    //this.backendService.addAnswer(this.answer3);
    //this.backendService.addAnswer(this.answer4);**/
    }

    editQuestion(Question: Intrebare): void {
      this.questionToEdit = Question;
      this.showEdit = true;
    }

    finishQuestion(): void {
      this.showEdit = false;
      this.questionToEdit = undefined;
    }

    deleteQuestion(Question: Intrebare): void {
      this.questions.splice(this.questions.indexOf(Question), 1);
    }

}
