import { AirlyCaqiCodes } from "./airly-caqi-codes";

export interface AirQuality {
    pM1 : number;
    pM25 : number;
    pM10 : number;
    pressure : number;
    humidity: number;
    temperature : number;
    airlyCaqiValue : number;
    airlyCaqiCodes : AirlyCaqiCodes,
}
