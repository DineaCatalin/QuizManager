import {Component, OnInit, ViewEncapsulation} from '@angular/core';
import {BackendService} from '../backend.service';

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
    const encodedPass = btoa(this.password) ;
    this.backend.login(this.username, encodedPass).subscribe((res: string) => {
        if (res) {
          alert('Logged in successfully');
          this.backend.login(this.username, encodedPass);
          sessionStorage.setItem(this.username, this.username);
        } else {
          alert('username or password are incorrect');
        }
      }
    );

  }

}
