import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { TodoTask } from '../models/todotask';
import { BaseService } from './base.service';

@Injectable({
  providedIn: 'root'
})
export class TodoTaskService extends BaseService {
  public create(data): Observable<TodoTask> {
    return this.httpClient.post<TodoTask>(`${this.APIEndpoint}TodoTask`, data);
  }

  public Get(CategoryID: number, Description, IsActive): Observable<TodoTask[]> {
    let params = '';
    if (CategoryID != null) {
      params += `&CategoryID=${CategoryID}`;
    }
    if (Description != null) {
      params += `&Description=${Description}`;
    }
    if (IsActive != null) {
      params += `&IsActive=${IsActive}`;
    }
    return this.httpClient.get<TodoTask[]>(`${this.APIEndpoint}TodoTask?${params}`);

  }

  public Update(data: TodoTask): Observable<TodoTask> {
    return this.httpClient.put<TodoTask>(`${this.APIEndpoint}TodoTask/${data.todoTaskID}`, data);
  }

  public getById(id): Observable<TodoTask> {
    return this.httpClient.get<TodoTask>
      (`${this.APIEndpoint}TodoTask/${id}`);
  }
}
