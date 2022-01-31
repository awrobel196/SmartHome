import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CurrentWeatherComponent } from './current-weather/current-weather.component';
import { AirQualityComponent } from './air-quality/air-quality.component';
import { WeatherForecastComponent } from './weather-forecast/weather-forecast.component';
import { WeatherTipComponent } from './weather-tip/weather-tip.component';
import { IotHubComponent } from './iot-hub/iot-hub.component';
import {APP_BASE_HREF} from '@angular/common';
import { registerLocaleData } from '@angular/common';
import { LottieModule } from 'ngx-lottie';
import player from 'lottie-web';

import localePl from '@angular/common/locales/pl';
import { NgApexchartsModule } from "ng-apexcharts";
import { SunriseSunsetComponent } from './sunrise-sunset/sunrise-sunset.component';
registerLocaleData(localePl);

export function playerFactory() {
  return player;
}

@NgModule({
  declarations: [
    AppComponent,
    CurrentWeatherComponent,
    AirQualityComponent,
    WeatherForecastComponent,
    WeatherTipComponent,
    IotHubComponent,
    SunriseSunsetComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    LottieModule.forRoot({ player: playerFactory }),
    NgApexchartsModule
  ],
  providers: [{provide:APP_BASE_HREF, useValue:'/'}],
  bootstrap: [AppComponent]
})
export class AppModule { }
