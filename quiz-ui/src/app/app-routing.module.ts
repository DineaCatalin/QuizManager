import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {QuestionPageComponent} from "./question-page/question-page.component";
import {MenuPageComponent} from "./menu-page/menu-page.component";
import {CreateQuestionComponent} from "./question-page/create-question/create-question.component";
import {FilterPageComponent} from "./filter-page/filter-page.component";

const routes: Routes = [
  { path: '', redirectTo: '', pathMatch: 'full' },
  { path: 'question-page', component: QuestionPageComponent },
  { path: 'filter-page', component: FilterPageComponent },
  { path: 'create-question-page', component: CreateQuestionComponent },
  { path: 'menu', component: MenuPageComponent }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
