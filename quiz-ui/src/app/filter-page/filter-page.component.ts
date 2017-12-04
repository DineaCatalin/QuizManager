import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import {BackendService} from "../backend.service";
import { CommonModule} from "@angular/common";
import {selector} from "rxjs/operator/publish";
import {translateDiagnostics} from "@angular/compiler-cli/src/diagnostics/translate_diagnostics";
import {Intrebare} from "../models/Intrebare";



@Component({
  selector: 'app-filter-page',
  templateUrl: './filter-page.component.html',
  styleUrls: ['./filter-page.component.css'],
  encapsulation: ViewEncapsulation.None
})

export class FilterPageComponent {

  constructor( private backend: BackendService) { }

  intrebari: Intrebare[];

  checkboxCaseSens = false;
  selectDeselect = false;
  limbaIntrebare = "Romana";
  tehnologie = "";
  domeniu = "";
  dupaCuvant = "";

  trad = [
    {id:0, limba:"Romana"},
    {id:1, limba:"Engleza"},
    {id:2, limba:"Germana"}
  ];


  checkboxes1 = [
    { id: 0, nume: "Junior", checked: false },
    { id: 1, nume: "Intermediate", checked: false },
    { id: 2, nume: "Senior", checked: false },
    { id: 3, nume: "Architect", checked: false }
  ];

  checkboxes2 = [
    { id: 0, nume: "C", checked: false },
    { id: 1, nume: "Java", checked: false },
    { id: 2, nume: "HTML", checked: false },
    { id: 3, nume: "SQL", checked: false }
  ];

  checkboxes3 = [
    { id: 0, nume: "0", checked: false },
    { id: 1, nume: "1", checked: false },
    { id: 2, nume: "2", checked: false },
    { id: 3, nume: "3", checked: false },
    { id: 4, nume: "4", checked: false }
  ];

  checkUncheck(): void{
    console.log("selectDeselect");
    this.selectDeselect = !this.selectDeselect;
    for(var i = 0; i < this.checkboxes1.length; i++){
      this.checkboxes1[i].checked = this.selectDeselect;
    }
    for(var i = 0; i<this.checkboxes2.length; i++){
      this.checkboxes2[i].checked = this.selectDeselect;
    }
    for(var i = 0; i<this.checkboxes3.length; i++){
      this.checkboxes3[i].checked = this.selectDeselect;
    }
  }

  clearSearch(): void {
    this.tehnologie = "";
    this.domeniu = "";
    this.dupaCuvant = "";
    this.limbaIntrebare = "Romana";
    this.selectDeselect = false;
    this.checkboxCaseSens = false;
    for(var i = 0; i < this.checkboxes1.length; i++){
      this.checkboxes1[i].checked = false;
    }
    for(var i = 0; i < this.checkboxes2.length; i++){
      this.checkboxes2[i].checked = false;
    }
    for(var i = 0; i < this.checkboxes3.length; i++){
      this.checkboxes3[i].checked = false;
    }
  }

  getDifList(): number[]{
    var difList = [];
    for(var i = 0; i < this.checkboxes1.length; i++){
      if(this.checkboxes1[i].checked == true && this.checkboxes1[i].nume == "Junior"){
        difList.push(1);
      }
      if(this.checkboxes1[i].checked == true && this.checkboxes1[i].nume == "Intermediate"){
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

  getLangList(): string[]{
    var langList = [];
    for(var i = 0; i < this.checkboxes2.length; i++){
      if(this.checkboxes2[i].checked == true){
        langList.push(this.checkboxes2[i].nume);
      }
    }
    return langList;
  }

  getAnsList(): number[]{
    var ansList = [];
    for(var i = 0; i < this.checkboxes3.length; i++){
      if(this.checkboxes3[i].checked == true){
        ansList.push(parseInt(this.checkboxes3[i].nume));
      }
    }
    return ansList;
  }

  filter(): Intrebare[]{
    var difs = this.getDifList();
    var langs = this.getLangList();
    var ans = this.getAnsList();
    this.backend.filterQuestions(difs, langs, this.tehnologie, this.domeniu, ans, this.dupaCuvant, this.checkboxCaseSens, this.limbaIntrebare).subscribe((res: Intrebare[]) =>{
      this.intrebari = res;
    })
    this.intrebari.forEach((intrebare: Intrebare) => {
      this.backend.getTranslationsOfQuestion(intrebare.idIntrebare).subscribe(res => {
        intrebare.traduceri = res;
      })
    });

    return this.intrebari;
  }
}
