import { WeatherForecastCode } from "./weather-forecast-code";

export interface Weather {
    temperature : number,
    feelsTemperature: number,
    humidity: number,
    pressure: number,
    windSpeed: number,
    weatherForecastCode: WeatherForecastCode,
    testDateTime:string
}
