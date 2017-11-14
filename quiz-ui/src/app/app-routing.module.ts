import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {UserPageComponent} from "./user-page/user-page.component";

const routes: Routes = [
  //{ path: '', redirectTo: '/createworkout', pathMatch: 'full' },
  { path: 'user', component: UserPageComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
