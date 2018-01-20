import {BrowserModule} from '@angular/platform-browser';
import {NgModule} from '@angular/core';

import {AppRoutingModule} from './app-routing.module';

import {AppComponent} from './app.component';
import {QuestionPageComponent} from './question-page/question-page.component';
import {FormsModule} from '@angular/forms';
import {BackendService} from './backend.service';
import {HttpModule} from '@angular/http';
import {MenuPageComponent} from './menu-page/menu-page.component';
import {EditQuestionComponentComponent} from './question-page/edit-question-component/edit-question-component.component';
import {CreateQuestionComponent} from './question-page/create-question/create-question.component';
import {QuizComponent} from './quiz/generateQuiz/quiz.component';
import {QuizService} from './quiz/quiz.service';
import {ShowQuizComponent} from './quiz/show-quiz/show-quiz.component';
import {PrettyprintPipe} from './quiz/prettyprint.pipe';
import {LoginComponent} from './login/login.component';
import {CreateUserComponent} from './user-page/create-user/create-user.component';
import {HistoryPageComponent} from './history-page/history-page.component';
import {LogoutComponent} from './logout-page/logout.component';
import {TranslateService} from './quiz/translate.service';

@NgModule({
  declarations: [
    AppComponent,
    QuestionPageComponent,
    MenuPageComponent,
    EditQuestionComponentComponent,
    CreateQuestionComponent,
    QuizComponent,
    ShowQuizComponent,
    HistoryPageComponent,
    PrettyprintPipe,
    LoginComponent,
    CreateUserComponent,
    LogoutComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpModule
  ],
  providers: [BackendService, QuizService, TranslateService, QuestionPageComponent],
  bootstrap: [AppComponent]
})
export class AppModule {
}
