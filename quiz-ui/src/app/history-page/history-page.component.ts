import {Component, OnInit, ViewEncapsulation} from '@angular/core';
import {BackendService} from '../backend.service';
import {Quiz} from '../models/quiz';
import {Observable} from 'rxjs/Observable';
import {Intrebare} from '../models/Intrebare';

@Component({
  selector: 'app-history-page',
  templateUrl: './history-page.component.html',
  styleUrls: ['./history-page.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class HistoryPageComponent implements OnInit {

  constructor(private backend: BackendService) {
  }

  historyList: Quiz[];

  nivelD: number[] = [1, 2, 3, 4];

  nivelDificultate: number;
  limbaj: string;
  domeniu: string;
  tehnologie: string;
  utilizator: string;

  ngOnInit() {
    const obj = JSON.parse(sessionStorage.getItem(sessionStorage.key(0)));
    this.utilizator = obj.username;
    this.backend.getHistory(this.utilizator).subscribe((res: Quiz[]) => {
      this.historyList = res;
    });
  }

  searchQuizes() {
    this.backend.quizSearch(this.utilizator, this.nivelDificultate, this.limbaj, this.domeniu, this.tehnologie).subscribe((res: Quiz[]) => {
      this.historyList = res;
    });

  }
}
