import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { NbMenuItem } from '@nebular/theme';
import { map } from 'rxjs/operators';
import { FEATURES_ITEMS } from './@core/data/featuresItems';
import { Category } from './@core/models/category';
import { CategoryService } from './@core/services/category.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements OnInit {
  title = 'TodoList';
  menu: NbMenuItem[] = [];

  constructor(private categoryService: CategoryService, private router: Router) {

  }

  ngOnInit(): void {
    this.categoryService.get().pipe(
      map((clients: Category[]) => clients.map(
        x => {
          let item = new NbMenuItem();
          item.title = x.name;
          item.icon = x.iconName;
          item.link = `/pages/category/${x.categoryID}`;
          return item;
        }
      ))
    ).subscribe(
      res => {
        this.menu = res;
        FEATURES_ITEMS.map(x => this.menu.push(x));
      }
    );
    this.router.navigate(['/pages/search']);
  }


}
