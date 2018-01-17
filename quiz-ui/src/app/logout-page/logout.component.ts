import {Component, OnInit, ViewEncapsulation} from '@angular/core';

import {BackendService} from '../backend.service';


@Component({
  selector: 'app-create-user',
  templateUrl: './logout.component.html',
  styleUrls: ['./logout.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class LogoutComponent implements OnInit {

  constructor(private backend: BackendService) {
    this.logout();
  }

  ngOnInit() {
  }
  logout(): void {
    sessionStorage.clear();
  }
}
