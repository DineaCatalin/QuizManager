import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import {ActivatedRoute, Router} from "@angular/router";

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
  urls: menuItem[] = [
    { active: false, url: "question-page", text: "Filter and list questions" },
    { active: false, url: "create-question-page", text: "Add Question" },
    { active: false, url: "generateQuiz", text: "Generate Quiz" }
  ];

  constructor(private route: ActivatedRoute, private router: Router) { }

  ngOnInit() {
    console.log(this.urls);
  }

  navigate(url: menuItem) {
    for(let i = 0; i < this.urls.length;  i++){
      this.urls[i].active = false;
    }
    this.urls[this.urls.indexOf(url)].active = true;
    this.router.navigate(["/" + url.url]);
  }
}
