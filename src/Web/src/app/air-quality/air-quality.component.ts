import { Component, OnInit } from '@angular/core';
import { AirQuality } from '../air-quality';
import { AirQualityService } from '../air-quality.service';
import { AirlyCaqiCodes } from '../airly-caqi-codes';

@Component({
  selector: 'app-air-quality',
  templateUrl: './air-quality.component.html',
  styleUrls: ['./air-quality.component.css']
})
export class AirQualityComponent implements OnInit {

  airlyCaqiCodes : AirlyCaqiCodes = {
    description :"",
  }
  airQuality : AirQuality  = {
    pM1: 0,
    pM10: 0,
    pM25: 0,
    airlyCaqiValue: 0,
    humidity: 0,
    pressure:0,
    temperature:0,
    airlyCaqiCodes : this.airlyCaqiCodes
  }
  
  constructor(private airQualityService:AirQualityService){
  }

 
  ngOnInit(): void {
    this.getData;
    setInterval(()=>this.getData(),1000)
  }

  getData(){
    this.airQualityService.getValues().subscribe((items:AirQuality)=>{
      this.airQuality = items;
    });
  }
}
