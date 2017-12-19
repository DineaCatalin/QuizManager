import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {QuestionPageComponent} from "./question-page/question-page.component";
import {MenuPageComponent} from "./menu-page/menu-page.component";
import {CreateQuestionComponent} from "./question-page/create-question/create-question.component";
import {QuizComponent} from './quiz/generateQuiz/quiz.component';
import {ShowQuizComponent} from './quiz/show-quiz/show-quiz.component';

const routes: Routes = [
  { path: '', redirectTo: '', pathMatch: 'full' },
  { path: 'question-page', component: QuestionPageComponent },
  { path: 'create-question-page', component: CreateQuestionComponent },
  { path: 'menu', component: MenuPageComponent },
  { path: 'generateQuiz', component: QuizComponent },
  { path: 'showQuiz', component: ShowQuizComponent}

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
