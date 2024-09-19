import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, CommonModule, FormsModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  public deptsArray:any[] = [
    {deptno : 10, dname : "Accounts", loc : "Hyderabad"},
    {deptno : 20, dname : "Sales", loc : "Pune"},
    {deptno : 30, dname : "Operations", loc : "Mumbai"},
    {deptno : 40, dname : "Marketing", loc : "Chennai"},
    {deptno : 50, dname : "Sales", loc : "Hyderabad"},
    {deptno : 60, dname : "Accounts", loc : "Pune"},
    {deptno : 70, dname : "Marketing", loc : "Chennai"},
    {deptno : 80, dname : "Sales", loc : "Mumbai"},
    {deptno : 90, dname : "Operations", loc : "Pune"},
  ];
}
