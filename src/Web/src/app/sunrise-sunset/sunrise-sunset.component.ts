import { Component, OnInit } from '@angular/core';
import { SunriseSunsetService } from '../sunrise-sunset.service';
import { SunriseSunset } from '../sunrise-sunset';


@Component({
  selector: 'app-sunrise-sunset',
  templateUrl: './sunrise-sunset.component.html',
  styleUrls: ['./sunrise-sunset.component.css']
})
export class SunriseSunsetComponent implements OnInit {
  sunriseSunset! : SunriseSunset;
  dateNow = new Date();
  constructor(private sunriseSunsetService:SunriseSunsetService) { }

  ngOnInit(): void {
    this.getData;
    setInterval(()=>this.getData(),1000)
  }

  getData(){
    this.sunriseSunsetService.getValues().subscribe((items:SunriseSunset)=>{
      this.sunriseSunset=items
    });
  }

}
