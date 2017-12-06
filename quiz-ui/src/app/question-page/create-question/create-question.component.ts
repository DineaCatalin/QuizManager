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
  questionTransToAdd: TraducereIntrebare = new TraducereIntrebare(null, null, 'English');
  answer1: Raspuns = new Raspuns(null, false, null);
  answerTrans1: TraducereRaspuns = new TraducereRaspuns(null, null, 'English');
  answer2: Raspuns = new Raspuns(null, false, null);
  answerTrans2: TraducereRaspuns = new TraducereRaspuns(null, null, 'English');
  answer3: Raspuns = new Raspuns(null, false, null);
  answerTrans3: TraducereRaspuns = new TraducereRaspuns(null, null, 'English');
  answer4: Raspuns = new Raspuns(null, false, null);
  answerTrans4: TraducereRaspuns = new TraducereRaspuns(null, null, 'English');

  constructor(private backend: BackendService) { }

  ngOnInit() {
  }

  addQuestion1():void{

    if (this.questionToAdd.punctaj > 100 || this.questionToAdd.punctaj <= 0) {
      alert("Points must be between 1 and 100");
    } else {
      this.questionToAdd.traduceri = [];
      this.questionToAdd.raspuns = [];
      var intreb = new Intrebare(this.questionToAdd.nivelDificultate, this.questionToAdd.limbaj, this.questionToAdd.domeniu, this.questionToAdd.tehnologie, this.questionToAdd.punctaj, this.questionToAdd.raspuns, this.questionToAdd.traduceri);
      var tradIntreb = new TraducereIntrebare(null, this.questionTransToAdd.enunt, this.questionTransToAdd.limba);
      intreb.traduceri.push(tradIntreb);

      this.answer1.traduceri=[];
      var ans1= new Raspuns(null,this.answer1.valoareAdevar,this.answer1.traduceri);
      this.answer2.traduceri=[];
      var ans2= new Raspuns(null,this.answer2.valoareAdevar,this.answer2.traduceri);
      this.answer3.traduceri=[];
      var ans3= new Raspuns(null,this.answer3.valoareAdevar,this.answer3.traduceri);
      this.answer4.traduceri=[];
      var ans4= new Raspuns(null,this.answer4.valoareAdevar,this.answer4.traduceri);

      var tradAns1= new TraducereRaspuns(null,this.answerTrans1.enunt,this.answerTrans1.limba);
      var tradAns2= new TraducereRaspuns(null,this.answerTrans2.enunt,this.answerTrans2.limba);
      var tradAns3= new TraducereRaspuns(null,this.answerTrans3.enunt,this.answerTrans3.limba);
      var tradAns4= new TraducereRaspuns(null,this.answerTrans4.enunt,this.answerTrans4.limba);

      ans1.traduceri.push(tradAns1);
      ans2.traduceri.push(tradAns2);
      ans3.traduceri.push(tradAns3);
      ans4.traduceri.push(tradAns4);

      intreb.raspuns.push(ans1);
      intreb.raspuns.push(ans2);
      intreb.raspuns.push(ans3);
      intreb.raspuns.push(ans4);

      console.log(intreb);
      this.backend.addQuestion(intreb).subscribe((res: Intrebare) => {
        //
        window.location.reload();
      });
      console.log("Am iesit");
      alert("Question added successfully");
    }

  }

  addQuestion(): void {

    if (this.questionToAdd.punctaj > 100 || this.questionToAdd.punctaj <= 0) {
      alert("Points must be between 1 and 100");
    } else {
      this.backend.addQuestion(this.questionToAdd).subscribe((res: Intrebare) => {

        this.backend.addQuestionTrans(this.questionTransToAdd).subscribe(res2 => {
          this.questionTransToAdd = new TraducereIntrebare(null, null, 'English');
        });


        this.backend.addAnswer(this.answer1).subscribe((res2: Raspuns) => {

          this.backend.addAnswerTrans(this.answerTrans1).subscribe(resx => {
            this.answer1 = new Raspuns(null, false, null);
            this.answerTrans1 = new TraducereRaspuns(null, null, 'English');
          });
        });
        this.backend.addAnswer(this.answer2).subscribe((res2: Raspuns) => {

          this.backend.addAnswerTrans(this.answerTrans2).subscribe(resx => {
            this.answer2 = new Raspuns(null, false, null);
            this.answerTrans2 = new TraducereRaspuns(null, null, 'English');
          });
        });
        this.backend.addAnswer(this.answer3).subscribe((res2: Raspuns) => {

          this.answer3 = new Raspuns(null, false, null);
          this.backend.addAnswerTrans(this.answerTrans3).subscribe(resx => {
            this.answer3 = new Raspuns(null, false, null);
            this.answerTrans3 = new TraducereRaspuns(null, null, 'English');
          });
        });
        this.backend.addAnswer(this.answer4).subscribe((res2: Raspuns) => {

          this.backend.addAnswerTrans(this.answerTrans4).subscribe(resx => {
            this.answer4 = new Raspuns(null, false, null);
            this.answerTrans4 = new TraducereRaspuns(null, null, 'English');
            this.questionToAdd = new Intrebare(null, null, null, null, null, null, null);
            alert("Question added successfully");
          });
        });

      });
    }
  }

}
