import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { EditQuestionComponentComponent } from './edit-question-component.component';

describe('EditQuestionComponentComponent', () => {
  let component: EditQuestionComponentComponent;
  let fixture: ComponentFixture<EditQuestionComponentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EditQuestionComponentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(EditQuestionComponentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
