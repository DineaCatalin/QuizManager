import {Component, OnInit, ViewEncapsulation} from '@angular/core';

import {Utilizator} from '../../models/Utilizator';

import {BackendService} from '../../backend.service';
import {TranslateService} from "../../quiz/translate.service";


@Component({
  selector: 'app-create-user',
  templateUrl: './create-user.component.html',
  styleUrls: ['./create-user.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class CreateUserComponent implements OnInit {


  username: string;
  password: string;
  confirmpassword: string;

  constructor(private backend: BackendService, private translateService: TranslateService) {
  }

  ngOnInit() {
  }

  createUser(): void {
    const userToAdd: Utilizator = new Utilizator(this.username, this.password, 2);
    if (this.password !== this.confirmpassword) {
      alert('Password and Confirmpassword are not the same');
      window.location.reload();
    } else {
      alert('User was added');
      userToAdd.parola = btoa(this.password);
      this.backend.createUser(userToAdd).subscribe((res: Utilizator) => {
          window.location.reload();
        }
      );
    }
  }
}

