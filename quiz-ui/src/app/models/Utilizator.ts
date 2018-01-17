

export class Utilizator {

  username: string;
  parola: string;
  rangacces: number;

  constructor(username: string, parola: string, rangacces: number) {
    this.username = username;
    this.parola = parola;
    this.rangacces = rangacces;
  }
}
