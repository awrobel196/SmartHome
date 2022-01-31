import { Component, OnInit } from '@angular/core';
import { IotDevice } from '../iot-device';
import { IotDeviceValues } from '../iot-device-values';
import { IotDeviceValuesService } from '../iot-device-values.service';

@Component({
  selector: 'app-iot-hub',
  templateUrl: './iot-hub.component.html',
  styleUrls: ['./iot-hub.component.css']
})
export class IotHubComponent implements OnInit {

  iotDevice :IotDevice = {
    name : "",
  }


  iotDeviceValues : IotDeviceValues[] = [{
    humidity : 0,
    pressure : 0,
    temperature : 0,
    ioTDevice : this.iotDevice,
  }];

  averageTemperature = 0;
  averageHumidity = 0;

  constructor(private iotDeviceValuesService : IotDeviceValuesService) { }

  ngOnInit(): void {
    this.getData();
    setInterval(()=>this.getData(),1000);
  }

  getData(){
    this.iotDeviceValuesService.getValues().subscribe((items:IotDeviceValues[])=>{
      this.iotDeviceValues=items
    });
    this.calculateAverageTemperature();
    this.calculateAverageHumidity();
  }

  calculateAverageTemperature(){
    this.averageTemperature = this.iotDeviceValues.reduce((a,b) => a + b.temperature, 0) / this.iotDeviceValues.length;
  }

  calculateAverageHumidity(){
    this.averageHumidity = this.iotDeviceValues.reduce((a,b) => a + b.humidity, 0) / this.iotDeviceValues.length;
  }




}
