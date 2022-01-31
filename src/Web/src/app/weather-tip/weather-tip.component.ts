import { Component, OnInit } from '@angular/core';
import { Weather } from '../weather';
import { TomorrowWeatherService } from '../tomorrow-weather.service';
import { WeatherForecastCode } from '../weather-forecast-code';

@Component({
  selector: 'app-weather-tip',
  templateUrl: './weather-tip.component.html',
  styleUrls: ['./weather-tip.component.css']
})
export class WeatherTipComponent implements OnInit {

  weatherForecastCode : WeatherForecastCode = {
    description: "",
    icon: "",
  }

  weatherForecast : Weather = {
    feelsTemperature:0,
    humidity : 0,
    pressure : 0,
    temperature : 0,
    windSpeed : 0,
    weatherForecastCode : this.weatherForecastCode,
    testDateTime : "",
  }

  constructor(private tomorrowWeatherService:TomorrowWeatherService) { }

  ngOnInit(): void {
    this.getData();
    setInterval(()=>this.getData(),1000);
  }
  
  getData(){
    this.tomorrowWeatherService.getValues().subscribe((items:Weather)=>{
      this.weatherForecast=items
    });
  }
}
