import { Component, OnInit } from '@angular/core';
import { Weather } from '../weather';
import { WeatherForecastCode } from '../weather-forecast-code';
import { CurrentWeatherService } from '../current-weather.service';
import { AnimationItem } from 'lottie-web';
import { AnimationOptions } from 'ngx-lottie';


@Component({
  selector: 'app-current-weather',
  templateUrl: './current-weather.component.html',
  styleUrls: ['./current-weather.component.css']
})
export class CurrentWeatherComponent implements OnInit {

  options: AnimationOptions = {
    path: 'https://assets6.lottiefiles.com/packages/lf20_xx4r8tdi.json',
  };

  weatherForecastCode : WeatherForecastCode = {
    description: "",
    icon: "",
  }

  weather : Weather = {
    feelsTemperature:0,
    humidity:0,
    pressure:0,
    temperature:0,
    windSpeed:0,
    weatherForecastCode: this.weatherForecastCode,
    testDateTime : "",
  }
  constructor(private currentWeatherService : CurrentWeatherService) { }

  ngOnInit(): void {
    this.getData();
    setInterval(()=>this.getData(),1000)
  }

  getData(){
    this.currentWeatherService.getValues().subscribe((items:Weather)=>{
      this.weather=items
    });
    console.log(this.weather.weatherForecastCode.icon);
    this.options = {
      path : this.weather.weatherForecastCode.icon
    }
  }

}
