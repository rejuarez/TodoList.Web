import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Category } from '../models/category';
import { BaseService } from './base.service';

@Injectable({
  providedIn: 'root'
})
export class CategoryService extends BaseService {

  public get(): Observable<Category[]> {
    return this.httpClient.get<Category[]>
      (`${this.APIEndpoint}category`);
  }

  public getById(id): Observable<Category> {
    return this.httpClient.get<Category>
      (`${this.APIEndpoint}category/${id}`);
  }
}
