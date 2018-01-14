import {Component, OnInit, ViewEncapsulation} from '@angular/core';

import {Utilizator} from '../../models/Utilizator';

import {BackendService} from '../../backend.service';


@Component({
  selector: 'app-create-user',
  templateUrl: './create-user.component.html',
  styleUrls: ['./create-user.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class CreateUserComponent implements OnInit {


  userToAdd: Utilizator = new Utilizator(null, null, null);
  username: string;
  password: string;
  confirmpassword: string;

  constructor(private backend: BackendService) {
  }

  ngOnInit() {
  }

  createUser(): void {
  //  userToAdd: Utilizator = new Utilizator(this.username, this.password, 2);
    if (this.password !== this.confirmpassword) {
      alert('Password and Confirmpassword are not the same');
    }
    else {
      alert('User was added');
    }
    this.backend.createUser(this.userToAdd).subscribe((res: Utilizator) => {
      //
      window.location.reload();
    });
  }
}
