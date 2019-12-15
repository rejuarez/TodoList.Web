import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { NbCardModule, NbCheckboxModule } from '@nebular/theme';
import { TodoTaskAddComponent } from './todo-task-add/todo-task-add.component';



@NgModule({
  declarations: [TodoTaskAddComponent],
  imports: [
    CommonModule,
    NbCardModule,
    NbCheckboxModule
  ]
})
export class PagesModule { }
