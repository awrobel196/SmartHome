import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Weather } from './weather';
import { Observable } from 'rxjs';
@Injectable({
  providedIn: 'root'
})
export class CurrentWeatherService {

  baseUrl = "http://localhost:5080/";
  
  constructor(private http:HttpClient) { }

  getValues() : Observable<Weather>{
    return this.http.get<Weather>(this.baseUrl + "Weather/Current");
  }
}
