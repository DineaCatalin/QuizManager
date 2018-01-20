import {NgModule} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';
import {QuestionPageComponent} from './question-page/question-page.component';
import {MenuPageComponent} from './menu-page/menu-page.component';
import {CreateQuestionComponent} from './question-page/create-question/create-question.component';
import {QuizComponent} from './quiz/generateQuiz/quiz.component';
import {ShowQuizComponent} from './quiz/show-quiz/show-quiz.component';
import {HistoryPageComponent} from './history-page/history-page.component';
import {LoginComponent} from './login/login.component';
import {CreateUserComponent} from './user-page/create-user/create-user.component';
import {LogoutComponent} from './logout-page/logout.component';
import {HistoryQuizQuestionsComponent} from './history-page/history-quiz-questions/history-quiz-questions.component'

const routes: Routes = [
  { path: '', redirectTo: 'login', pathMatch: 'full' },
  { path: 'question-page', component: QuestionPageComponent },
  { path: 'create-question-page', component: CreateQuestionComponent },
  { path: 'menu', component: MenuPageComponent },
  { path: 'generateQuiz', component: QuizComponent },
  { path: 'showQuiz', component: ShowQuizComponent},
  { path: 'history', component: HistoryPageComponent},
  {path: 'login', component: LoginComponent},
  {path: 'logout-page', component: LogoutComponent},
  {path: 'create-user-page', component: CreateUserComponent},
  {path: 'history-quiz-questions', component: HistoryQuizQuestionsComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
