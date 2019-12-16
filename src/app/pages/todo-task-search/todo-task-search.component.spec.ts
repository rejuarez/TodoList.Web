import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TodoTaskSearchComponent } from './todo-task-search.component';

describe('TodoTaskSearchComponent', () => {
  let component: TodoTaskSearchComponent;
  let fixture: ComponentFixture<TodoTaskSearchComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TodoTaskSearchComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TodoTaskSearchComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
