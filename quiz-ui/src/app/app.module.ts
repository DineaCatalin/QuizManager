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
import {FilterPageComponent} from "./filter-page/filter-page.component";


@NgModule({
  declarations: [
    AppComponent,
    QuestionPageComponent,
    MenuPageComponent,
    EditQuestionComponentComponent,
    FilterPageComponent,
    CreateQuestionComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpModule
  ],
  providers: [BackendService],
  bootstrap: [AppComponent]
})
export class AppModule { }
