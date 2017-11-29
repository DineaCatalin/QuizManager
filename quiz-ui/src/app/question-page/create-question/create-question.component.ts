import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import {TraducereIntrebare} from "../../models/TraducereIntrebare";
import {Intrebare} from "../../models/Intrebare";
import {Raspuns} from "../../models/Raspuns";
import {TraducereRaspuns} from "../../models/TraducereRaspuns";
import {BackendService} from "../../backend.service";

@Component({
  selector: 'app-create-question',
  templateUrl: './create-question.component.html',
  styleUrls: ['./create-question.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class CreateQuestionComponent implements OnInit {


  questionToAdd: Intrebare = new Intrebare(null, null, null, null, null, null, null);
  questionTransToAdd: TraducereIntrebare = new TraducereIntrebare(null, null, 'English', null);
  answer1: Raspuns = new Raspuns(null, false, null, null);
  answerTrans1: TraducereRaspuns = new TraducereRaspuns(null, null, 'English', null);
  answer2: Raspuns = new Raspuns(null, false, null, null);
  answerTrans2: TraducereRaspuns = new TraducereRaspuns(null, null, 'English', null);
  answer3: Raspuns = new Raspuns(null, false, null, null);
  answerTrans3: TraducereRaspuns = new TraducereRaspuns(null, null, 'English', null);
  answer4: Raspuns = new Raspuns(null, false, null, null);
  answerTrans4: TraducereRaspuns = new TraducereRaspuns(null, null, 'English', null);

  constructor(private backend: BackendService) { }

  ngOnInit() {
  }

  addQuestion(): void {
    if (this.questionToAdd.punctaj > 100 || this.questionToAdd.punctaj <= 0) {
      alert("Points must be between 1 and 100");
    } else {
      this.backend.addQuestion(this.questionToAdd).subscribe((res: Intrebare) => {
        this.questionTransToAdd.intrebare = res;
        this.backend.addQuestionTrans(this.questionTransToAdd).subscribe(res2 => {
          this.questionTransToAdd = new TraducereIntrebare(null, null, 'English', null);
        });
        this.answer1.intrebare = res;
        this.answer2.intrebare = res;
        this.answer3.intrebare = res;
        this.answer4.intrebare = res;
        this.backend.addAnswer(this.answer1).subscribe((res2: Raspuns) => {
          this.answerTrans1.raspuns = res2;
          this.backend.addAnswerTrans(this.answerTrans1).subscribe(resx => {
            this.answer1 = new Raspuns(null, false, null, null);
            this.answerTrans1 = new TraducereRaspuns(null, null, 'English', null);
          });
        });
        this.backend.addAnswer(this.answer2).subscribe((res2: Raspuns) => {
          this.answerTrans2.raspuns = res2;
          this.backend.addAnswerTrans(this.answerTrans2).subscribe(resx => {
            this.answer2 = new Raspuns(null, false, null, null);
            this.answerTrans2 = new TraducereRaspuns(null, null, 'English', null);
          });
        });
        this.backend.addAnswer(this.answer3).subscribe((res2: Raspuns) => {
          this.answerTrans3.raspuns = res2;
          this.answer3 = new Raspuns(null, false, null, null);
          this.backend.addAnswerTrans(this.answerTrans3).subscribe(resx => {
            this.answer3 = new Raspuns(null, false, null, null);
            this.answerTrans3 = new TraducereRaspuns(null, null, 'English', null);
          });
        });
        this.backend.addAnswer(this.answer4).subscribe((res2: Raspuns) => {
          this.answerTrans4.raspuns = res2;
          this.backend.addAnswerTrans(this.answerTrans4).subscribe(resx => {
            this.answer4 = new Raspuns(null, false, null, null);
            this.answerTrans4 = new TraducereRaspuns(null, null, 'English', null);
            this.questionToAdd = new Intrebare(null, null, null, null, null, null, null);
            alert("Question added successfully");
          });
        });
      });
    }
  }

}
