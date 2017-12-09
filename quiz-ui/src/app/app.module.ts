import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';

import { AppComponent } from './app.component';
import { QuestionPageComponent } from './question-page/question-page.component';
import {FormsModule} from "@angular/forms";
import {BackendService} from "./backend.service";
import {Http, HttpModule} from "@angular/http";
import { MenuPageComponent } from './menu-page/menu-page.component';
import { EditQuestionComponentComponent } from './question-page/edit-question-component/edit-question-component.component';
import { CreateQuestionComponent } from './question-page/create-question/create-question.component';
import { QuizComponent } from './generateQuiz/quiz.component';
import {QuizService} from './quiz.service';


@NgModule({
  declarations: [
    AppComponent,
    QuestionPageComponent,
    MenuPageComponent,
    EditQuestionComponentComponent,
    CreateQuestionComponent,
    QuizComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpModule
  ],
  providers: [BackendService, QuizService],
  bootstrap: [AppComponent]
})
export class AppModule { }
