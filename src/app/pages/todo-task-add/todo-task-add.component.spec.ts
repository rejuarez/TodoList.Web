import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TodoTaskAddComponent } from './todo-task-add.component';

describe('TodoTaskAddComponent', () => {
  let component: TodoTaskAddComponent;
  let fixture: ComponentFixture<TodoTaskAddComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TodoTaskAddComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TodoTaskAddComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
