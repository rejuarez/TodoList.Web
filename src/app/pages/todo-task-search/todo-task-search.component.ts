import { Component, OnInit } from '@angular/core';
import { Category } from 'src/app/@core/models/category';
import { CategoryService } from 'src/app/@core/services/category.service';
import { TodoTaskService } from 'src/app/@core/services/todo-task.service';

@Component({
  selector: 'app-todo-task-search',
  templateUrl: './todo-task-search.component.html',
  styleUrls: ['./todo-task-search.component.scss']
})
export class TodoTaskSearchComponent implements OnInit {
  ShowInactives: any;
  Description: any;
  Category: any;

  CategoryItems: Category[];
  constructor(private todoTaskService: TodoTaskService, private categoryService: CategoryService) {
    this.categoryService.get().subscribe(res => this.CategoryItems = res);
  }

  ngOnInit() {
  }
  Search() {
    //this.todoTaskService.Get()
  }
}
