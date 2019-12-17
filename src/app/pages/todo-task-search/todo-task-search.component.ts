import { Component, OnInit } from '@angular/core';
import { base64StringToBlob } from 'blob-util';
import { saveAs } from 'file-saver';
import { Category } from 'src/app/@core/models/category';
import { TodoTask } from 'src/app/@core/models/todotask';
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
  loading = false;
  CategoryItems: Category[];
  ResultItems: TodoTask[];
  // Table Settings
  displayedColumns: string[] = ['created', 'description', 'category', 'action'];
  constructor(private todoTaskService: TodoTaskService, private categoryService: CategoryService) {
    this.categoryService.get().subscribe(res => this.CategoryItems = res);
  }

  ngOnInit() {
  }
  Search() {
    this.loading = true;
    this.Description = this.Description === '' ? null : this.Description;
    this.todoTaskService.Get(this.Category, this.Description, this.ShowInactives === true ? null : true).subscribe(
      res => {
        this.ResultItems = res;
        this.loading = false;
      },
      () => this.loading = false
    );
  }
  download(id) {

    this.loading = true;
    this.todoTaskService.getById(id).subscribe(
      res => {
        const blob = base64StringToBlob(res.fileContent);
        saveAs(blob, res.fileName);
        this.loading = false;
        return false;
      },
      () => this.loading = false
    );
  }
}
