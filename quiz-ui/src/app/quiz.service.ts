import {Injectable} from '@angular/core';
import {Observable} from 'rxjs/Observable';
import {Quiz} from './models/quiz';
import {Http} from '@angular/http';


class ReturnClass {
  nrIntrebari: number;
  nivelDificultate: number;
  limbaje: string;
  tehnologii: string;
}

@Injectable()
export class QuizService {

  constructor(private http: Http) {
  }

  generateQuiz(nrIntrebari: number, nivelDificultate: number, limbaje: string,domenui: string, tehnologii: string): Observable<Quiz> {


    // let r: ReturnClass;
    // r.nrIntrebari = nrIntrebari;
    // r.nivelDificultate = nivelDificultate;
    // r.limbaje = limbaje;
    // r.tehnologii = tehnologii;

    const r: ReturnClass = {
      'nrIntrebari': nrIntrebari,
      'nivelDificultate': nivelDificultate,
      'limbaje': limbaje,
      'tehnologii': tehnologii
    };

    return this.http.post('http://localhost:9090/generateQuiz', r).map(response => response.json());


  }

}
