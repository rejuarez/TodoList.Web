import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TodoTaskListComponent } from './todo-task-list/todo-task-list.component';


const routes: Routes = [
  {
    path: '',
    component: TodoTaskListComponent,
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

