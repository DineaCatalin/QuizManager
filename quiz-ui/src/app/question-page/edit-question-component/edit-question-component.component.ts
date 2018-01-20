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

  updateQuestion():void {
    if(this.intrebare.punctaj > 100 || this.intrebare.punctaj <= 0) {
      alert("Points must be between 1 and 100");
    } else {

      var intreb = new Intrebare(this.intrebare.nivelDificultate, this.intrebare.limbaj, this.intrebare.domeniu, this.intrebare.tehnologie, this.intrebare.punctaj, this.intrebare.raspuns, this.intrebare.traduceri);

      var tradIntreb = new TraducereIntrebare(null, this.intrebare.traduceri[0].enunt, this.intrebare.traduceri[0].limba);



      var ans1= new Raspuns(null,this.intrebare.raspuns[0].valoareAdevar,this.intrebare.raspuns[0].traduceri);

      var ans2= new Raspuns(null,this.intrebare.raspuns[1].valoareAdevar,this.intrebare.raspuns[1].traduceri);

      var ans3= new Raspuns(null,this.intrebare.raspuns[2].valoareAdevar,this.intrebare.raspuns[2].traduceri);

      var ans4= new Raspuns(null,this.intrebare.raspuns[3].valoareAdevar,this.intrebare.raspuns[3].traduceri);

      var tradAns1= new TraducereRaspuns(null,this.intrebare.raspuns[0].traduceri[0].enunt,this.intrebare.raspuns[0].traduceri[0].limba);
      var tradAns2= new TraducereRaspuns(null,this.intrebare.raspuns[1].traduceri[0].enunt,this.intrebare.raspuns[1].traduceri[0].limba);
      var tradAns3= new TraducereRaspuns(null,this.intrebare.raspuns[2].traduceri[0].enunt,this.intrebare.raspuns[2].traduceri[0].limba);
      var tradAns4= new TraducereRaspuns(null,this.intrebare.raspuns[3].traduceri[0].enunt,this.intrebare.raspuns[3].traduceri[0].limba);





      //console.log(intreb);
      this.backend.updateQuestion(this.intrebare).subscribe((res:string)=>{
        if(res==null){
          res="nu e ceva ok";
        }
        console.log(res);
        //
      });

      alert("Question edited successfully");
    }
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
