ö
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
}		 –
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
} É
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
}		 ˘
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
} µ
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
} Ã
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
SunsetSunrise	s Ä
>
Ä Å
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
cancellationToken	w à
)
à â
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
} Ÿ
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
}		 ∫
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
} …
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
} €
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
}		 ã
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
}		 π
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
} ¯
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
} ®
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
} À
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
} ‘
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
}// ∏)
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
}HH ìŒ
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
$str	--K à
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
$str	22M ä
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
$str	77T ë
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
$str	<<H Ö
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
$str	FFH Ö
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
$str	KKH Ö
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
$str	PPK à
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
$str	UUK à
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
$str	ZZK à
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
$str	jjC Ä
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
$str	ooC Ä
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
$str	yyC Ä
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
$str	~~C Ä
} 
, 
new
ÄÄ "
WeatherForecastCodes
ÄÄ ,
(
ÄÄ, -
)
ÄÄ- .
{
ÅÅ $
WeatherForecastCodesId
ÇÇ .
=
ÇÇ/ 0
$num
ÇÇ1 4
,
ÇÇ4 5
Main
ÇÇ6 :
=
ÇÇ; <
$str
ÇÇ= F
,
ÇÇF G
Description
ÉÉ #
=
ÉÉ$ %
$str
ÉÉ& :
,
ÉÉ: ;
Icon
ÉÉ< @
=
ÉÉA B
$strÉÉC Ä
}
ÑÑ 
,
ÑÑ 
new
ÖÖ "
WeatherForecastCodes
ÖÖ ,
(
ÖÖ, -
)
ÖÖ- .
{
ÜÜ $
WeatherForecastCodesId
áá .
=
áá/ 0
$num
áá1 4
,
áá4 5
Main
áá6 :
=
áá; <
$str
áá= F
,
ááF G
Description
àà #
=
àà$ %
$str
àà& :
,
àà: ;
Icon
àà< @
=
ààA B
$strààC Ä
}
ââ 
,
ââ 
new
ää "
WeatherForecastCodes
ää ,
(
ää, -
)
ää- .
{
ãã $
WeatherForecastCodesId
åå .
=
åå/ 0
$num
åå1 4
,
åå4 5
Main
åå6 :
=
åå; <
$str
åå= E
,
ååE F
Description
çç #
=
çç$ %
$str
çç& 4
,
çç4 5
Icon
çç6 :
=
çç; <
$str
çç= z
}
éé 
,
éé 
new
èè "
WeatherForecastCodes
èè ,
(
èè, -
)
èè- .
{
êê $
WeatherForecastCodesId
ëë .
=
ëë/ 0
$num
ëë1 4
,
ëë4 5
Main
ëë6 :
=
ëë; <
$str
ëë= E
,
ëëE F
Description
íí #
=
íí$ %
$str
íí& :
,
íí: ;
Icon
íí< @
=
ííA B
$strííC Ä
}
ìì 
,
ìì 
new
îî "
WeatherForecastCodes
îî ,
(
îî, -
)
îî- .
{
ïï $
WeatherForecastCodesId
ññ .
=
ññ/ 0
$num
ññ1 4
,
ññ4 5
Main
ññ6 :
=
ññ; <
$str
ññ= E
,
ññE F
Description
óó #
=
óó$ %
$str
óó& 9
,
óó9 :
Icon
óó; ?
=
óó@ A
$str
óóB 
}
òò 
,
òò 
new
ôô "
WeatherForecastCodes
ôô ,
(
ôô, -
)
ôô- .
{
öö $
WeatherForecastCodesId
õõ .
=
õõ/ 0
$num
õõ1 4
,
õõ4 5
Main
õõ6 :
=
õõ; <
$str
õõ= E
,
õõE F
Description
úú #
=
úú$ %
$str
úú& -
,
úú- .
Icon
úú/ 3
=
úú4 5
$str
úú6 s
}
ùù 
,
ùù 
new
ûû "
WeatherForecastCodes
ûû ,
(
ûû, -
)
ûû- .
{
üü $
WeatherForecastCodesId
†† .
=
††/ 0
$num
††1 4
,
††4 5
Main
††6 :
=
††; <
$str
††= E
,
††E F
Description
°° #
=
°°$ %
$str
°°& -
,
°°- .
Icon
°°/ 3
=
°°4 5
$str
°°6 s
}
¢¢ 
,
¢¢ 
new
££ "
WeatherForecastCodes
££ ,
(
££, -
)
££- .
{
§§ $
WeatherForecastCodesId
•• .
=
••/ 0
$num
••1 4
,
••4 5
Main
••6 :
=
••; <
$str
••= E
,
••E F
Description
¶¶ #
=
¶¶$ %
$str
¶¶& 7
,
¶¶7 8
Icon
¶¶9 =
=
¶¶> ?
$str
¶¶@ }
}
ßß 
,
ßß 
new
®® "
WeatherForecastCodes
®® ,
(
®®, -
)
®®- .
{
©© $
WeatherForecastCodesId
™™ .
=
™™/ 0
$num
™™1 4
,
™™4 5
Main
™™6 :
=
™™; <
$str
™™= E
,
™™E F
Description
´´ #
=
´´$ %
$str
´´& -
,
´´- .
Icon
´´/ 3
=
´´4 5
$str
´´6 s
}
¨¨ 
,
¨¨ 
new
≠≠ "
WeatherForecastCodes
≠≠ ,
(
≠≠, -
)
≠≠- .
{
ÆÆ $
WeatherForecastCodesId
ØØ .
=
ØØ/ 0
$num
ØØ1 4
,
ØØ4 5
Main
ØØ6 :
=
ØØ; <
$str
ØØ= E
,
ØØE F
Description
∞∞ #
=
∞∞$ %
$str
∞∞& .
,
∞∞. /
Icon
∞∞0 4
=
∞∞5 6
$str
∞∞7 t
}
±± 
,
±± 
new
≤≤ "
WeatherForecastCodes
≤≤ ,
(
≤≤, -
)
≤≤- .
{
≥≥ $
WeatherForecastCodesId
¥¥ .
=
¥¥/ 0
$num
¥¥1 4
,
¥¥4 5
Main
¥¥6 :
=
¥¥; <
$str
¥¥= E
,
¥¥E F
Description
µµ #
=
µµ$ %
$str
µµ& -
,
µµ- .
Icon
µµ/ 3
=
µµ4 5
$str
µµ6 s
}
∂∂ 
,
∂∂ 
new
∑∑ "
WeatherForecastCodes
∑∑ ,
(
∑∑, -
)
∑∑- .
{
∏∏ $
WeatherForecastCodesId
ππ .
=
ππ/ 0
$num
ππ1 4
,
ππ4 5
Main
ππ6 :
=
ππ; <
$str
ππ= E
,
ππE F
Description
∫∫ #
=
∫∫$ %
$str
∫∫& -
,
∫∫- .
Icon
∫∫/ 3
=
∫∫4 5
$str
∫∫6 s
}
ªª 
,
ªª 
new
ºº "
WeatherForecastCodes
ºº ,
(
ºº, -
)
ºº- .
{
ΩΩ $
WeatherForecastCodesId
ææ .
=
ææ/ 0
$num
ææ1 4
,
ææ4 5
Main
ææ6 :
=
ææ; <
$str
ææ= D
,
ææD E
Description
øø #
=
øø$ %
$str
øø& 3
,
øø3 4
Icon
øø5 9
=
øø: ;
$str
øø< y
}
¿¿ 
,
¿¿ 
new
¡¡ "
WeatherForecastCodes
¡¡ ,
(
¡¡, -
)
¡¡- .
{
¬¬ $
WeatherForecastCodesId
√√ .
=
√√/ 0
$num
√√1 4
,
√√4 5
Main
√√6 :
=
√√; <
$str
√√= D
,
√√D E
Description
ƒƒ #
=
ƒƒ$ %
$str
ƒƒ& -
,
ƒƒ- .
Icon
ƒƒ/ 3
=
ƒƒ4 5
$str
ƒƒ6 s
}
≈≈ 
,
≈≈ 
new
∆∆ "
WeatherForecastCodes
∆∆ ,
(
∆∆, -
)
∆∆- .
{
«« $
WeatherForecastCodesId
»» .
=
»»/ 0
$num
»»1 4
,
»»4 5
Main
»»6 :
=
»»; <
$str
»»= D
,
»»D E
Description
…… #
=
……$ %
$str
……& 8
,
……8 9
Icon
……: >
=
……? @
$str
……A ~
}
   
,
   
new
ÀÀ "
WeatherForecastCodes
ÀÀ ,
(
ÀÀ, -
)
ÀÀ- .
{
ÃÃ $
WeatherForecastCodesId
ÕÕ .
=
ÕÕ/ 0
$num
ÕÕ1 4
,
ÕÕ4 5
Main
ÕÕ6 :
=
ÕÕ; <
$str
ÕÕ= D
,
ÕÕD E
Description
ŒŒ #
=
ŒŒ$ %
$str
ŒŒ& 8
,
ŒŒ8 9
Icon
ŒŒ: >
=
ŒŒ? @
$str
ŒŒA ~
}
œœ 
,
œœ 
new
–– "
WeatherForecastCodes
–– ,
(
––, -
)
––- .
{
—— $
WeatherForecastCodesId
““ .
=
““/ 0
$num
““1 4
,
““4 5
Main
““6 :
=
““; <
$str
““= D
,
““D E
Description
”” #
=
””$ %
$str
””& 8
,
””8 9
Icon
””: >
=
””? @
$str
””A ~
}
‘‘ 
,
‘‘ 
new
’’ "
WeatherForecastCodes
’’ ,
(
’’, -
)
’’- .
{
÷÷ $
WeatherForecastCodesId
◊◊ .
=
◊◊/ 0
$num
◊◊1 4
,
◊◊4 5
Main
◊◊6 :
=
◊◊; <
$str
◊◊= D
,
◊◊D E
Description
ÿÿ #
=
ÿÿ$ %
$str
ÿÿ& 8
,
ÿÿ8 9
Icon
ÿÿ: >
=
ÿÿ? @
$str
ÿÿA ~
}
ŸŸ 
,
ŸŸ 
new
⁄⁄ "
WeatherForecastCodes
⁄⁄ ,
(
⁄⁄, -
)
⁄⁄- .
{
€€ $
WeatherForecastCodesId
‹‹ .
=
‹‹/ 0
$num
‹‹1 4
,
‹‹4 5
Main
‹‹6 :
=
‹‹; <
$str
‹‹= D
,
‹‹D E
Description
›› #
=
››$ %
$str
››& 8
,
››8 9
Icon
››: >
=
››? @
$str
››A ~
}
ﬁﬁ 
,
ﬁﬁ 
new
ﬂﬂ "
WeatherForecastCodes
ﬂﬂ ,
(
ﬂﬂ, -
)
ﬂﬂ- .
{
‡‡ $
WeatherForecastCodesId
·· .
=
··/ 0
$num
··1 4
,
··4 5
Main
··6 :
=
··; <
$str
··= D
,
··D E
Description
‚‚ #
=
‚‚$ %
$str
‚‚& 8
,
‚‚8 9
Icon
‚‚: >
=
‚‚? @
$str
‚‚A ~
}
„„ 
,
„„ 
new
‰‰ "
WeatherForecastCodes
‰‰ ,
(
‰‰, -
)
‰‰- .
{
ÂÂ $
WeatherForecastCodesId
ÊÊ .
=
ÊÊ/ 0
$num
ÊÊ1 4
,
ÊÊ4 5
Main
ÊÊ6 :
=
ÊÊ; <
$str
ÊÊ= D
,
ÊÊD E
Description
ÁÁ #
=
ÁÁ$ %
$str
ÁÁ& 8
,
ÁÁ8 9
Icon
ÁÁ: >
=
ÁÁ? @
$str
ÁÁA ~
}
ËË 
,
ËË 
new
ÈÈ "
WeatherForecastCodes
ÈÈ ,
(
ÈÈ, -
)
ÈÈ- .
{
ÍÍ $
WeatherForecastCodesId
ÎÎ .
=
ÎÎ/ 0
$num
ÎÎ1 4
,
ÎÎ4 5
Main
ÎÎ6 :
=
ÎÎ; <
$str
ÎÎ= D
,
ÎÎD E
Description
ÏÏ #
=
ÏÏ$ %
$str
ÏÏ& -
,
ÏÏ- .
Icon
ÏÏ/ 3
=
ÏÏ4 5
$str
ÏÏ6 s
}
ÌÌ 
,
ÌÌ 
new
ÓÓ "
WeatherForecastCodes
ÓÓ ,
(
ÓÓ, -
)
ÓÓ- .
{
ÔÔ $
WeatherForecastCodesId
 .
=
/ 0
$num
1 4
,
4 5
Main
6 :
=
; <
$str
= D
,
D E
Description
ÒÒ #
=
ÒÒ$ %
$str
ÒÒ& 8
,
ÒÒ8 9
Icon
ÒÒ: >
=
ÒÒ? @
$str
ÒÒA ~
}
ÚÚ 
,
ÚÚ 
new
ÛÛ "
WeatherForecastCodes
ÛÛ ,
(
ÛÛ, -
)
ÛÛ- .
{
ÙÙ $
WeatherForecastCodesId
ıı .
=
ıı/ 0
$num
ıı1 4
,
ıı4 5
Main
ıı6 :
=
ıı; <
$str
ıı= K
,
ııK L
Description
ˆˆ #
=
ˆˆ$ %
$str
ˆˆ& 4
,
ˆˆ4 5
Icon
ˆˆ6 :
=
ˆˆ; <
$str
ˆˆ= z
}
˜˜ 
,
˜˜ 
new
¯¯ "
WeatherForecastCodes
¯¯ ,
(
¯¯, -
)
¯¯- .
{
˘˘ $
WeatherForecastCodesId
˙˙ .
=
˙˙/ 0
$num
˙˙1 4
,
˙˙4 5
Main
˙˙6 :
=
˙˙; <
$str
˙˙= C
,
˙˙C D
Description
˚˚ #
=
˚˚$ %
$str
˚˚& ,
,
˚˚, -
Icon
˚˚. 2
=
˚˚3 4
$str
˚˚5 r
}
¸¸ 
,
¸¸ 
new
˝˝ "
WeatherForecastCodes
˝˝ ,
(
˝˝, -
)
˝˝- .
{
˛˛ $
WeatherForecastCodesId
ˇˇ .
=
ˇˇ/ 0
$num
ˇˇ1 4
,
ˇˇ4 5
Main
ˇˇ6 :
=
ˇˇ; <
$str
ˇˇ= C
,
ˇˇC D
Description
ÄÄ #
=
ÄÄ$ %
$str
ÄÄ& ,
,
ÄÄ, -
Icon
ÄÄ. 2
=
ÄÄ3 4
$str
ÄÄ5 r
}
ÅÅ 
,
ÅÅ 
new
ÇÇ "
WeatherForecastCodes
ÇÇ ,
(
ÇÇ, -
)
ÇÇ- .
{
ÉÉ $
WeatherForecastCodesId
ÑÑ .
=
ÑÑ/ 0
$num
ÑÑ1 4
,
ÑÑ4 5
Main
ÑÑ6 :
=
ÑÑ; <
$str
ÑÑ= C
,
ÑÑC D
Description
ÖÖ #
=
ÖÖ$ %
$str
ÖÖ& ,
,
ÖÖ, -
Icon
ÖÖ. 2
=
ÖÖ3 4
$str
ÖÖ5 r
}
ÜÜ 
,
ÜÜ 
new
áá "
WeatherForecastCodes
áá ,
(
áá, -
)
áá- .
{
àà $
WeatherForecastCodesId
ââ .
=
ââ/ 0
$num
ââ1 4
,
ââ4 5
Main
ââ6 :
=
ââ; <
$str
ââ= C
,
ââC D
Description
ää #
=
ää$ %
$str
ää& ,
,
ää, -
Icon
ää. 2
=
ää3 4
$str
ää5 r
}
ãã 
,
ãã 
new
åå "
WeatherForecastCodes
åå ,
(
åå, -
)
åå- .
{
çç $
WeatherForecastCodesId
éé .
=
éé/ 0
$num
éé1 4
,
éé4 5
Main
éé6 :
=
éé; <
$str
éé= C
,
ééC D
Description
èè #
=
èè$ %
$str
èè& ,
,
èè, -
Icon
èè. 2
=
èè3 4
$str
èè5 r
}
êê 
,
êê 
new
ëë "
WeatherForecastCodes
ëë ,
(
ëë, -
)
ëë- .
{
íí $
WeatherForecastCodesId
ìì .
=
ìì/ 0
$num
ìì1 4
,
ìì4 5
Main
ìì6 :
=
ìì; <
$str
ìì= C
,
ììC D
Description
îî #
=
îî$ %
$str
îî& ,
,
îî, -
Icon
îî. 2
=
îî3 4
$str
îî5 r
}
ïï 
,
ïï 
new
ññ "
WeatherForecastCodes
ññ ,
(
ññ, -
)
ññ- .
{
óó $
WeatherForecastCodesId
òò .
=
òò/ 0
$num
òò1 4
,
òò4 5
Main
òò6 :
=
òò; <
$str
òò= C
,
òòC D
Description
ôô #
=
ôô$ %
$str
ôô& ,
,
ôô, -
Icon
ôô. 2
=
ôô3 4
$str
ôô5 r
}
öö 
,
öö 
new
õõ "
WeatherForecastCodes
õõ ,
(
õõ, -
)
õõ- .
{
úú $
WeatherForecastCodesId
ùù .
=
ùù/ 0
$num
ùù1 4
,
ùù4 5
Main
ùù6 :
=
ùù; <
$str
ùù= C
,
ùùC D
Description
ûû #
=
ûû$ %
$str
ûû& ,
,
ûû, -
Icon
ûû. 2
=
ûû3 4
$str
ûû5 r
}
üü 
,
üü 
new
†† "
WeatherForecastCodes
†† ,
(
††, -
)
††- .
{
°° $
WeatherForecastCodesId
¢¢ .
=
¢¢/ 0
$num
¢¢1 4
,
¢¢4 5
Main
¢¢6 :
=
¢¢; <
$str
¢¢= F
,
¢¢F G
Description
££ #
=
££$ %
$str
££& /
,
££/ 0
Icon
££1 5
=
££6 7
$str
££8 u
}
§§ 
,
§§ 
new
•• "
WeatherForecastCodes
•• ,
(
••, -
)
••- .
{
¶¶ $
WeatherForecastCodesId
ßß .
=
ßß/ 0
$num
ßß1 4
,
ßß4 5
Main
ßß6 :
=
ßß; <
$str
ßß= K
,
ßßK L
Description
®® #
=
®®$ %
$str
®®& 4
,
®®4 5
Icon
®®6 :
=
®®; <
$str
®®= z
}
©© 
,
©© 
new
™™ "
WeatherForecastCodes
™™ ,
(
™™, -
)
™™- .
{
´´ $
WeatherForecastCodesId
¨¨ .
=
¨¨/ 0
$num
¨¨1 4
,
¨¨4 5
Main
¨¨6 :
=
¨¨; <
$str
¨¨= E
,
¨¨E F
Description
≠≠ #
=
≠≠$ %
$str
≠≠& ;
,
≠≠; <
Icon
≠≠= A
=
≠≠B C
$str≠≠D Å
}
ÆÆ 
,
ÆÆ 
new
ØØ "
WeatherForecastCodes
ØØ ,
(
ØØ, -
)
ØØ- .
{
∞∞ $
WeatherForecastCodesId
±± .
=
±±/ 0
$num
±±1 4
,
±±4 5
Main
±±6 :
=
±±; <
$str
±±= E
,
±±E F
Description
≤≤ #
=
≤≤$ %
$str
≤≤& @
,
≤≤@ A
Icon
≤≤B F
=
≤≤G H
$str≤≤I Ü
}
≥≥ 
,
≥≥ 
new
¥¥ "
WeatherForecastCodes
¥¥ ,
(
¥¥, -
)
¥¥- .
{
µµ $
WeatherForecastCodesId
∂∂ .
=
∂∂/ 0
$num
∂∂1 4
,
∂∂4 5
Main
∂∂6 :
=
∂∂; <
$str
∂∂= E
,
∂∂E F
Description
∑∑ #
=
∑∑$ %
$str
∑∑& @
,
∑∑@ A
Icon
∑∑B F
=
∑∑G H
$str∑∑I Ü
}
∏∏ 
,
∏∏ 
new
ππ "
WeatherForecastCodes
ππ ,
(
ππ, -
)
ππ- .
{
∫∫ $
WeatherForecastCodesId
ªª .
=
ªª/ 0
$num
ªª1 4
,
ªª4 5
Main
ªª6 :
=
ªª; <
$str
ªª= E
,
ªªE F
Description
ºº #
=
ºº$ %
$str
ºº& >
,
ºº> ?
Icon
ºº@ D
=
ººE F
$strººG Ñ
}
ΩΩ 
}
ææ 
;
ææ 
return
¿¿ &
weatherForecastCodesList
¿¿ +
;
¿¿+ ,
}
¡¡ 	
}
¬¬ 
}√√ Å
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
