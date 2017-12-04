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
  checkboxCaseSens = false;
  selectDeselect = false;
  programmingLanguage = "";
  limbaIntrebare = "English";
  tehnologie = "";
  domeniu = "";
  dupaCuvant = "";
  showHide = false;
  filterOn = false;

  trad = [
    {id:0, limba:"Romanian"},
    {id:1, limba:"English"},
    {id:2, limba:"German"}
  ];
  checkboxes1 = [
    { id: 0, nume: "Junior", checked: false },
    { id: 1, nume: "Intermediary", checked: false },
    { id: 2, nume: "Senior", checked: false },
    { id: 3, nume: "Architect", checked: false }
  ];

  checkboxes2 = [
    { id: 0, nume: "0", checked: false },
    { id: 1, nume: "1", checked: false },
    { id: 2, nume: "2", checked: false },
    { id: 3, nume: "3", checked: false },
    { id: 4, nume: "4", checked: false }
  ];
  edit: boolean = false;

  editableQuestion: Intrebare;

  constructor(private backend: BackendService) {
  }

  ngOnInit() {
    this.refresh();
  }

  checkUncheck(): void{
    console.log("selectDeselect");
    this.selectDeselect = !this.selectDeselect;
    this.checkboxCaseSens = this.selectDeselect;
    for(var i = 0; i < this.checkboxes1.length; i++){
      this.checkboxes1[i].checked = this.selectDeselect;
    }
    for(var i = 0; i<this.checkboxes2.length; i++){
      this.checkboxes2[i].checked = this.selectDeselect;
    }
  }

  clearSearch(): void {
    this.tehnologie = "";
    this.domeniu = "";
    this.dupaCuvant = "";
    this.programmingLanguage = "";
    this.limbaIntrebare = "English";
    this.selectDeselect = false;
    this.checkboxCaseSens = false;
    for(var i = 0; i < this.checkboxes1.length; i++){
      this.checkboxes1[i].checked = false;
    }
    for(var i = 0; i < this.checkboxes2.length; i++){
      this.checkboxes2[i].checked = false;
    }
  }

  getDifList(): number[]{
    var difList = [];
    for(var i = 0; i < this.checkboxes1.length; i++){
      if(this.checkboxes1[i].checked == true && this.checkboxes1[i].nume == "Junior"){
        difList.push(1);
      }
      if(this.checkboxes1[i].checked == true && this.checkboxes1[i].nume == "Intermediary"){
        difList.push(2);
      }
      if(this.checkboxes1[i].checked == true && this.checkboxes1[i].nume == "Senior"){
        difList.push(3);
      }
      if(this.checkboxes1[i].checked == true && this.checkboxes1[i].nume == "Architect"){
        difList.push(4);
      }
    }
    return difList;
  }

  getAnsList(): number[]{
    var ansList = [];
    for(var i = 0; i < this.checkboxes2.length; i++){
      if(this.checkboxes2[i].checked == true){
        ansList.push(parseInt(this.checkboxes2[i].nume));
      }
    }
    return ansList;
  }

  filter(): Intrebare[] {
    var difs = this.getDifList();
    var ans = this.getAnsList();
    this.backend.filterQuestions(difs, this.programmingLanguage, this.tehnologie, this.domeniu, ans, this.dupaCuvant, this.checkboxCaseSens, this.limbaIntrebare).subscribe((res: Intrebare[]) => {
      this.questions = res;
    })
    this.questions.forEach((intrebare: Intrebare) => {
      this.backend.getTranslationsOfQuestion(intrebare.idIntrebare).subscribe(res => {
        intrebare.traduceri = res;
      });
    });

    return this.questions;
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
