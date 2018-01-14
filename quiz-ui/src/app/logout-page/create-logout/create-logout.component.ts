import {Component, OnInit, ViewEncapsulation} from '@angular/core';

import {BackendService} from '../../backend.service';


@Component({
  selector: 'app-create-user',
  templateUrl: './create-logout.component.html',
  styleUrls: ['./create-logout.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class CreateLogoutComponent implements OnInit {

  constructor(private backend: BackendService) {
  }

  ngOnInit() {
  }

  logout(): void {
    sessionStorage.empty();
    window.location.reload();
  }
}
