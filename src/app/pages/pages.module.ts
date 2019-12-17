import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { MatTableModule } from '@angular/material';
import { NbActionsModule, NbAlertModule, NbButtonModule, NbCardModule, NbCheckboxModule, NbDatepickerModule, NbIconModule, NbInputModule, NbListModule, NbRadioModule, NbSelectModule, NbSpinnerModule, NbToastrModule, NbToggleModule, NbTooltipModule, NbUserModule } from '@nebular/theme';
import { ThemeModule } from '../@theme/theme.module';
import { PagesRoutingModule } from './pages-routing.module';
import { TodoTaskAddComponent } from './todo-task-add/todo-task-add.component';
import { TodoTaskListComponent } from './todo-task-list/todo-task-list.component';
import { TodoTaskSearchComponent } from './todo-task-search/todo-task-search.component';




@NgModule({
  declarations: [TodoTaskAddComponent, TodoTaskListComponent, TodoTaskSearchComponent],
  imports: [
    CommonModule,
    NbCardModule,
    NbAlertModule,
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
    NbToggleModule,
    MatTableModule,
    NbTooltipModule,
    NbToastrModule.forRoot()

  ]
})
export class PagesModule { }
