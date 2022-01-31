€	
DC:\Users\adam\source\repos\SmartHome\iot\IoTServiceWorker\Program.cs
IHost 
host 

= 
Host 
.  
CreateDefaultBuilder &
(& '
args' +
)+ ,
. 
ConfigureServices 
( 
services 
=>  "
{ 
services		 
.		 
AddHostedService		 !
<		! "
Worker		" (
>		( )
(		) *
)		* +
;		+ ,
services

 
.

 

AddMediatR

 
(

 
Assembly

 $
.

$ % 
GetExecutingAssembly

% 9
(

9 :
)

: ;
)

; <
;

< =
services 
. 
AddTransient 
< 
ITimeScheduler ,
,, -
TimeScheduler. ;
>; <
(< =
)= >
;> ?
} 
) 
. 
Build 

(
 
) 
; 
await 
host 

.
 
RunAsync 
( 
) 
; °
dC:\Users\adam\source\repos\SmartHome\iot\IoTServiceWorker\Sensors\Command\SaveSensorValuesCommand.cs
	namespace 	
IoTServiceWorker
 
. 
Sensors "
." #
Command# *
{ 
public 

class #
SaveSensorValuesCommand (
:) *
IRequest+ 3
{ 
public 
IoTDeviceValues 
	IoTValues (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
}		 
}

 ¨ 
kC:\Users\adam\source\repos\SmartHome\iot\IoTServiceWorker\Sensors\Command\SaveSensorValuesCommandHandler.cs
	namespace

 	
IoTServiceWorker


 
.

 
Sensors

 "
.

" #
Command

# *
{ 
public 

class *
SaveSensorValuesCommandHandler /
:0 1
IRequestHandler2 A
<A B#
SaveSensorValuesCommandB Y
>Y Z
{ 
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public *
SaveSensorValuesCommandHandler -
(- .
IConfiguration. <
configuration= J
)J K
{ 	
_configuration 
= 
configuration *
;* +
} 	
public 
Task 
< 
Unit 
> 
Handle  
(  !#
SaveSensorValuesCommand! 8
request9 @
,@ A
CancellationTokenB S
cancellationTokenT e
)e f
{ 	
var 
connectionString  
=! "
_configuration# 1
[1 2
$str2 H
]H I
;I J
var 

deviceName 
= 
_configuration +
[+ ,
$str, 8
]8 9
;9 :
using 
( 
var 

connection !
=" #
new$ '
SqlConnection( 5
(5 6
connectionString6 F
)F G
)G H
{ 
var 
result 
= 

connection '
.' (
QueryFirstOrDefault( ;
(; <
$str	< Ê
,
Ê Ë
new 
{ 

DeviceName "
=# $
$str% .
}   
)   
;   
var## 
temperature## 
=##  !
result##" (
.##( )
Temperature##) 4
;##4 5
if&& 
(&& 
temperature&& 
!=&&  "
null&&# '
)&&' (
{'' 

connection(( 
.(( 
Execute(( &
(((& '
$str	((' Ÿ
,
((Ÿ  
new)) 
{** 
id++ 
=++  
result++! '
.++' (
IoTDeviceId++( 3
,++3 4
temp,,  
=,,! "
request,,# *
.,,* +
	IoTValues,,+ 4
.,,4 5
Temperature,,5 @
,,,@ A
pres--  
=--! "
request--# *
.--* +
	IoTValues--+ 4
.--4 5
Pressure--5 =
,--= >
hum.. 
=..  !
request.." )
...) *
	IoTValues..* 3
...3 4
Humidity..4 <
,..< =
dat// 
=//  !
DateTime//" *
.//* +
Now//+ .
}00 
)00 
;00 
}11 
else22 
{33 

connection44 
.44 
Execute44 &
(44& '
$str44' f
,44f g
new55 
{66 
id77 
=77  
result77! '
.77' (
IoTDeviceId77( 3
,773 4
temp88  
=88! "
request88# *
.88* +
	IoTValues88+ 4
.884 5
Temperature885 @
,88@ A
pres99  
=99! "
request99# *
.99* +
	IoTValues99+ 4
.994 5
Pressure995 =
,99= >
hum:: 
=::  !
request::" )
.::) *
	IoTValues::* 3
.::3 4
Humidity::4 <
,::< =
dat;; 
=;;  !
DateTime;;" *
.;;* +
Now;;+ .
}<< 
)<< 
;<< 
}== 
}?? 
returnBB 
TaskBB 
.BB 

FromResultBB "
(BB" #
newBB# &
UnitBB' +
(BB+ ,
)BB, -
)BB- .
;BB. /
}CC 	
}DD 
}EE ½
`C:\Users\adam\source\repos\SmartHome\iot\IoTServiceWorker\Sensors\Query\GetSensorsValuesQuery.cs
	namespace		 	
IoTServiceWorker		
 
.		 
Sensors		 "
.		" #
Query		# (
{

 
public 

class !
GetSensorsValuesQuery &
:' (
IRequest) 1
<1 2
IoTDeviceValues2 A
>A B
{ 
} 
} Ú
fC:\Users\adam\source\repos\SmartHome\iot\IoTServiceWorker\Sensors\Query\GetSensorsValuesQueyHandler.cs
	namespace 	
IoTServiceWorker
 
. 
Sensors "
." #
Query# (
{		 
public

 

class

 '
GetSensorsValuesQueyHandler

 ,
:

- .
IRequestHandler

/ >
<

> ?!
GetSensorsValuesQuery

? T
,

T U
IoTDeviceValues

V e
>

e f
{ 
public 
Task 
< 
IoTDeviceValues #
># $
Handle% +
(+ ,!
GetSensorsValuesQuery, A
requestB I
,I J
CancellationTokenK \
cancellationToken] n
)n o
{ 	
const 
int 
busId 
= 
$num 
;  
Pressure #
defaultSeaLevelPressure ,
=- .
WeatherHelper/ <
.< =
MeanSeaLevel= I
;I J!
I2cConnectionSettings !
i2cSettings" -
=. /
new0 3
(3 4
busId4 9
,9 :
Bme280; A
.A B
SecondaryI2cAddressB U
)U V
;V W
using 
	I2cDevice 
	i2cDevice %
=& '
	I2cDevice( 1
.1 2
Create2 8
(8 9
i2cSettings9 D
)D E
;E F
using 
Bme280 
bme80 
=  
new! $
Bme280% +
(+ ,
	i2cDevice, 5
)5 6
{ 
TemperatureSampling #
=$ %
Sampling& .
.. /
LowPower/ 7
,7 8
PressureSampling  
=! "
Sampling# +
.+ ,
UltraHighResolution, ?
,? @
HumiditySampling  
=! "
Sampling# +
.+ ,
Standard, 4
,4 5
} 
; 
var   

readResult   
=   
bme80   "
.  " #
Read  # '
(  ' (
)  ( )
;  ) *
bme80"" 
."" 
TryReadAltitude"" !
(""! "#
defaultSeaLevelPressure""" 9
,""9 :
out""; >
var""? B
altValue""C K
)""K L
;""L M
var%% 
temperature%% 
=%% 

readResult%% (
.%%( )
Temperature%%) 4
?%%4 5
.%%5 6
DegreesCelsius%%6 D
??%%E G
$num%%H I
;%%I J
var&& 
	barometer&& 
=&& 

readResult&& &
.&&& '
Pressure&&' /
?&&/ 0
.&&0 1
Hectopascals&&1 =
??&&> @
$num&&A B
;&&B C
var'' 
humidity'' 
='' 

readResult'' %
.''% &
Humidity''& .
?''. /
.''/ 0
Percent''0 7
??''8 :
$num''; <
;''< =
return)) 
Task)) 
.)) 

FromResult)) "
())" #
new))# &
IoTDeviceValues))' 6
())6 7
)))7 8
{** 
Humidity,, 
=,, 
Math,, 
.,,  
Round,,  %
(,,% &
humidity,,& .
,,,. /
$num,,0 1
),,1 2
,,,2 3
Pressure-- 
=-- 
Math-- 
.--  
Round--  %
(--% &
	barometer--& /
,--/ 0
$num--1 2
)--2 3
,--3 4
Temperature.. 
=.. 
Math.. "
..." #
Round..# (
(..( )
temperature..) 4
,..4 5
$num..6 7
)..7 8
}// 
)// 
;// 
}11 	
}22 
}33 Æ
TC:\Users\adam\source\repos\SmartHome\iot\IoTServiceWorker\Services\ITimeScheduler.cs
	namespace 	
IoTServiceWorker
 
. 
Services #
{ 
public		 

	interface		 
ITimeScheduler		 #
{

 
public 
Task 
RunSchedule 
(  
string  &
cronPattern' 2
)2 3
;3 4
} 
} Š
SC:\Users\adam\source\repos\SmartHome\iot\IoTServiceWorker\Services\TimeScheduler.cs
	namespace		 	
IoTServiceWorker		
 
.		 
Services		 #
{

 
public 

class 
TimeScheduler 
:  
ITimeScheduler! /
{ 
private 
readonly 
ILogger  
<  !
Worker! '
>' (
_logger) 0
;0 1
public 
TimeScheduler 
( 
ILogger $
<$ %
Worker% +
>+ ,
logger- 3
)3 4
{ 	
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
RunSchedule %
(% &
string& ,
cronPattern- 8
)8 9
{ 	
var 
	parsedExp 
= 
CronExpression *
.* +
Parse+ 0
(0 1
cronPattern1 <
)< =
;= >
var 
currentUtcTime 
=  
DateTimeOffset! /
./ 0
UtcNow0 6
.6 7
UtcDateTime7 B
;B C
var 
occurenceTime 
= 
	parsedExp  )
.) *
GetNextOccurrence* ;
(; <
currentUtcTime< J
)J K
;K L
var 
delay 
= 
occurenceTime %
.% &
GetValueOrDefault& 7
(7 8
)8 9
;9 :
var 
	delaySpan 
= 
delay !
-" #
currentUtcTime$ 2
;2 3
_logger 
. 
LogInformation "
(" #
$str# Y
,Y Z
delay[ `
,` a
DateTimeOffsetb p
.p q
Nowq t
)t u
;u v
await 
Task 
. 
Delay 
( 
	delaySpan &
)& '
;' (
} 	
} 
} ê
CC:\Users\adam\source\repos\SmartHome\iot\IoTServiceWorker\Worker.cs
	namespace 	
IoTServiceWorker
 
{		 
public

 

class

 
Worker

 
:

 
BackgroundService

 +
{ 
private 
readonly 
ILogger  
<  !
Worker! '
>' (
_logger) 0
;0 1
private 
readonly 
	IMediator "
	_mediator# ,
;, -
private 
readonly 
ITimeScheduler '

_scheduler( 2
;2 3
public 
Worker 
( 
ILogger 
< 
Worker $
>$ %
logger& ,
,, -
	IMediator. 7
mediator8 @
,@ A
ITimeSchedulerB P
	schedulerQ Z
)Z [
{ 	
_logger 
= 
logger 
; 
	_mediator 
= 
mediator  
;  !

_scheduler 
= 
	scheduler "
;" #
} 	
	protected 
override 
async  
Task! %
ExecuteAsync& 2
(2 3
CancellationToken3 D
stoppingTokenE R
)R S
{ 	
while 
( 
! 
stoppingToken !
.! "#
IsCancellationRequested" 9
)9 :
{ 
_logger 
. 
LogInformation &
(& '
$str' B
,B C
DateTimeOffsetD R
.R S
NowS V
)V W
;W X
IoTDeviceValues 
value  %
=& '
await( -
GetValueFromSensor. @
(@ A
)A B
;B C
await 
SaveValueToDatabase )
() *
value* /
)/ 0
;0 1
await   

_scheduler    
.    !
RunSchedule  ! ,
(  , -
$str  - 8
)  8 9
;  9 :
}!! 
}"" 	
public%% 
async%% 
Task%% 
<%% 
IoTDeviceValues%% )
>%%) *
GetValueFromSensor%%+ =
(%%= >
)%%> ?
{&& 	
var'' 
response'' 
='' 
new'' !
GetSensorsValuesQuery'' 4
(''4 5
)''5 6
;''6 7
return(( 
await(( 
	_mediator(( "
.((" #
Send((# '
(((' (
response((( 0
)((0 1
;((1 2
})) 	
public++ 
async++ 
Task++ 
SaveValueToDatabase++ -
(++- .
IoTDeviceValues++. =
value++> C
)++C D
{,, 	
var-- 
request-- 
=-- 
new-- #
SaveSensorValuesCommand-- 5
(--5 6
)--6 7
{.. 
	IoTValues// 
=// 
value// !
}00 
;00 
await11 
	_mediator11 
.11 
Send11  
(11  !
request11! (
)11( )
;11) *
}22 	
}33 
}44 