import { Component, OnInit, ViewChild } from '@angular/core';
import { Weather } from '../weather';
import { WeatherForecastService } from '../weather-forecast.service';
import { WeatherForecastCode } from '../weather-forecast-code';
import {
  ChartComponent,
  ApexAxisChartSeries,
  ApexChart,
  ApexXAxis,
  ApexDataLabels,
  ApexTooltip,
  ApexStroke,
  ApexFill,
} from "ng-apexcharts";

export type ChartOptions = {
  series: ApexAxisChartSeries;
  chart: ApexChart;
  xaxis: ApexXAxis;
  stroke: ApexStroke;
  tooltip: ApexTooltip;
  dataLabels: ApexDataLabels;
  fill: ApexFill
};


@Component({
  selector: 'app-weather-forecast',
  templateUrl: './weather-forecast.component.html',
  styleUrls: ['./weather-forecast.component.css']
})
export class WeatherForecastComponent implements OnInit {

  @ViewChild("chart") chart!: ChartComponent;
  public chartOptions: Partial<ChartOptions> | any;
  
  weatherForecastCode : WeatherForecastCode = {
    description: "",
    icon: "",
  }

  weatherForecast : Weather[] = [{
    feelsTemperature:0,
    humidity : 0,
    pressure : 0,
    temperature : 0,
    windSpeed : 0,
    weatherForecastCode : this.weatherForecastCode,
    testDateTime : "",
  }]

  temperatureArray = this.weatherForecast.map(obj=>{return obj.temperature});
  
  constructor(private weatherForecastService: WeatherForecastService) { 
    
    
    
    
    
    
    
    
    
    this.chartOptions = {
      stroke: {
        curve: 'smooth',
        width: 3, //ustawia odstwpy miedzy kwadratami
    },
    tooltip: {
      enabled: false,
      enabledOnSeries: undefined,
      marker: {
        show: false,
      }
    },
      chart: {
        type: 'area',
        height: 60,
        sparkline: {
          enabled: true
        },
      },
      colors:
        ['#F97E29']
      ,
      fill: {
        type: "gradient",
        gradient: {
            shadeIntensity: 1,
            opacityFrom: 0.1,
            opacityTo: 0.0,
            stops: [0, 90, 100]
        }
    },
      series: [
        {
          name: 'series_1',
          data: this.temperatureArray,
          color: "#F97E29",
         
        },
          
      ],
      dataLabels: {
        enabled: false
    },
    yaxis: {
      show: false
  },
  xaxis: {
    tooltip: {
      enabled: false
    }
  },
  
    
    
    }
















  }

  public generateData(baseval: number, count: number, yrange: { max: number; min: number; }) {
    var i = 0;
    var series = [];
    while (i < count) {
      var x = Math.floor(Math.random() * (750 - 1 + 1)) + 1;
      var y =
        Math.floor(Math.random() * (yrange.max - yrange.min + 1)) + yrange.min;
      var z = Math.floor(Math.random() * (75 - 15 + 1)) + 15;

      series.push([x, y, z]);
      baseval += 86400000;
      i++;
    }
    return series;
  }
  
  ngOnInit(): void {
    this.getData();
    setInterval(()=>this.getData(),1000)
  }


  getData(){
    this.weatherForecastService.getValues().subscribe((items:Weather[])=>{
      this.weatherForecast=items
    });
    this.temperatureArray = this.weatherForecast.map(obj=>{return obj.temperature})
    console.log(this.temperatureArray);

  
   this.chartOptions.series = [
    {
      data: this.temperatureArray,
  }
  ]

} 


}
