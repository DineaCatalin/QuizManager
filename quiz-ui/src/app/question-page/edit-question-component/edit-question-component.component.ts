import {Component, EventEmitter, Input, OnInit, Output, ViewEncapsulation} from '@angular/core';
import {Intrebare} from "../../models/Intrebare";
import {Raspuns} from "../../models/Raspuns";
import {TraducereRaspuns} from "../../models/TraducereRaspuns";
import {TraducereIntrebare} from "../../models/TraducereIntrebare";
import {BackendService} from "../../backend.service";

@Component({
  selector: 'edit-question',
  templateUrl: './edit-question-component.component.html',
  styleUrls: ['./edit-question-component.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class EditQuestionComponentComponent implements OnInit {

  @Input() intrebare: Intrebare;

  @Output() finishEditing: EventEmitter<boolean> = new EventEmitter<boolean>();

  constructor(private backend: BackendService) { }

  ngOnInit() {
  }

  addQuestion(): void {
    if(this.intrebare.punctaj > 100 || this.intrebare.punctaj <= 0) {
      alert("Points must be between 1 and 100");
    } else {
      this.backend.addQuestion(this.intrebare).subscribe((res: Intrebare) => {
        this.backend.addQuestionTrans(this.intrebare.traduceri[0]).subscribe( res2 => {
        });
        this.backend.addAnswer(this.intrebare.raspuns[0]).subscribe( (res2: Raspuns) => {
          this.backend.addAnswerTrans(this.intrebare.raspuns[0].traduceri[0]).subscribe(resx => {
          });
        });
        this.backend.addAnswer(this.intrebare.raspuns[1]).subscribe( (res2: Raspuns) => {
          this.backend.addAnswerTrans(this.intrebare.raspuns[1].traduceri[0]).subscribe(resx => {
          });
        });
        this.backend.addAnswer(this.intrebare.raspuns[2]).subscribe( (res2: Raspuns) => {
          this.backend.addAnswerTrans(this.intrebare.raspuns[2].traduceri[0]).subscribe(resx => {
          });
        });
        this.backend.addAnswer(this.intrebare.raspuns[3]).subscribe( (res2: Raspuns) => {
          this.backend.addAnswerTrans(this.intrebare.raspuns[3].traduceri[0]).subscribe(resx => {
            alert("Edit successful");
            this.finishEditing.emit(true);
          });
        });
      });
    }
  }
}
