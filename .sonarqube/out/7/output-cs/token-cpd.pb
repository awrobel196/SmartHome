ß
îC:\Users\adam\source\repos\SmartHome\machines\WeatherForecastMachine\Application\WeatherForecast\AddWeatherToDatabase\AddWeatherToDatabaseCommand.cs
	namespace 	"
WeatherForecastMachine
  
.  !
Application! ,
., -
WeatherForecast- <
.< = 
AddWeatherToDatabase= Q
{		 
public

 

class

 '
AddWeatherToDatabaseCommand

 ,
:

- .
IRequest

/ 7
{ 
public 
List 
< 
Domain 
. 
Entities #
.# $
WeatherForecast$ 3
>3 4
WeatherForecasts5 E
{F G
getH K
;K L
setM P
;P Q
}R S
} 
} æ
õC:\Users\adam\source\repos\SmartHome\machines\WeatherForecastMachine\Application\WeatherForecast\AddWeatherToDatabase\AddWeatherToDatabaseCommandHandler.cs
	namespace 	"
WeatherForecastMachine
  
.  !
Application! ,
., -
WeatherForecast- <
.< = 
AddWeatherToDatabase= Q
{ 
public 

class .
"AddWeatherToDatabaseCommandHandler 3
:4 5
IRequestHandler6 E
<E F'
AddWeatherToDatabaseCommandF a
>a b
{ 
private 
readonly  
ApplicationDbContext -
_context. 6
;6 7
public .
"AddWeatherToDatabaseCommandHandler 1
(1 2 
ApplicationDbContext2 F
contextG N
)N O
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
Unit 
> 
Handle  &
(& ''
AddWeatherToDatabaseCommand' B
requestC J
,J K
CancellationTokenL ]
cancellationToken^ o
)o p
{ 	
await 
_context 
. 
Database #
.# $
ExecuteSqlRawAsync$ 6
(6 7
$str7 W
)W X
;X Y
_context 
. 
AddRange 
( 
request %
.% &
WeatherForecasts& 6
)6 7
;7 8
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
return 
await 
Task 
. 

FromResult (
(( )
Unit) -
.- .
Value. 3
)3 4
;4 5
} 	
} 
} æ
úC:\Users\adam\source\repos\SmartHome\machines\WeatherForecastMachine\Application\WeatherForecast\GetWeatherForecastFromAPI\GetWeatherForecastFromAPIQuery.cs
	namespace 	
WeatherForecast
 
. 
Application %
.% &
WeatherForecast& 5
.5 6%
GetWeatherForecastFromAPI6 O
{		 
public

 

class

 *
GetWeatherForecastFromAPIQuery

 /
:

0 1
IRequest

2 :
<

: ;
List

; ?
<

? @
Domain

@ F
.

F G
Entities

G O
.

O P
WeatherForecast

P _
>

_ `
>

` a
{ 
} 
} ¶6
£C:\Users\adam\source\repos\SmartHome\machines\WeatherForecastMachine\Application\WeatherForecast\GetWeatherForecastFromAPI\GetWeatherForecastFromAPIQueryHandler.cs
	namespace 	
WeatherForecast
 
. 
Application %
.% &
WeatherForecast& 5
.5 6%
GetWeatherForecastFromAPI6 O
{ 
public 

class 1
%GetWeatherForecastFromAPIQueryHandler 6
:7 8
IRequestHandler 
< *
GetWeatherForecastFromAPIQuery 6
,6 7
List8 <
<< =
Domain= C
.C D
EntitiesD L
.L M
WeatherForecastM \
>\ ]
>] ^
{ 
private 
IMapper 
_mapper 
;  
private 
DateTime 
datenow  
;  !
private 

HttpClient 
client !
;! "
public 
string 
OperWeatherApiKey '
;' (
public 
string "
OperWeatherApiLocation ,
;, -
public 1
%GetWeatherForecastFromAPIQueryHandler 4
(4 5
IMapper5 <
mapper= C
)C D
{ 	
_mapper 
= 
mapper 
; 
datenow 
= 
DateTime 
. 
Now "
;" #
client 
= 
new 

HttpClient #
(# $
)$ %
;% &
OperWeatherApiKey   
=   
$str    B
;  B C"
OperWeatherApiLocation!! "
=!!# $
$str!!% /
;!!/ 0
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
List$$ 
<$$ 
Domain$$ %
.$$% &
Entities$$& .
.$$. /
WeatherForecast$$/ >
>$$> ?
>$$? @
Handle$$A G
($$G H*
GetWeatherForecastFromAPIQuery$$H f
request$$g n
,$$n o
CancellationToken	$$p Å
cancellationToken
$$Ç ì
)
$$ì î
{%% 	
HttpRequestMessage&& 

apiRequest&& )
=&&* +
new&&, /
HttpRequestMessage&&0 B
(&&B C

HttpMethod&&C M
.&&M N
Get&&N Q
,&&Q R
$str'' E
+''E F"
OperWeatherApiLocation''F \
+''\ ]
$str''^ o
+''p q
OperWeatherApiKey	''r É
+
''Ñ Ö
$str
''Ü à
)
''à â
;
''â ä

apiRequest)) 
.)) 
Headers)) 
.)) 
Add)) "
())" #
$str))# +
,))+ ,
$str))- 8
)))8 9
;))9 :

apiRequest** 
.** 
Headers** 
.** 
Add** "
(**" #
$str**# 4
,**4 5
$str**6 I
)**I J
;**J K

apiRequest++ 
.++ 
Headers++ 
.++ 
Add++ "
(++" #
$str++# 4
,++4 5
$str++6 :
)++: ;
;++; <
var-- 
response-- 
=-- 
client-- !
.--! "
Send--" &
(--& '

apiRequest--' 1
)--1 2
;--2 3
string.. 
responseBody.. 
=..  !
await.." '
response..( 0
...0 1
Content..1 8
...8 9
ReadAsStringAsync..9 J
(..J K
)..K L
;..L M
var11 
deserializedResult11 "
=11# $
JsonSerializer11% 3
.113 4
Deserialize114 ?
<11? @&
WeatherForecastModelHelper11@ Z
>11Z [
(11[ \
responseBody11\ h
)11h i
;11i j
var44 
weatherForecastList44 #
=44$ %
deserializedResult44& 8
.448 9
list449 =
.55 
Where55 
(55 
x55 
=>55 
x66 
.66  
dt_txt66  &
.66& '
Contains66' /
(66/ 0
datenow660 7
.667 8
AddDays668 ?
(66? @
$num66@ A
)66A B
.66B C
ToString66C K
(66K L
$str66L a
)66a b
)66b c
||77 
x77 
.77  
dt_txt77  &
.77& '
Contains77' /
(77/ 0
datenow770 7
.777 8
AddDays778 ?
(77? @
$num77@ A
)77A B
.77B C
ToString77C K
(77K L
$str77L a
)77a b
)77b c
||88 
x88 
.88  
dt_txt88  &
.88& '
Contains88' /
(88/ 0
datenow880 7
.887 8
AddDays888 ?
(88? @
$num88@ A
)88A B
.88B C
ToString88C K
(88K L
$str88L a
)88a b
)88b c
||99 
x99 
.99  
dt_txt99  &
.99& '
Contains99' /
(99/ 0
datenow990 7
.997 8
AddDays998 ?
(99? @
$num99@ A
)99A B
.99B C
ToString99C K
(99K L
$str99L a
)99a b
)99b c
||:: 
x:: 
.::  
dt_txt::  &
.::& '
Contains::' /
(::/ 0
datenow::0 7
.::7 8
AddDays::8 ?
(::? @
$num::@ A
)::A B
.::B C
ToString::C K
(::K L
$str::L a
)::a b
)::b c
)::c d
.;; 
ToList;; 
(;; 
);; 
;;; 
weatherForecastList>> 
.>>  
Add>>  #
(>># $
deserializedResult>>$ 6
.>>6 7
list>>7 ;
.>>; <
FirstOrDefault>>< J
(>>J K
)>>K L
)>>L M
;>>M N
weatherForecastListAA 
=AA  !
weatherForecastListAA" 5
.AA5 6
OrderByAA6 =
(AA= >
xAA> ?
=>AA@ B
xAAC D
.AAD E
dt_txtAAE K
)AAK L
.AAL M
ToListAAM S
(AAS T
)AAT U
;AAU V
varDD 

outputListDD 
=DD 
_mapperDD $
.DD$ %
MapDD% (
<DD( )
ListDD) -
<DD- .
DomainDD. 4
.DD4 5
EntitiesDD5 =
.DD= >
WeatherForecastDD> M
>DDM N
>DDN O
(DDO P
weatherForecastListDDP c
)DDc d
;DDd e
returnGG 
awaitGG 
TaskGG 
.GG 

FromResultGG (
(GG( )

outputListGG) 3
)GG3 4
;GG4 5
}HH 	
}II 
}JJ Ù
pC:\Users\adam\source\repos\SmartHome\machines\WeatherForecastMachine\Extension\KelvinToCelsiusDoubleExtension.cs
	namespace 	"
WeatherForecastMachine
  
.  !
	Extension! *
{ 
public		 

static		 
class		 *
KelvinToCelsiusDoubleExtension		 6
{

 
public 
static 
double 
	ToCelsius &
(& '
this' +
double, 2
kelvinValue3 >
)> ?
{ 	
double 
celsiusValue 
=  !
kelvinValue" -
-. /
$num/ 5
;5 6
return 
Math 
. 
Round 
( 
celsiusValue *
,* +
$num+ ,
), -
;- .
} 	
} 
} Ó
PC:\Users\adam\source\repos\SmartHome\machines\WeatherForecastMachine\Function.cs
	namespace 	"
WeatherForecastMachine
  
{ 
public 

class 
Function 
{ 
private 
readonly 
	IMediator "
	_mediator# ,
;, -
public 
Function 
( 
	IMediator !
mediator" *
)* +
{ 	
	_mediator 
= 
mediator  
;  !
} 	
[ 	
FunctionName	 
( 
$str  
)  !
]! "
public 
async 
Task 
Run 
( 
[ 
TimerTrigger +
(+ ,
$str, ;
); <
]< =
	TimerInfo= F
myTimerG N
,N O
ILoggerP W
logX [
,[ \
ExecutionContext] m
contextn u
)u v
{ 	
var 

apiRequest 
= 
new  *
GetWeatherForecastFromAPIQuery! ?
(? @
)@ A
;A B
var 
	apiResult 
= 
await !
	_mediator" +
.+ ,
Send, 0
(0 1

apiRequest1 ;
); <
;< =
var!! 
	dbRequest!! 
=!! 
new!! '
AddWeatherToDatabaseCommand!!  ;
(!!; <
)!!< =
{"" 
WeatherForecasts##  
=##! "
	apiResult### ,
}$$ 
;$$ 
var%% 
	dbCommand%% 
=%% 
await%% !
	_mediator%%" +
.%%+ ,
Send%%, 0
(%%0 1
	dbRequest%%1 :
)%%: ;
;%%; <
}(( 	
})) 
}** …
gC:\Users\adam\source\repos\SmartHome\machines\WeatherForecastMachine\Maps\ForecastAPIToEntityProfile.cs
	namespace

 	"
WeatherForecastMachine


  
.

  !
Maps

! %
{ 
public 

class &
ForecastAPIToEntityProfile +
:, -
Profile. 5
{ 
public &
ForecastAPIToEntityProfile )
() *
)* +
{ 	
	CreateMap 
< 
ForecastModelHelper )
,) *
Domain+ 1
.1 2
Entities2 :
.: ;
WeatherForecast; J
>J K
(K L
)L M
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
FeelsTemperature( 8
,8 9
act: =
=>> @
actA D
.D E
MapFromE L
(L M
srcM P
=>Q S
srcT W
.W X
mainX \
.\ ]

feels_like] g
.g h
	ToCelsiush q
(q r
)r s
)s t
)t u
. 
	ForMember 
( 
dest 
=> !
dest! %
.% &
Humidity& .
,. /
act0 3
=>3 5
act5 8
.8 9
MapFrom9 @
(@ A
srcA D
=>D F
srcF I
.I J
mainJ N
.N O
humidityO W
)W X
)X Y
. 
	ForMember 
( 
dest 
=> !
dest! %
.% &
Pressure& .
,. /
act/ 2
=>2 4
act4 7
.7 8
MapFrom8 ?
(? @
src@ C
=>C E
srcE H
.H I
mainI M
.M N
pressureN V
)V W
)W X
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
Temperature( 3
,3 4
act5 8
=>9 ;
act< ?
.? @
MapFrom@ G
(G H
srcH K
=>L N
srcO R
.R S
mainS W
.W X
tempX \
.\ ]
	ToCelsius] f
(f g
)g h
)h i
)i j
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
TestDateTime( 4
,4 5
act6 9
=>: <
act= @
.@ A
MapFromA H
(H I
srcI L
=>M O
srcP S
.S T
dt_txtT Z
)Z [
)[ \
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
	WindSpeed( 1
,1 2
act3 6
=>7 9
act: =
.= >
MapFrom> E
(E F
srcF I
=>J L
srcM P
.P Q
windQ U
.U V
speedV [
)[ \
)\ ]
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' ("
WeatherForecastCodesId( >
,> ?
act 
=> 
act 
. 
MapFrom &
(& '
src' *
=>+ -
src. 1
.1 2
weather2 9
.9 :
FirstOrDefault: H
(H I
)I J
.J K
idK M
)M N
)N O
;O P
} 	
} 
} ò
èC:\Users\adam\source\repos\SmartHome\machines\WeatherForecastMachine\ModelHelpers\WeatherForecastAPIModelHelper\DetailWeatherInfoModelHelper.cs
	namespace 	"
WeatherForecastMachine
  
.  !
ModelHelpers! -
.- .)
WeatherForecastAPIModelHelper. K
{ 
public 

class (
DetailWeatherInfoModelHelper -
{ 
public 
double 
temp 
{ 
get  
;  !
set" %
;% &
}' (
public 
double 

feels_like  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
double 
temp_min 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
double 
temp_max 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
double		 
pressure		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
double

 
	sea_level

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
double 

grnd_level  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
double 
humidity 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ﬁ
äC:\Users\adam\source\repos\SmartHome\machines\WeatherForecastMachine\ModelHelpers\WeatherForecastAPIModelHelper\ForecastCityModelHelper.cs
	namespace 	"
WeatherForecastMachine
  
.  !
ModelHelpers! -
.- .)
WeatherForecastAPIModelHelper. K
{ 
public		 

class		 #
ForecastCityModelHelper		 (
{

 
public 
long 
sunrise 
{ 
get !
;! "
set# &
;& '
}( )
public 
long 
sunset 
{ 
get  
;  !
set" %
;% &
}' (
} 
} Ö

ÜC:\Users\adam\source\repos\SmartHome\machines\WeatherForecastMachine\ModelHelpers\WeatherForecastAPIModelHelper\ForecastModelHelper.cs
	namespace 	"
WeatherForecastMachine
  
.  !
ModelHelpers! -
.- .)
WeatherForecastAPIModelHelper. K
{ 
public		 

class		 
ForecastModelHelper		 $
{

 
public 
long 
dt 
{ 
get 
; 
set !
;! "
}# $
public (
DetailWeatherInfoModelHelper +
main, 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
WindInfoModelHelper "
wind# '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
List 
< &
MainWeatherInfoModelHelper .
>. /
weather0 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
string 
dt_txt 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ï
çC:\Users\adam\source\repos\SmartHome\machines\WeatherForecastMachine\ModelHelpers\WeatherForecastAPIModelHelper\MainWeatherInfoModelHelper.cs
	namespace 	"
WeatherForecastMachine
  
.  !
ModelHelpers! -
.- .)
WeatherForecastAPIModelHelper. K
{ 
public 

class &
MainWeatherInfoModelHelper +
{ 
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
main 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
icon 
{ 
get  
;  !
set" %
;% &
}' (
}		 
}

 §

çC:\Users\adam\source\repos\SmartHome\machines\WeatherForecastMachine\ModelHelpers\WeatherForecastAPIModelHelper\WeatherForecastModelHelper.cs
	namespace 	"
WeatherForecastMachine
  
.  !
ModelHelpers! -
.- .)
WeatherForecastAPIModelHelper. K
{ 
public		 

class		 &
WeatherForecastModelHelper		 +
{

 
public 
string 
cod 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
message 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
cnt 
{ 
get 
; 
set !
;! "
}# $
public 
List 
< 
ForecastModelHelper '
>' (
list) -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
List 
< #
ForecastCityModelHelper +
>+ ,
city- 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
} 
} Ì
ÜC:\Users\adam\source\repos\SmartHome\machines\WeatherForecastMachine\ModelHelpers\WeatherForecastAPIModelHelper\WindInfoModelHelper.cs
	namespace 	"
WeatherForecastMachine
  
.  !
ModelHelpers! -
.- .)
WeatherForecastAPIModelHelper. K
{ 
public 

class 
WindInfoModelHelper $
{ 
public 
double 
speed 
{ 
get !
;! "
set# &
;& '
}( )
public 
double 
deg 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
gust 
{ 
get  
;  !
set" %
;% &
}' (
} 
}		 î
OC:\Users\adam\source\repos\SmartHome\machines\WeatherForecastMachine\Startup.cs
[ 
assembly 	
:	 

FunctionsStartup 
( 
typeof "
(" #"
WeatherForecastMachine# 9
.9 :
Startup: A
)A B
)B C
]C D
	namespace 	"
WeatherForecastMachine
  
{ 
public 

class 
Startup 
: 
FunctionsStartup +
{ 
public 
override 
void 
	Configure &
(& '!
IFunctionsHostBuilder' <
builder= D
)D E
{ 	
builder 
. 
Services 
. 

AddMediatR '
(' (
typeof( .
(. /
Function/ 7
)7 8
)8 9
;9 :
builder 
. 
Services 
. 
AddAutoMapper *
(* +
typeof+ 1
(1 2&
ForecastAPIToEntityProfile2 L
)L M
)M N
;N O
builder 
. 
Services 
. 
AddDbContext )
<) * 
ApplicationDbContext* >
>> ?
(? @
options@ G
=>H J
optionsK R
.R S
UseSqlServerS _
(_ `
$str	` ∆
)
∆ «
)
« »
;
» …
} 	
} 
} 