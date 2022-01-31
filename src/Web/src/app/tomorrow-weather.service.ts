import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Weather } from './weather';

@Injectable({
  providedIn: 'root'
})
export class TomorrowWeatherService {

  baseUrl = "http://localhost:5080/";
  constructor(private http : HttpClient) { }

  getValues() : Observable<Weather>{
    return this.http.get<Weather>(this.baseUrl + "Weather/Tomorrow");
  }
}
