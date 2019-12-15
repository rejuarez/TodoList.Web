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
}
