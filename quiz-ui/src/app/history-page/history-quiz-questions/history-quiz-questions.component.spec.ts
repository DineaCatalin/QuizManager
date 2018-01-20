import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HistoryQuizQuestionsComponent } from './history-quiz-questions.component';

describe('HistoryQuizQuestionsComponent', () => {
  let component: HistoryQuizQuestionsComponent;
  let fixture: ComponentFixture<HistoryQuizQuestionsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HistoryQuizQuestionsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HistoryQuizQuestionsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
