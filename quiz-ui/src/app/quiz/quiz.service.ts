import {Injectable} from '@angular/core';
import {Observable} from 'rxjs/Observable';
import {Quiz} from '../models/quiz';
import {Headers, Http, RequestOptions} from '@angular/http';


class ReturnClass {
  nrInterbari: number;
  nivelDificultate: number;
  limbaj: string;
  domeniu: string;
  tehnologie: string;
  limba: string;
}

@Injectable()
export class QuizService {

  result: Quiz;

  headers = new Headers({'Content-Type': 'application/json'});
  options = new RequestOptions({headers: this.headers});

  private handleError(error: any): Observable<any> {
    // console.error(error);
    return error.message || error;
  }

  constructor(private http: Http) {
  }

  generateQuiz(nrIntrebari: number, nivelDificultate: number, limbaj: string, domeniu: string, tehnologie: string): Observable<Quiz> {

    const r: ReturnClass = {
      'nrInterbari': nrIntrebari,
      'nivelDificultate': nivelDificultate,
      'limbaj': limbaj,
      'domeniu': domeniu,
      'tehnologie': tehnologie,
      'limba': 'English'
    };

    return this.http.post('http://localhost:9090/generateQuiz', r).map(response => response.json()).catch(this.handleError);
  }

  setQuiz(quiz: Quiz): void {
    this.result = quiz;
  }

  public updateQuiz(quiz: Quiz, username: string): Observable<Quiz> {
    console.log(quiz);
    console.log(username);
    return this.http.post('http://localhost:9090/saveOrUpdateQuiz/' + username + '/' + quiz.punctajTotal + '/' + quiz.idQuiz, this.options).map(response => response.json());
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
