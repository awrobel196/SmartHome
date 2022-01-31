�
_C:\Users\adam\source\repos\SmartHome\src\API\Application\AirQuality\Query\GetAirQualityQuery.cs
	namespace 	
API
 
. 
Application 
. 

AirQuality $
.$ %
Query% *
{ 
public 

class 
GetAirQualityQuery #
:$ %
IRequest& .
<. /
Domain/ 5
.5 6
Entities6 >
.> ?

AirQuality? I
>I J
{ 
} 
}		 �
fC:\Users\adam\source\repos\SmartHome\src\API\Application\AirQuality\Query\GetAirQualityQueryHandler.cs
	namespace 	
API
 
. 
Application 
. 

AirQuality $
.$ %
Query% *
{ 
public 

class %
GetAirQualityQueryHandler *
:+ ,
IRequestHandler- <
<< =
GetAirQualityQuery= O
,O P
DomainQ W
.W X
EntitiesX `
.` a

AirQualitya k
>k l
{ 
private		 
readonly		  
ApplicationDbContext		 -
_context		. 6
;		6 7
public

 %
GetAirQualityQueryHandler

 (
(

( ) 
ApplicationDbContext

) =
context

> E
)

E F
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
Domain  
.  !
Entities! )
.) *

AirQuality* 4
>4 5
Handle6 <
(< =
GetAirQualityQuery= O
requestP W
,W X
CancellationTokenY j
cancellationTokenk |
)| }
{ 	
var 
response 
= 
_context #
.# $

AirQuality$ .
. 
Include 
( 
x 
=> 
x 
. 
AirlyCaqiCodes ,
), -
;- .
return 
await 
Task 
. 

FromResult (
(( )
response) 1
.1 2
First2 7
(7 8
)8 9
)9 :
;: ;
} 	
} 
} �
]C:\Users\adam\source\repos\SmartHome\src\API\Application\IoT\Query\GetIoTDeviceValuesQuery.cs
	namespace 	
API
 
. 
Application 
. 
IoT 
. 
Query #
{ 
public 

class #
GetIoTDeviceValuesQuery (
:) *
IRequest+ 3
<3 4
List4 8
<8 9
IoTDeviceValues9 H
>H I
>I J
{ 
} 
}		 �
dC:\Users\adam\source\repos\SmartHome\src\API\Application\IoT\Query\GetIoTDeviceValuesQueryHandler.cs
	namespace 	
API
 
. 
Application 
. 
IoT 
. 
Query #
{ 
public 

class *
GetIoTDeviceValuesQueryHandler /
:0 1
IRequestHandler2 A
<A B#
GetIoTDeviceValuesQueryB Y
,Y Z
List[ _
<_ `
IoTDeviceValues` o
>o p
>p q
{		 
private

 
readonly

  
ApplicationDbContext

 -
_context

. 6
;

6 7
public *
GetIoTDeviceValuesQueryHandler -
(- . 
ApplicationDbContext. B
contextC J
)J K
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
List 
< 
IoTDeviceValues .
>. /
>/ 0
Handle1 7
(7 8#
GetIoTDeviceValuesQuery8 O
requestP W
,W X
CancellationTokenY j
cancellationTokenk |
)| }
{ 	
var 
result 
= 
_context !
.! "
IoTDeviceValues" 1
. 
Include 
( 
x 
=> 
x 
. 
	IoTDevice '
)' (
. 
AsEnumerable 
( 
) 
;  
return 
await 
Task 
. 

FromResult (
(( )
result) /
./ 0
ToList0 6
(6 7
)7 8
)8 9
;9 :
} 	
} 
} �
kC:\Users\adam\source\repos\SmartHome\src\API\Application\SunsetSunrise\Query\GetSunsetSunriseValuesQuery.cs
	namespace 	
API
 
. 
Application 
. 
SunsetSunrise '
.' (
Query( -
{ 
public 

class '
GetSunsetSunriseValuesQuery ,
:- .
IRequest/ 7
<7 8
Domain8 >
.> ?
Entities? G
.G H
SunsetSunriseH U
>U V
{ 
} 
} �
rC:\Users\adam\source\repos\SmartHome\src\API\Application\SunsetSunrise\Query\GetSunsetSunriseValuesQueryHandler.cs
	namespace 	
API
 
. 
Application 
. 
SunsetSunrise '
.' (
Query( -
{ 
public 

class .
"GetSunsetSunriseValuesQueryHandler 3
:4 5
IRequestHandler6 E
<E F'
GetSunsetSunriseValuesQueryF a
,a b
Domainc i
.i j
Entitiesj r
.r s
SunsetSunrise	s �
>
� �
{ 
private		 
readonly		  
ApplicationDbContext		 -
_context		. 6
;		6 7
public

 .
"GetSunsetSunriseValuesQueryHandler

 1
(

1 2 
ApplicationDbContext

2 F
context

G N
)

N O
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
Domain  
.  !
Entities! )
.) *
SunsetSunrise* 7
>7 8
Handle9 ?
(? @'
GetSunsetSunriseValuesQuery@ [
request\ c
,c d
CancellationTokene v
cancellationToken	w �
)
� �
{ 	
var 
result 
= 
_context !
.! "
SunsetSunrise" /
./ 0
FirstOrDefaultAsync0 C
(C D
)D E
;E F
return 
await 
result 
??  "
new# &
Domain' -
.- .
Entities. 6
.6 7
SunsetSunrise7 D
(D E
)E F
;F G
} 	
} 
} �
`C:\Users\adam\source\repos\SmartHome\src\API\Application\Weather\Query\GetCurrentWeatherQuery.cs
	namespace 	
API
 
. 
Application 
. 
Weather !
.! "
Query" '
{ 
public 

class "
GetCurrentWeatherQuery '
:( )
IRequest* 2
<2 3
WeatherForecast3 B
>B C
{ 
} 
}		 �
gC:\Users\adam\source\repos\SmartHome\src\API\Application\Weather\Query\GetCurrentWeatherQueryHandler.cs
	namespace 	
API
 
. 
Application 
. 
Weather !
.! "
Query" '
{ 
public 

class )
GetCurrentWeatherQueryHandler .
:/ 0
IRequestHandler1 @
<@ A"
GetCurrentWeatherQueryA W
,W X
WeatherForecastY h
>h i
{		 
private

 
readonly

  
ApplicationDbContext

 -
_context

. 6
;

6 7
public )
GetCurrentWeatherQueryHandler ,
(, - 
ApplicationDbContext- A
contextB I
)I J
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
WeatherForecast )
>) *
Handle+ 1
(1 2"
GetCurrentWeatherQuery2 H
requestI P
,P Q
CancellationTokenR c
cancellationTokend u
)u v
{ 	
var 
result 
= 
_context !
.! "
WeatherForecast" 1
. 
Include 
( 
x 
=> 
x 
.  
WeatherForecastCode  3
)3 4
;4 5
return 
await 
Task 
. 

FromResult (
(( )
result) /
./ 0
First0 5
(5 6
)6 7
??7 9
new9 <
WeatherForecast= L
(L M
)M N
)N O
;O P
} 	
} 
} �
pC:\Users\adam\source\repos\SmartHome\src\API\Application\Weather\Query\GetTomorrowWeatherForecastQueryHandler.cs
	namespace 	
API
 
. 
Application 
. 
Weather !
.! "
Query" '
{ 
public 

class 2
&GetTomorrowWeatherForecastQueryHandler 7
:8 9
IRequestHandler: I
<I J#
GetTomorrowWeatherQueryJ a
,a b
WeatherForecastc r
>r s
{		 
private

 
readonly

  
ApplicationDbContext

 -
_context

. 6
;

6 7
public 2
&GetTomorrowWeatherForecastQueryHandler 5
(5 6 
ApplicationDbContext6 J
contextK R
)R S
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
WeatherForecast )
>) *
Handle+ 1
(1 2#
GetTomorrowWeatherQuery2 I
requestJ Q
,Q R
CancellationTokenS d
cancellationTokene v
)v w
{ 	
var 
result 
= 
_context !
.! "
WeatherForecast" 1
.1 2
Skip2 6
(6 7
$num7 8
)8 9
.9 :
Take: >
(> ?
$num? @
)@ A
. 
Include 
( 
x 
=> 
x 
. 
WeatherForecastCode 1
)1 2
. 
AsEnumerable 
( 
) 
;  
return 
await 
Task 
. 

FromResult (
(( )
result) /
./ 0
FirstOrDefault0 >
(> ?
)? @
??A C
newD G
WeatherForecastH W
(W X
)X Y
)Y Z
;Z [
} 	
} 
} �
aC:\Users\adam\source\repos\SmartHome\src\API\Application\Weather\Query\GetTomorrowWeatherQuery.cs
	namespace 	
API
 
. 
Application 
. 
Weather !
.! "
Query" '
{ 
public 

class #
GetTomorrowWeatherQuery (
:) *
IRequest+ 3
<3 4
WeatherForecast4 C
>C D
{ 
} 
}		 �
aC:\Users\adam\source\repos\SmartHome\src\API\Application\Weather\Query\GetWeatherForecastQuery.cs
	namespace 	
API
 
. 
Application 
. 
Weather !
.! "
Query" '
{ 
public 

class #
GetWeatherForecastQuery (
:) *
IRequest+ 3
<3 4
List4 8
<8 9
WeatherForecast9 H
>H I
>I J
{ 
} 
}		 �
hC:\Users\adam\source\repos\SmartHome\src\API\Application\Weather\Query\GetWeatherForecastQueryHandler.cs
	namespace 	
API
 
. 
Application 
. 
Weather !
.! "
Query" '
{ 
public 

class *
GetWeatherForecastQueryHandler /
:0 1
IRequestHandler2 A
<A B#
GetWeatherForecastQueryB Y
,Y Z
List[ _
<_ `
WeatherForecast` o
>o p
>p q
{		 
private

 
readonly

  
ApplicationDbContext

 -
_context

. 6
;

6 7
public *
GetWeatherForecastQueryHandler -
(- . 
ApplicationDbContext. B
contextC J
)J K
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
List 
< 
WeatherForecast .
>. /
>/ 0
Handle1 7
(7 8#
GetWeatherForecastQuery8 O
requestP W
,W X
CancellationTokenY j
cancellationTokenk |
)| }
{ 	
var 
result 
= 
_context !
.! "
WeatherForecast" 1
. 
Skip 
( 
$num 
) 
. 
Take 
( 
$num 
) 
. 
Include 
( 
x 
=> 
x 
. 
WeatherForecastCode 1
)1 2
. 
AsEnumerable 
( 
) 
;  
return 
await 
Task 
. 

FromResult (
(( )
result) /
./ 0
ToList0 6
(6 7
)7 8
??8 :
new: =
List> B
<B C
WeatherForecastC R
>R S
(S T
)T U
)U V
;V W
} 	
} 
} �
PC:\Users\adam\source\repos\SmartHome\src\API\Controllers\AirQualityController.cs
	namespace 	
API
 
. 
Controllers 
{ 
[ 
ApiController 
] 
[		 
Route		 

(		
 
$str		 
)		 
]		 
public

 

class

  
AirQualityController

 %
:

& '
ControllerBase

( 6
{ 
private 
readonly 
	IMediator "
	_mediator# ,
;, -
public  
AirQualityController #
(# $
	IMediator$ -
mediator. 6
)6 7
{ 	
	_mediator 
= 
mediator  
;  !
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '

AirQuality' 1
>1 2
>2 3
GetAirQuality4 A
(A B
)B C
{ 	
var 
request 
= 
new 
GetAirQualityQuery 0
(0 1
)1 2
;2 3
var 
response 
= 
await  
	_mediator! *
.* +
Send+ /
(/ 0
request0 7
)7 8
;8 9
return 
response 
; 
} 	
} 
} �
MC:\Users\adam\source\repos\SmartHome\src\API\Controllers\IoTDataController.cs
	namespace 	
API
 
. 
Controllers 
{ 
[ 
ApiController 
] 
[		 
Route		 

(		
 
$str		 
)		 
]		 
public

 

class

 
IoTDataController

 "
:

# $
ControllerBase

% 3
{ 
private 
readonly 
	IMediator "
	_mediator# ,
;, -
public 
IoTDataController  
(  !
	IMediator! *
mediator+ 3
)3 4
{ 	
	_mediator 
= 
mediator  
;  !
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
List' +
<+ ,
IoTDeviceValues, ;
>; <
>< =
>= >
GetIoTValues? K
(K L
)L M
{ 	
var 
request 
= 
new #
GetIoTDeviceValuesQuery 5
(5 6
)6 7
;7 8
var 
response 
= 
await  
	_mediator! *
.* +
Send+ /
(/ 0
request0 7
)7 8
;8 9
return 
response 
; 
} 	
} 
} �
SC:\Users\adam\source\repos\SmartHome\src\API\Controllers\SunsetSunriseController.cs
	namespace 	
API
 
. 
Controllers 
{ 
[ 
ApiController 
] 
[		 
Route		 

(		
 
$str		 
)		 
]		 
public

 

class

 #
SunsetSunriseController

 (
:

) *
ControllerBase

+ 9
{ 
private 
readonly 
	IMediator "
	_mediator# ,
;, -
public #
SunsetSunriseController &
(& '
	IMediator' 0
mediator1 9
)9 :
{ 	
	_mediator 
= 
mediator  
;  !
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
SunsetSunrise '
>' (
Get) ,
(, -
)- .
{ 	
var 
request 
= 
new '
GetSunsetSunriseValuesQuery 9
(9 :
): ;
;; <
var 
response 
= 
	_mediator $
.$ %
Send% )
() *
request* 1
)1 2
;2 3
return 
await 
response !
;! "
} 	
} 
} �
MC:\Users\adam\source\repos\SmartHome\src\API\Controllers\WeatherController.cs
	namespace 	
API
 
. 
Controllers 
{ 
[ 
ApiController 
] 
[		 
Route		 

(		
 
$str		 
)		 
]		 
public

 

class

 
WeatherController

 "
:

# $
ControllerBase

% 3
{ 
private 
readonly 
	IMediator "
	_mediator# ,
;, -
public 
WeatherController  
(  !
	IMediator! *
mediator+ 3
)3 4
{ 	
	_mediator 
= 
mediator  
;  !
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
List' +
<+ ,
WeatherForecast, ;
>; <
>< =
>= >
GetWeatherForecast? Q
(Q R
)R S
{ 	
var 
request 
= 
new #
GetWeatherForecastQuery 5
(5 6
)6 7
;7 8
var 
response 
= 
await  
	_mediator! *
.* +
Send+ /
(/ 0
request0 7
)7 8
;8 9
return 
response 
; 
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
<& '
WeatherForecast' 6
>6 7
>7 8
GetCurrentWeather9 J
(J K
)K L
{ 	
var 
request 
= 
new "
GetCurrentWeatherQuery 4
(4 5
)5 6
;6 7
var   
response   
=   
await    
	_mediator  ! *
.  * +
Send  + /
(  / 0
request  0 7
)  7 8
;  8 9
return"" 
response"" 
;"" 
}## 	
[%% 	
HttpGet%%	 
]%% 
[&& 	
Route&&	 
(&& 
$str&& 
)&& 
]&& 
public'' 
async'' 
Task'' 
<'' 
WeatherForecast'' )
>'') *
GetTomorrowWeather''+ =
(''= >
)''> ?
{(( 	
var)) 
request)) 
=)) 
new)) #
GetTomorrowWeatherQuery)) 5
())5 6
)))6 7
;))7 8
var** 
response** 
=** 
await**  
	_mediator**! *
.*** +
Send**+ /
(**/ 0
request**0 7
)**7 8
;**8 9
return,, 
response,, 
;,, 
}-- 	
}.. 
}// �)
YC:\Users\adam\source\repos\SmartHome\src\API\Extensions\AiryCaqiCodesDataSeedExtension.cs
	namespace 	
API
 
. 

Extensions 
{ 
public 

static 
class *
AiryCaqiCodesDataSeedExtension 6
{ 
public		 
static		 
WebApplication		 $"
SeedAirlyCaqiCodesData		% ;
(		; <
this		< @
WebApplication		A O
host		P T
,		T U
IConfiguration		V d
configuration		e r
)		r s
{

 	
var 
connectionString  
=! "
configuration# 0
.0 1
GetConnectionString1 D
(D E
$strE [
)[ \
;\ ]
var 

connection 
= 
new  
SqlConnection! .
(. /
connectionString/ ?
)? @
;@ A
var  
weatherForecastCodes $
=% &

connection' 1
.1 2
QueryFirstOrDefault2 E
<E F
AirlyCaqiCodesF T
>T U
( 
$str /
)/ 0
;0 1
if 
(  
weatherForecastCodes $
==% '
null( ,
), -
{ 
List 
< 
AirlyCaqiCodes #
># $
airlyCaqiCodesList% 7
=8 9!
GetAirlyCaqiCodesList: O
(O P
)P Q
;Q R
string 
processQuery #
=$ %
$str& J
+K L
$str& U
;U V

connection 
. 
Execute "
(" #
processQuery# /
,/ 0
airlyCaqiCodesList1 C
)C D
;D E
return 
host 
; 
} 
else 
{ 
return 
host 
; 
} 
} 	
public   
static   
List   
<   
AirlyCaqiCodes   )
>  ) *!
GetAirlyCaqiCodesList  + @
(  @ A
)  A B
{!! 	
List"" 
<"" 
AirlyCaqiCodes"" 
>""  
airlyCaqiCodesList""! 3
=""4 5
new""6 9
List"": >
<""> ?
AirlyCaqiCodes""? M
>""M N
(""N O
)""O P
{## 
new$$ 
AirlyCaqiCodes$$ "
($$" #
)$$# $
{%% 
Name&& 
=&& 
$str&& #
,&&# $
Description&&% 0
=&&1 2
$str&&3 R
,&&R S
Advice'' 
='' 
$str'' I
,''I J
Icon''K O
=''P Q
$str''R Z
,''Z [
Color''\ a
=''b c
$str''d m
}(( 
,(( 
new)) 
AirlyCaqiCodes)) "
())" #
)))# $
{** 
Name++ 
=++ 
$str++ &
,++& '
Description++( 3
=++4 5
$str++6 M
,++M N
Advice++O U
=++V W
$str++X y
,++y z
Icon,, 
=,, 
$str,, &
,,,& '
Color,,( -
=,,. /
$str,,0 9
}-- 
,-- 
new.. 
AirlyCaqiCodes.. "
(.." #
)..# $
{// 
Name00 
=00 
$str00 $
,00$ %
Description00& 1
=002 3
$str004 S
,00S T
Advice11 
=11 
$str11 f
,11f g
Icon22 
=22 
$str22 $
,22$ %
Color22& +
=22, -
$str22. 7
}33 
,33 
new44 
AirlyCaqiCodes44 "
(44" #
)44# $
{55 
Name66 
=66 
$str66 %
,66% &
Description66' 2
=663 4
$str665 P
,66P Q
Advice66R X
=66Y Z
$str66[ q
,66q r
Icon77 
=77 
$str77 %
,77% &
Color77' ,
=77- .
$str77/ 8
}88 
,88 
new99 
AirlyCaqiCodes99 "
(99" #
)99# $
{:: 
Name;; 
=;; 
$str;;  
,;;  !
Description;;" -
=;;. /
$str;;0 H
,;;H I
Advice;;J P
=;;Q R
$str;;S c
,;;c d
Icon;;e i
=;;j k
$str;;l q
,;;q r
Color<< 
=<< 
$str<< %
}== 
,== 
new>> 
AirlyCaqiCodes>> "
(>>" #
)>># $
{?? 
Name@@ 
=@@ 
$str@@ !
,@@! "
Description@@# .
=@@/ 0
$str@@1 H
,@@H I
Advice@@J P
=@@Q R
$str@@S c
,@@c d
Icon@@e i
=@@j k
$str@@l r
,@@r s
ColorAA 
=AA 
$strAA %
}BB 
,BB 
}CC 
;CC 
returnEE 
airlyCaqiCodesListEE %
;EE% &
}FF 	
}GG 
}HH ��
XC:\Users\adam\source\repos\SmartHome\src\API\Extensions\WeatherCodesDataSeedExtension.cs
	namespace 	
API
 
. 

Extensions 
{ 
public		 

static		 
class		 )
WeatherCodesDataSeedExtension		 5
{ 
public 
static 
WebApplication $ 
SeedWeatherCodesData% 9
(9 :
this: >
WebApplication? M
hostN R
,R S
IConfigurationT b
configurationc p
)p q
{ 	
var 
connectionString  
=! "
configuration# 0
.0 1
GetConnectionString1 D
(D E
$strE [
)[ \
;\ ]
var 

connection 
= 
new  
SqlConnection! .
(. /
connectionString/ ?
)? @
;@ A
var  
weatherForecastCodes $
=% &

connection' 1
.1 2
QueryFirstOrDefault2 E
<E F 
WeatherForecastCodesF Z
>Z [
( 
$str 5
)5 6
;6 7
if 
(  
weatherForecastCodes $
==% '
null( ,
), -
{ 
List 
<  
WeatherForecastCodes )
>) *$
weatherForecastCodesList+ C
=D E'
GetWeatherForecastCodesListF a
(a b
)b c
;c d
string 
processQuery #
=$ %
$str& P
+Q R
$str& ]
;] ^

connection 
. 
Execute "
(" #
processQuery# /
,/ 0$
weatherForecastCodesList1 I
)I J
;J K
return 
host 
; 
} 
else 
{ 
return   
host   
;   
}!! 
}$$ 	
public&& 
static&& 
List&& 
<&&  
WeatherForecastCodes&& /
>&&/ 0'
GetWeatherForecastCodesList&&1 L
(&&L M
)&&M N
{'' 	
List(( 
<((  
WeatherForecastCodes(( %
>((% &$
weatherForecastCodesList((' ?
=((@ A
new((B E
List((F J
<((J K 
WeatherForecastCodes((K _
>((_ `
(((` a
)((a b
{)) 
new**  
WeatherForecastCodes** ,
(**, -
)**- .
{++ "
WeatherForecastCodesId,, .
=,,/ 0
$num,,1 4
,,,4 5
Main,,6 :
=,,; <
$str,,= P
,,,P Q
Description-- #
=--$ %
$str--& B
,--B C
Icon--D H
=--I J
$str	--K �
}.. 
,.. 
new//  
WeatherForecastCodes// ,
(//, -
)//- .
{00 "
WeatherForecastCodesId11 .
=11/ 0
$num111 4
,114 5
Main116 :
=11; <
$str11= P
,11P Q
Description22 #
=22$ %
$str22& D
,22D E
Icon22F J
=22K L
$str	22M �
}33 
,33 
new44  
WeatherForecastCodes44 ,
(44, -
)44- .
{55 "
WeatherForecastCodesId66 .
=66/ 0
$num661 4
,664 5
Main666 :
=66; <
$str66= P
,66P Q
Description77 #
=77$ %
$str77& K
,77K L
Icon77M Q
=77R S
$str	77T �
}88 
,88 
new99  
WeatherForecastCodes99 ,
(99, -
)99- .
{:: "
WeatherForecastCodesId;; .
=;;/ 0
$num;;1 4
,;;4 5
Main;;6 :
=;;; <
$str;;= P
,;;P Q
Description<< #
=<<$ %
$str<<& ?
,<<? @
Icon<<A E
=<<F G
$str	<<H �
}== 
,== 
new>>  
WeatherForecastCodes>> ,
(>>, -
)>>- .
{?? "
WeatherForecastCodesId@@ .
=@@/ 0
$num@@1 4
,@@4 5
Main@@6 :
=@@; <
$str@@= P
,@@P Q
DescriptionAA #
=AA$ %
$strAA& 9
,AA9 :
IconAA; ?
=AA@ A
$strAAB 
}BB 
,BB 
newCC  
WeatherForecastCodesCC ,
(CC, -
)CC- .
{DD "
WeatherForecastCodesIdEE .
=EE/ 0
$numEE1 4
,EE4 5
MainEE6 :
=EE; <
$strEE= P
,EEP Q
DescriptionFF #
=FF$ %
$strFF& ?
,FF? @
IconFFA E
=FFF G
$str	FFH �
}GG 
,GG 
newHH  
WeatherForecastCodesHH ,
(HH, -
)HH- .
{II "
WeatherForecastCodesIdJJ .
=JJ/ 0
$numJJ1 4
,JJ4 5
MainJJ6 :
=JJ; <
$strJJ= P
,JJP Q
DescriptionKK #
=KK$ %
$strKK& ?
,KK? @
IconKKA E
=KKF G
$str	KKH �
}LL 
,LL 
newMM  
WeatherForecastCodesMM ,
(MM, -
)MM- .
{NN "
WeatherForecastCodesIdOO .
=OO/ 0
$numOO1 4
,OO4 5
MainOO6 :
=OO; <
$strOO= P
,OOP Q
DescriptionPP #
=PP$ %
$strPP& B
,PPB C
IconPPD H
=PPI J
$str	PPK �
}QQ 
,QQ 
newRR  
WeatherForecastCodesRR ,
(RR, -
)RR- .
{SS "
WeatherForecastCodesIdTT .
=TT/ 0
$numTT1 4
,TT4 5
MainTT6 :
=TT; <
$strTT= P
,TTP Q
DescriptionUU #
=UU$ %
$strUU& B
,UUB C
IconUUD H
=UUI J
$str	UUK �
}VV 
,VV 
newWW  
WeatherForecastCodesWW ,
(WW, -
)WW- .
{XX "
WeatherForecastCodesIdYY .
=YY/ 0
$numYY1 4
,YY4 5
MainYY6 :
=YY; <
$strYY= P
,YYP Q
DescriptionZZ #
=ZZ$ %
$strZZ& B
,ZZB C
IconZZD H
=ZZI J
$str	ZZK �
}[[ 
,[[ 
new]]  
WeatherForecastCodes]] ,
(]], -
)]]- .
{^^ "
WeatherForecastCodesId__ .
=__/ 0
$num__1 4
,__4 5
Main__6 :
=__; <
$str__= F
,__F G
Description`` #
=``$ %
$str``& 5
,``5 6
Icon``7 ;
=``< =
$str``> {
}aa 
,aa 
newbb  
WeatherForecastCodesbb ,
(bb, -
)bb- .
{cc "
WeatherForecastCodesIddd .
=dd/ 0
$numdd1 4
,dd4 5
Maindd6 :
=dd; <
$strdd= F
,ddF G
Descriptionee #
=ee$ %
$stree& /
,ee/ 0
Iconee1 5
=ee6 7
$stree8 u
}ff 
,ff 
newgg  
WeatherForecastCodesgg ,
(gg, -
)gg- .
{hh "
WeatherForecastCodesIdii .
=ii/ 0
$numii1 4
,ii4 5
Mainii6 :
=ii; <
$strii= F
,iiF G
Descriptionjj #
=jj$ %
$strjj& :
,jj: ;
Iconjj< @
=jjA B
$str	jjC �
}kk 
,kk 
newll  
WeatherForecastCodesll ,
(ll, -
)ll- .
{mm "
WeatherForecastCodesIdnn .
=nn/ 0
$numnn1 4
,nn4 5
Mainnn6 :
=nn; <
$strnn= F
,nnF G
Descriptionoo #
=oo$ %
$stroo& :
,oo: ;
Iconoo< @
=ooA B
$str	ooC �
}pp 
,pp 
newqq  
WeatherForecastCodesqq ,
(qq, -
)qq- .
{rr "
WeatherForecastCodesIdss .
=ss/ 0
$numss1 4
,ss4 5
Mainss6 :
=ss; <
$strss= F
,ssF G
Descriptiontt #
=tt$ %
$strtt& /
,tt/ 0
Icontt1 5
=tt6 7
$strtt8 u
}uu 
,uu 
newvv  
WeatherForecastCodesvv ,
(vv, -
)vv- .
{ww "
WeatherForecastCodesIdxx .
=xx/ 0
$numxx1 4
,xx4 5
Mainxx6 :
=xx; <
$strxx= F
,xxF G
Descriptionyy #
=yy$ %
$stryy& :
,yy: ;
Iconyy< @
=yyA B
$str	yyC �
}zz 
,zz 
new{{  
WeatherForecastCodes{{ ,
({{, -
){{- .
{|| "
WeatherForecastCodesId}} .
=}}/ 0
$num}}1 4
,}}4 5
Main}}6 :
=}}; <
$str}}= F
,}}F G
Description~~ #
=~~$ %
$str~~& :
,~~: ;
Icon~~< @
=~~A B
$str	~~C �
} 
, 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= F
,
��F G
Description
�� #
=
��$ %
$str
��& :
,
��: ;
Icon
��< @
=
��A B
$str��C �
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= F
,
��F G
Description
�� #
=
��$ %
$str
��& :
,
��: ;
Icon
��< @
=
��A B
$str��C �
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= E
,
��E F
Description
�� #
=
��$ %
$str
��& 4
,
��4 5
Icon
��6 :
=
��; <
$str
��= z
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= E
,
��E F
Description
�� #
=
��$ %
$str
��& :
,
��: ;
Icon
��< @
=
��A B
$str��C �
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= E
,
��E F
Description
�� #
=
��$ %
$str
��& 9
,
��9 :
Icon
��; ?
=
��@ A
$str
��B 
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= E
,
��E F
Description
�� #
=
��$ %
$str
��& -
,
��- .
Icon
��/ 3
=
��4 5
$str
��6 s
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= E
,
��E F
Description
�� #
=
��$ %
$str
��& -
,
��- .
Icon
��/ 3
=
��4 5
$str
��6 s
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= E
,
��E F
Description
�� #
=
��$ %
$str
��& 7
,
��7 8
Icon
��9 =
=
��> ?
$str
��@ }
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= E
,
��E F
Description
�� #
=
��$ %
$str
��& -
,
��- .
Icon
��/ 3
=
��4 5
$str
��6 s
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= E
,
��E F
Description
�� #
=
��$ %
$str
��& .
,
��. /
Icon
��0 4
=
��5 6
$str
��7 t
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= E
,
��E F
Description
�� #
=
��$ %
$str
��& -
,
��- .
Icon
��/ 3
=
��4 5
$str
��6 s
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= E
,
��E F
Description
�� #
=
��$ %
$str
��& -
,
��- .
Icon
��/ 3
=
��4 5
$str
��6 s
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= D
,
��D E
Description
�� #
=
��$ %
$str
��& 3
,
��3 4
Icon
��5 9
=
��: ;
$str
��< y
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= D
,
��D E
Description
�� #
=
��$ %
$str
��& -
,
��- .
Icon
��/ 3
=
��4 5
$str
��6 s
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= D
,
��D E
Description
�� #
=
��$ %
$str
��& 8
,
��8 9
Icon
��: >
=
��? @
$str
��A ~
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= D
,
��D E
Description
�� #
=
��$ %
$str
��& 8
,
��8 9
Icon
��: >
=
��? @
$str
��A ~
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= D
,
��D E
Description
�� #
=
��$ %
$str
��& 8
,
��8 9
Icon
��: >
=
��? @
$str
��A ~
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= D
,
��D E
Description
�� #
=
��$ %
$str
��& 8
,
��8 9
Icon
��: >
=
��? @
$str
��A ~
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= D
,
��D E
Description
�� #
=
��$ %
$str
��& 8
,
��8 9
Icon
��: >
=
��? @
$str
��A ~
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= D
,
��D E
Description
�� #
=
��$ %
$str
��& 8
,
��8 9
Icon
��: >
=
��? @
$str
��A ~
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= D
,
��D E
Description
�� #
=
��$ %
$str
��& 8
,
��8 9
Icon
��: >
=
��? @
$str
��A ~
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= D
,
��D E
Description
�� #
=
��$ %
$str
��& -
,
��- .
Icon
��/ 3
=
��4 5
$str
��6 s
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= D
,
��D E
Description
�� #
=
��$ %
$str
��& 8
,
��8 9
Icon
��: >
=
��? @
$str
��A ~
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= K
,
��K L
Description
�� #
=
��$ %
$str
��& 4
,
��4 5
Icon
��6 :
=
��; <
$str
��= z
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= C
,
��C D
Description
�� #
=
��$ %
$str
��& ,
,
��, -
Icon
��. 2
=
��3 4
$str
��5 r
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= C
,
��C D
Description
�� #
=
��$ %
$str
��& ,
,
��, -
Icon
��. 2
=
��3 4
$str
��5 r
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= C
,
��C D
Description
�� #
=
��$ %
$str
��& ,
,
��, -
Icon
��. 2
=
��3 4
$str
��5 r
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= C
,
��C D
Description
�� #
=
��$ %
$str
��& ,
,
��, -
Icon
��. 2
=
��3 4
$str
��5 r
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= C
,
��C D
Description
�� #
=
��$ %
$str
��& ,
,
��, -
Icon
��. 2
=
��3 4
$str
��5 r
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= C
,
��C D
Description
�� #
=
��$ %
$str
��& ,
,
��, -
Icon
��. 2
=
��3 4
$str
��5 r
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= C
,
��C D
Description
�� #
=
��$ %
$str
��& ,
,
��, -
Icon
��. 2
=
��3 4
$str
��5 r
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= C
,
��C D
Description
�� #
=
��$ %
$str
��& ,
,
��, -
Icon
��. 2
=
��3 4
$str
��5 r
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= F
,
��F G
Description
�� #
=
��$ %
$str
��& /
,
��/ 0
Icon
��1 5
=
��6 7
$str
��8 u
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= K
,
��K L
Description
�� #
=
��$ %
$str
��& 4
,
��4 5
Icon
��6 :
=
��; <
$str
��= z
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= E
,
��E F
Description
�� #
=
��$ %
$str
��& ;
,
��; <
Icon
��= A
=
��B C
$str��D �
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= E
,
��E F
Description
�� #
=
��$ %
$str
��& @
,
��@ A
Icon
��B F
=
��G H
$str��I �
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= E
,
��E F
Description
�� #
=
��$ %
$str
��& @
,
��@ A
Icon
��B F
=
��G H
$str��I �
}
�� 
,
�� 
new
�� "
WeatherForecastCodes
�� ,
(
��, -
)
��- .
{
�� $
WeatherForecastCodesId
�� .
=
��/ 0
$num
��1 4
,
��4 5
Main
��6 :
=
��; <
$str
��= E
,
��E F
Description
�� #
=
��$ %
$str
��& >
,
��> ?
Icon
��@ D
=
��E F
$str��G �
}
�� 
}
�� 
;
�� 
return
�� &
weatherForecastCodesList
�� +
;
��+ ,
}
�� 	
}
�� 
}�� �
7C:\Users\adam\source\repos\SmartHome\src\API\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder		 
.		 
Services		 
.		 
AddCors		 
(		 
)		 
;		 
builder

 
.

 
Services

 
.

 
AddControllers

 
(

  
)

  !
;

! "
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddSwaggerGen 
( 
)  
;  !
builder 
. 
Services 
. 
AddInfrastructure "
(" #
builder# *
.* +
Configuration+ 8
)8 9
;9 :
builder 
. 
Services 
. 

AddMediatR 
( 
Assembly $
.$ % 
GetExecutingAssembly% 9
(9 :
): ;
); <
;< =
var 
app 
= 	
builder
 
. 
Build 
( 
) 
.  
SeedWeatherCodesData 
( 
builder !
.! "
Configuration" /
)/ 0
. "
SeedAirlyCaqiCodesData 
( 
builder #
.# $
Configuration$ 1
)1 2
;2 3
if 
( 
app 
. 
Environment 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app 
. 

UseSwagger 
( 
) 
; 
app 
. 
UseSwaggerUI 
( 
) 
; 
} 
app 
. 
UseCors 
( 
policy 
=> 
{ 
policy   

.  
 
AllowAnyHeader   
(   
)   
.   
AllowAnyMethod   *
(  * +
)  + ,
.  , -
AllowAnyOrigin  - ;
(  ; <
)  < =
;  = >
}!! 
)!! 
;!! 
app## 
.## 
UseAuthorization## 
(## 
)## 
;## 
app%% 
.%% 
MapControllers%% 
(%% 
)%% 
;%% 
app'' 
.'' 
Run'' 
('' 
)'' 	
;''	 
