import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CreateLogoutComponent } from './create-logout.component';

describe('CreateLogoutComponent', () => {
  let component: CreateLogoutComponent;
  let fixture: ComponentFixture<CreateLogoutComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CreateLogoutComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CreateLogoutComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
