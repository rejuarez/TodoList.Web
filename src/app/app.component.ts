import { Component, OnInit } from '@angular/core';
import { NbMenuItem } from '@nebular/theme';
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
  menu: Observable<NbMenuItem[]> = new Observable<NbMenuItem[]>();

  constructor(private categoryService: CategoryService) {

  }

  ngOnInit(): void {
    this.menu = this.categoryService.get().pipe(
      map((clients: Category[]) => clients.map(
        x => {
          let item = new NbMenuItem();
          item.title = x.name;
          item.icon = x.iconName;
          item.link = `/pages/${x.categoryID}`;
          return item;
        }
      ));
    );

    // this.menu = this.categoryService.get().pipe(
    //   map(x =>
    //     x.map(y => {
    //       let item = new NbMenuItem();
    //       item.title = y.name;
    //       item.icon = y.iconName;
    //       item.link = `/pages/${y.categoryID}`;
    //       return item;
    //     })

    //   )


    // )

  }


}
