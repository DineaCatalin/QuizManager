import {Component, OnInit, ViewEncapsulation} from '@angular/core';
import {BackendService} from '../backend.service';
// import {Md5} from 'ts-md5/dist/md5';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class LoginComponent implements OnInit {

  username: string;
  password: string;

  constructor(private backend: BackendService) {
  }

  ngOnInit() {
  }


  login(): void {

    // const encodedPass = Md5.hashStr(this.password) ;
    this.backend.login(this.username, this.password);
  }


}
