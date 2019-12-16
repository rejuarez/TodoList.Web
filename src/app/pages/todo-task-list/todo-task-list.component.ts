import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Observable } from 'rxjs';
import { Category } from 'src/app/@core/models/category';
import { TodoTask } from 'src/app/@core/models/todotask';
import { CategoryService } from 'src/app/@core/services/category.service';
import { TodoTaskService } from 'src/app/@core/services/todo-task.service';

@Component({
  selector: 'app-todo-task-list',
  templateUrl: './todo-task-list.component.html',
  styleUrls: ['./todo-task-list.component.scss']
})
export class TodoTaskListComponent implements OnInit {
  TodoTasks: TodoTask[];
  CategoryID: number;

  Category$: Observable<Category>;
  loading = false;
  constructor(private todoTaskService: TodoTaskService, private categoryService: CategoryService, private activatedRoute: ActivatedRoute) { }

  ngOnInit() {
    this.activatedRoute.paramMap.subscribe(params => {
      this.CategoryID = Number(params.get('id'));
      this.Category$ = this.categoryService.getById(this.CategoryID);

      this.loadList();
    });
  }

  clickCheck($event, TodoTask) {
    TodoTask.isActive = $event.target.checked;
    this.todoTaskService.Update(TodoTask).subscribe(
      res => {
        console.log(res);
        this.loadList();
      }
    )
  }

  todoTaskAdded() {
    this.loadList();
  }

  loadList() {
    this.loading = true;
    this.todoTaskService.Get(this.CategoryID, null, true).subscribe(
      res => {
        this.TodoTasks = res;

        this.loading = false;
      }
    );
  }
}
