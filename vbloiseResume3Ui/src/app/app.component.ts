import { Component, OnInit } from '@angular/core';
import { DataService } from './data.service';
import {Observable} from 'rxjs';

declare function test(): any;

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements OnInit {
  rootStuff: Object;
  title = 'vbloiseResume3Ui';
  constructor(private data: DataService) { }

  ngOnInit() {
    test();
    this.data.getRootInfo().subscribe(data => {
        this.rootStuff = data;
        console.log(this.rootStuff);
      }
    );
    this.data.getRootInfoWithParams('yo', 'dude').subscribe(data => {
        this.rootStuff = data;
        console.log(this.rootStuff);
      }
    );
  }
}
