import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { IotDeviceValues } from './iot-device-values';

@Injectable({
  providedIn: 'root'
})
export class IotDeviceValuesService {

  baseUrl = "http://localhost:5080/";
  
  constructor(private http:HttpClient) { }

  getValues() : Observable<IotDeviceValues[]>{
    return this.http.get<IotDeviceValues[]>(this.baseUrl + "IoTData");
  }
}