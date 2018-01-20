import {Component, OnInit, ViewEncapsulation} from '@angular/core';
import {BackendService} from '../backend.service';
import {TranslateService} from '../quiz/translate.service';
import {Utilizator} from '../models/Utilizator';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class LoginComponent implements OnInit {

  username: string;
  password: string;

  constructor(private backend: BackendService, private translateService: TranslateService) {
  }

  ngOnInit() {
  }
  login(): void {
    const encodedPass = btoa(this.password) ;
    this.backend.login(this.username, encodedPass).subscribe((res: Utilizator) => {
        if (res !== null) {
          alert('Logged in successfully');
          this.backend.login(this.username, encodedPass);
          sessionStorage.setItem(this.username, JSON.stringify(res));
          window.location.reload();
        } else {
          alert('Username or Password are incorrect');
        }
      }
    );
  }
}
