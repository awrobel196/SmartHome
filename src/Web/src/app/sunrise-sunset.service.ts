import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { SunriseSunset } from './sunrise-sunset';

@Injectable({
  providedIn: 'root'
})
export class SunriseSunsetService {

  baseUrl = "http://localhost:5080/";
  
  constructor(private http:HttpClient) { }

  getValues() : Observable<SunriseSunset>{
    return this.http.get<SunriseSunset>(this.baseUrl + "SunsetSunrise");
  }
}
