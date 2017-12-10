import {Component, OnInit, ViewEncapsulation} from '@angular/core';
import {QuizService} from '../quiz.service';
import {PrettyprintPipe} from '../prettyprint.pipe';
import {Quiz} from '../../models/quiz';
import {Intrebare} from '../../models/Intrebare';

@Component({
  selector: 'app-quiz',
  templateUrl: './quiz.component.html',
  styleUrls: ['./quiz.component.css'],
  encapsulation: ViewEncapsulation.None,
  // template: `
  //   <div [innerHTML]="obj | prettyprint"></div>
  // `,
  // pipes: [PrettyprintPipe]
})
export class QuizComponent implements OnInit {

  constructor(private quizService: QuizService) {
  }

  ngOnInit() {
  }

  result: Quiz;
  toShow: string;
  intrebari: Intrebare[];

  nrInterbari;
  nivelDificultate;
  limbaj;
  domeniu;
  tehnologie;

  // formatJSON() {
  //   this.toShow = this.result.informatiiGenerale.toString() + this.result.punctajTotal.toString();
  //   this.intrebari = this.result.intrebari;
  //   this.intrebari.forEach(i=> this.toShow.concat(i.limbaj));
  // }


  /**
   * beta model for displaying data.......
   * this function should be modified
   */
  generateQuiz() {
    // this.quizService.generateQuiz(this.nrInterbari, this.nivelDificultate, this.limbaj, this.domeniu, this.tehnologie).subscribe();
    this.quizService.generateQuiz(this.nrInterbari, this.nivelDificultate, this.limbaj, this.domeniu, this.tehnologie).subscribe(resp => {
      console.log(resp);
      this.result = resp;
      if (this.result != null) {

        this.toShow = ''
        this.toShow += 'informatii generale: ' + this.result.informatiiGenerale + ', punctaj total: ' + this.result.punctajTotal +
          ', intrebari: ';
        this.result.intrebari.forEach(intreb => this.toShow += 'nivel dificultate:  ' + intreb.nivelDificultate + ',limbaj: '
          + intreb.limbaj + ', domenniu: ' + intreb.domeniu + ', tehnologie: ' + intreb.tehnologie + ', puncatj: ' + intreb.punctaj + '');
      }
    });
    // this.result = JSON.stringify(this.quizService.generateQuiz(this.nrInterbari, this.nivelDificultate, this.limbaj, this.domeniu, this.tehnologie).subscribe());
  }

  // stringify(something): string {
  //   // return JSON.parse(something);
  //   let variable: any = JSON.stringify(something);
  //   variable.replace('{','');
  //   variable.replace('}','');
  //   variable.replace('[','');
  //   variable.replace(']','');
  //   variable.replace('"','');
  //   // variable.replace('}','');
  //   // variable.replace('}','');
  //   // JSON.stringify()
  //   return variable;
  // }


  // syntaxHighlight(json) {
  //   if (typeof json != 'string') {
  //     json = JSON.stringify(json, undefined, 2);
  //   }
  //   json = json.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
  //   return json.replace(/("(\\u[a-zA-Z0-9]{4}|\\[^u]|[^\\"])*"(\s*:)?|\b(true|false|null)\b|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?)/g, function (match) {
  //     var cls = 'number';
  //     if (/^"/.test(match)) {
  //       if (/:$/.test(match)) {
  //         cls = 'key';
  //       } else {
  //         cls = 'string';
  //       }
  //     } else if (/true|false/.test(match)) {
  //       cls = 'boolean';
  //     } else if (/null/.test(match)) {
  //       cls = 'null';
  //     }
  //     return '<span class="' + cls + '">' + match + '</span>';
  //   });
  // }


}
