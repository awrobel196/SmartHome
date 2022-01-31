import { IotDevice } from "./iot-device";

export interface IotDeviceValues {
    temperature: number,
    pressure: number,
    humidity: number,
    ioTDevice: IotDevice,
}
