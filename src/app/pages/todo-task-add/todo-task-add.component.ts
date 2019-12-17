import { ChangeDetectorRef, Component, ElementRef, EventEmitter, Input, OnInit, Output, ViewChild } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { NbComponentStatus, NbGlobalPhysicalPosition, NbGlobalPosition, NbToastrService } from '@nebular/theme';
import { TodoTaskService } from 'src/app/@core/services/todo-task.service';

@Component({
  selector: 'app-todo-task-add',
  templateUrl: './todo-task-add.component.html',
  styleUrls: ['./todo-task-add.component.scss']
})
export class TodoTaskAddComponent implements OnInit {
  @Input() CategoryID: number;
  @Output() todoTaskAddedEvent = new EventEmitter();
  formGroup: FormGroup;
  destroyByClick = true;
  duration = 2000;
  hasIcon = true;
  loading = false;
  position: NbGlobalPosition = NbGlobalPhysicalPosition.TOP_RIGHT;
  @ViewChild('myInput', { static: false }) myInputVariable: ElementRef;
  constructor(
    private fb: FormBuilder,
    private cd: ChangeDetectorRef,
    private todoTaskService: TodoTaskService,
    private toastrService: NbToastrService
  ) { }

  ngOnInit() {
    this.formGroup = this.fb.group({
      todoTaskID: [0],
      categoryID: [this.CategoryID],
      description: [null, Validators.required],
      document: [null, Validators.required]
    });
  }
  submit() {
    if (this.formGroup.valid) {
      this.loading = true;
      this.todoTaskService.create(this.prepareSaveUser()).subscribe(
        res => {
          this.showToast('success', '', 'The task was created successfully');
          this.formGroup.reset();

          this.myInputVariable.nativeElement.value = '';
          if (this.todoTaskAddedEvent.observers.length !== 0) {
            this.todoTaskAddedEvent.emit();
            this.loading = false;
          }
        },
        err => {
          this.showToast('danger', '', err.statusText);
          this.formGroup.reset();
          this.loading = false;
        }
      );
    }
  }

  onFileChange(files: FileList) {
    if (files && files[0].size > 10000000) {
      this.formGroup.controls.document.setErrors({ SizeError: true });
      return;
    }

    if (files && files[0].size > 0) {
      this.formGroup.patchValue({
        document: files[0]
      });
    }
  }

  prepareSaveUser(): FormData {
    const formModel = this.formGroup.value;

    let formData = new FormData();
    formData.append('todoTaskID', '0');
    formData.append('categoryID', String(this.CategoryID));
    formData.append('description', formModel.description);
    formData.append('document', formModel.document);

    return formData;
  }

  private showToast(type: NbComponentStatus, title: string, body: string) {
    const config = {
      status: type,
      destroyByClick: this.destroyByClick,
      duration: this.duration,
      hasIcon: true,
      position: this.position,
      preventDuplicates: false,
    };
    const titleContent = title ? `. ${title}` : '';

    this.toastrService.show(
      body,
      `${titleContent}`,
      config);
  }

  reset() {
  }
}
