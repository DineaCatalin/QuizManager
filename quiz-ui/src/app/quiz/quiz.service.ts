import {Injectable} from '@angular/core';
import {Observable} from 'rxjs/Observable';
import {Quiz} from '../models/quiz';
import {Http} from '@angular/http';


class ReturnClass {
  nrInterbari: number;
  nivelDificultate: number;
  limbaj: string;
  domeniu: string;
  tehnologie: string;
}

@Injectable()
export class QuizService {

  result: Quiz;

  constructor(private http: Http) {
  }

  generateQuiz(nrIntrebari: number, nivelDificultate: number, limbaj: string, domeniu: string, tehnologie: string): Observable<Quiz> {

    const r: ReturnClass = {
      'nrInterbari': nrIntrebari,
      'nivelDificultate': nivelDificultate,
      'limbaj': limbaj,
      'domeniu': domeniu,
      'tehnologie': tehnologie
    };

    return this.http.post('http://localhost:9090/generateQuiz', r).map(response => response.json());
  }

  setQuiz(quiz: Quiz): void {
    this.result = quiz;
  }


  // stringify(what): string {
  //   return JSON.stringify(what);
  // }
  //
  // public toPerson(data: string): Person {
  //   let jsonData = JSON.parse(data);
  //
  //   personData = new Person(jsonData.name, jsonData.surname, jsonData.birthdate);
  //   return personData;
  // }

}
