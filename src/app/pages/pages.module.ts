import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { NbActionsModule, NbButtonModule, NbCardModule, NbCheckboxModule, NbDatepickerModule, NbIconModule, NbInputModule, NbListModule, NbRadioModule, NbSelectModule, NbSpinnerModule, NbToastrModule, NbUserModule } from '@nebular/theme';
//import { NbCardModule, NbCheckboxModule } from '@nebular/theme';
import { ThemeModule } from '../@theme/theme.module';
import { PagesRoutingModule } from './pages-routing.module';
import { TodoTaskAddComponent } from './todo-task-add/todo-task-add.component';
import { TodoTaskListComponent } from './todo-task-list/todo-task-list.component';


@NgModule({
  declarations: [TodoTaskAddComponent, TodoTaskListComponent],
  imports: [
    CommonModule,
    NbCardModule,
    NbCheckboxModule,
    PagesRoutingModule,
    ThemeModule,
    NbActionsModule,
    NbButtonModule,
    NbCardModule,
    NbCheckboxModule,
    NbDatepickerModule, NbIconModule,
    NbInputModule,
    NbRadioModule,
    NbSelectModule,
    NbUserModule,
    NbListModule,
    FormsModule,
    ReactiveFormsModule,
    NbSpinnerModule,
    NbToastrModule.forRoot()

  ]
})
export class PagesModule { }
