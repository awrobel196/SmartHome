import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { AirQuality } from './air-quality';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AirQualityService {

  baseUrl = "http://localhost:5080/";
  
  constructor(private http:HttpClient) { }

  getValues() : Observable<AirQuality>{
    return this.http.get<AirQuality>(this.baseUrl + "AirQuality");
  }
}
