import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { Category } from './@core/models/category';
import { CategoryService } from './@core/services/category.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements OnInit {
  title = 'TodoList';
  menu: Observable<any> = new Observable<any[]>();

  constructor(private categoryService: CategoryService) {

  }

  ngOnInit(): void {

    this.menu = this.categoryService.get().pipe(
      map((clients: Category[]) => clients.map(
        x => {
          return {
            title: x.name,
            icon: x.iconName,
            link: ''
          };
        }
      ))
    );
  }


}
