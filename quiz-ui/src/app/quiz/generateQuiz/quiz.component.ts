import {Component, ElementRef, EventEmitter, Input, OnInit, Output, ViewEncapsulation} from '@angular/core';
import {QuizService} from '../quiz.service';
import {Quiz} from '../../models/quiz';
import {Intrebare} from '../../models/Intrebare';
import {Router, RouterLinkActive} from '@angular/router';



@Component({
  selector: 'app-quiz',
  templateUrl: './quiz.component.html',
  styleUrls: ['./quiz.component.css'],
  encapsulation: ViewEncapsulation.None,

})
export class QuizComponent implements OnInit {

  result: Quiz;
  toShow: string;
  intrebari: Intrebare[];

  nrInterbari: number = null;
  nivelDificultate: number = null;
  limbaj: string = null;
  domeniu: string = null;
  tehnologie: string = null;

  nivelD: number[] = [1, 2, 3, 4];



  constructor(private quizService: QuizService, private router: Router, private elementRef: ElementRef) {
  }

  ngOnInit() {
  }


  /**
   * beta model for displaying data.......
   * this function should be modified
   */
  generateQuiz() {
    if (this.nrInterbari == null || this.nivelDificultate == null || this.limbaj == null || this.tehnologie == null || this.limbaj.length == 0 || this.tehnologie.length == 0) {
      alert('One field is empty!');
    } else {
      this.quizService.generateQuiz(this.nrInterbari, this.nivelDificultate, this.limbaj, this.domeniu, this.tehnologie).subscribe(resp => {
        console.log(resp);
        this.result = resp;
        this.quizService.setQuiz(this.result);
        if (this.result != null) {

          this.router.navigate(['./showQuiz']);
        }
      });
    }
  }


}
