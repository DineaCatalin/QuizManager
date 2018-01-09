import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import {BackendService} from "../backend.service";
import {Quiz} from "../models/quiz";

@Component({
  selector: 'app-history-page',
  templateUrl: './history-page.component.html',
  styleUrls: ['./history-page.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class HistoryPageComponent implements OnInit {

  constructor(private backend: BackendService) { }

  historyList: Quiz[];

  ngOnInit() {
    this.historyList = this.backend.getHistory(1);
  }

}
