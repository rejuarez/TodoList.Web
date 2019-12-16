import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TodoTaskListComponent } from './todo-task-list/todo-task-list.component';
import { TodoTaskSearchComponent } from './todo-task-search/todo-task-search.component';


const routes: Routes = [
  {
    path: 'category/:id',
    component: TodoTaskListComponent,
  },
  {
    path: 'search',
    component: TodoTaskSearchComponent,
  },
];

@NgModule({
  imports: [
    RouterModule.forChild(routes),
  ],
  exports: [
    RouterModule,
  ],
})
export class PagesRoutingModule {
}

