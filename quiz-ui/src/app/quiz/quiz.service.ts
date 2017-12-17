import {Injectable} from '@angular/core';
import {Observable} from 'rxjs/Observable';
import {Quiz} from '../models/quiz';
import {Http} from '@angular/http';


class ReturnClass {
  nrInterbari: number;
  niveleDificultate: number[];
  limbaje: string[];
  domenii: string[];
  tehnologii: string[];
}

@Injectable()
export class QuizService {

  constructor(private http: Http) {
  }

  generateQuiz(nrIntrebari: number, niveleDificultate: number[], limbaje: string[], domenii: string[], tehnologii: string[]): Observable<Quiz> {


    // let r: ReturnClass;
    // r.nrIntrebari = nrIntrebari;
    // r.nivelDificultate = nivelDificultate;
    // r.limbaje = limbaje;
    // r.tehnologii = tehnologii;

    const r: ReturnClass = {
      'nrInterbari': nrIntrebari,
      'niveleDificultate': niveleDificultate,
      'limbaje': limbaje,
      'domenii': domenii,
      'tehnologii': tehnologii
    };

    return this.http.post('http://localhost:9090/generateQuiz', r).map(response => response.json());


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
