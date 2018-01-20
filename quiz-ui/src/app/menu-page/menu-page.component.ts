import {Component, OnInit, ViewEncapsulation} from '@angular/core';
import {ActivatedRoute, Router} from '@angular/router';
import {TranslateService} from '../quiz/translate.service';
import {QuestionPageComponent} from '../question-page/question-page.component';

class menuItem {
  url: string;
  text: string;
  active: boolean;
}


@Component({
  selector: 'app-menu-page',
  templateUrl: './menu-page.component.html',
  styleUrls: ['./menu-page.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class MenuPageComponent implements OnInit {

  urls: menuItem[];


  constructor(private route: ActivatedRoute, private router: Router, private translateService: TranslateService,
              private questionPageComponent: QuestionPageComponent) {
  }

  ChangeLanguage(Language: string) {
    this.translateService.Language = Language;
    this.questionPageComponent.ngOnInit();
    this.ngOnInit();
  }

  ngOnInit() {
    this.urls = [
      {
        active: false,
        url: 'question-page',
        text: this.translateService.GetTranslations('lbl.question-page')
      },
      {
        active: false,
        url: 'create-question-page',
        text: this.translateService.GetTranslations('lbl.create-question-page')
      },
      {
        active: false,
        url: 'generateQuiz',
        text: this.translateService.GetTranslations('lbl.generateQuiz')
      },
      {
        active: false,
        url: 'create-user-page',
        text: this.translateService.GetTranslations('lbl.create-user-page')
      },
      {active: false, url: 'logout-page', text: this.translateService.GetTranslations('lbl.logout-page')},
      {active: false, url: 'history', text: this.translateService.GetTranslations('lbl.History')}
    ];

  }

  navigate(url: menuItem) {
    const data = sessionStorage.length;
    if (data !== 0) {
      for (let i = 0; i < this.urls.length; i++) {
        this.urls[i].active = false;
      }
      this.urls[this.urls.indexOf(url)].active = true;
      this.router.navigate(['/' + url.url]);
    }
  }
}
