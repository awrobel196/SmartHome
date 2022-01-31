º
œC:\Users\adam\source\repos\SmartHome\machines\SunriseSunsetMachine\Application\SunriseSunset\AddSunriseSunsetToDatabase\AddSunriseSunsetToDatabaseCommand.cs
	namespace		 	 
SunriseSunsetMachine		
 
.		 
Application		 *
.		* +
SunriseSunset		+ 8
.		8 9&
AddSunriseSunsetToDatabase		9 S
{

 
public 

class -
!AddSunriseSunsetToDatabaseCommand 2
:3 4
IRequest5 =
{ 
public 
SunsetSunrise 
SunsetSunrise *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
} Ø
£C:\Users\adam\source\repos\SmartHome\machines\SunriseSunsetMachine\Application\SunriseSunset\AddSunriseSunsetToDatabase\AddSunriseSunsetToDatabaseCommandHandler.cs
	namespace 	 
SunriseSunsetMachine
 
. 
Application *
.* +
SunriseSunset+ 8
.8 9&
AddSunriseSunsetToDatabase9 S
{ 
public 

class 4
(AddSunriseSunsetToDatabaseCommandHandler 9
:: ;
IRequestHandler< K
<K L-
!AddSunriseSunsetToDatabaseCommandL m
>m n
{ 
private 
readonly  
ApplicationDbContext -
_context. 6
;6 7
public 4
(AddSunriseSunsetToDatabaseCommandHandler 7
(7 8 
ApplicationDbContext8 L
contextM T
)T U
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
Unit 
> 
Handle  &
(& '-
!AddSunriseSunsetToDatabaseCommand' H
requestI P
,P Q
CancellationTokenR c
cancellationTokend u
)u v
{ 	
await 
_context 
. 
Database #
.# $
ExecuteSqlRawAsync$ 6
(6 7
$str7 U
)U V
;V W
_context 
. 
Add 
( 
request  
.  !
SunsetSunrise! .
). /
;/ 0
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
return 
await 
Task 
. 

FromResult (
(( )
Unit) -
.- .
Value. 3
)3 4
;4 5
} 	
} 
}   »
”C:\Users\adam\source\repos\SmartHome\machines\SunriseSunsetMachine\Application\SunriseSunset\GetSunriseSunsetFromAPI\GetSunriseSunsetFromAPIQuery.cs
	namespace		 	 
SunriseSunsetMachine		
 
.		 
Application		 *
.		* +
SunriseSunset		+ 8
.		8 9#
GetSunriseSunsetFromAPI		9 P
{

 
public 

class (
GetSunriseSunsetFromAPIQuery -
:. /
IRequest0 8
<8 9
SunsetSunrise9 F
>F G
{ 
} 
} Ú
›C:\Users\adam\source\repos\SmartHome\machines\SunriseSunsetMachine\Application\SunriseSunset\GetSunriseSunsetFromAPI\GetSunriseSunsetFromAPIQueryHandler.cs
	namespace 	 
SunriseSunsetMachine
 
. 
Application *
.* +
SunriseSunset+ 8
.8 9#
GetSunriseSunsetFromAPI9 P
{ 
public 

class /
#GetSunriseSunsetFromAPIQueryHandler 4
:5 6
IRequestHandler7 F
<F G(
GetSunriseSunsetFromAPIQueryG c
,c d
SunsetSunrisee r
>r s
{ 
private 
readonly 
string 
	_latitude  )
;) *
private 
readonly 
string 

_longitude  *
;* +
private 
string 
responseBody #
;# $
private 
SunsetSunrise 
_sunsetSunrise ,
;, -
public /
#GetSunriseSunsetFromAPIQueryHandler 2
(2 3
)3 4
{ 	
	_latitude 
= 
$str +
;+ ,

_longitude 
= 
$str %
;% &
_sunsetSunrise 
= 
new  
SunsetSunrise! .
(. /
)/ 0
;0 1
} 	
public 
async 
Task 
< 
SunsetSunrise '
>' (
Handle) /
(/ 0(
GetSunriseSunsetFromAPIQuery0 L
requestM T
,T U
CancellationTokenV g
cancellationTokenh y
)y z
{ 	
HttpRequestMessage 

apiRequest )
=* +
new, /
HttpRequestMessage0 B
(B C

HttpMethodC M
.M N
GetN Q
,Q R
$str e
)e f
;f g
using## 
(## 
var## 
client## 
=## 
new## "

HttpClient### -
(##- .
)##. /
)##/ 0
{$$ 
var%% 
response%% 
=%% 
client%% %
.%%% &
Send%%& *
(%%* +

apiRequest%%+ 5
)%%5 6
;%%6 7
responseBody&& 
=&& 
await&& $
response&&% -
.&&- .
Content&&. 5
.&&5 6
ReadAsStringAsync&&6 G
(&&G H
)&&H I
;&&I J
}'' 
var)) 
deserializedResult)) "
=))# $
JsonSerializer))% 3
.))3 4
Deserialize))4 ?
<))? @$
SunriseSunsetModelHelper))@ X
>))X Y
())Y Z
responseBody))Z f
)))f g
;))g h
_sunsetSunrise** 
.** 
Sunset** !
=**" #
DateTime**# +
.**+ ,
Parse**, 1
(**1 2
deserializedResult**2 D
.**D E
results**E L
.**L M
sunset**M S
)**S T
.**T U
AddHours**U ]
(**] ^
$num**^ _
)**_ `
;**` a
_sunsetSunrise++ 
.++ 
Sunrise++ "
=++# $
DateTime++$ ,
.++, -
Parse++- 2
(++2 3
deserializedResult++3 E
.++E F
results++F M
.++M N
sunrise++N U
)++U V
.++V W
AddHours++W _
(++_ `
$num++` a
)++a b
;++b c
return// 
_sunsetSunrise// !
;//! "
}00 	
}11 
}22 ­
NC:\Users\adam\source\repos\SmartHome\machines\SunriseSunsetMachine\Function.cs
	namespace

 	 
SunriseSunsetMachine


 
{ 
public 

class 
Function 
{ 
private 
readonly 
	IMediator "
	_mediator# ,
;, -
public 
Function 
( 
	IMediator !
mediator" *
)* +
{ 	
	_mediator 
= 
mediator  
;  !
} 	
[ 	
FunctionName	 
( 
$str  
)  !
]! "
public 
async 
Task 
Run 
( 
[ 
TimerTrigger +
(+ ,
$str, <
)< =
]= >
	TimerInfo> G
myTimerH O
,O P
ILoggerQ X
logY \
)\ ]
{ 	
var 

apiRequest 
= 
new  (
GetSunriseSunsetFromAPIQuery! =
(= >
)> ?
;? @
var 
apiResponse 
= 
	_mediator (
.( )
Send) -
(- .

apiRequest. 8
)8 9
;9 :
var 
	dbRequest 
= 
new -
!AddSunriseSunsetToDatabaseCommand  A
(A B
)B C
{ 
SunsetSunrise 
= 
await  %
apiResponse& 1
} 
; 
var 
	dbCommand 
= 
await !
	_mediator" +
.+ ,
Send, 0
(0 1
	dbRequest1 :
): ;
;; <
}   	
}!! 
}"" …
kC:\Users\adam\source\repos\SmartHome\machines\SunriseSunsetMachine\ModelHelpers\SunriseSunsetModelHelper.cs
	namespace 	 
SunriseSunsetMachine
 
. 
ModelHelpers +
{ 
public		 

class		 $
SunriseSunsetModelHelper		 )
{

 
public *
SunriseSunsetModelHelperResult -
results. 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
} 
} “
qC:\Users\adam\source\repos\SmartHome\machines\SunriseSunsetMachine\ModelHelpers\SunriseSunsetModelHelperResult.cs
	namespace 	 
SunriseSunsetMachine
 
. 
ModelHelpers +
{ 
public 

class *
SunriseSunsetModelHelperResult /
{ 
public 
string 
sunrise 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
sunset 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} £

MC:\Users\adam\source\repos\SmartHome\machines\SunriseSunsetMachine\Startup.cs
[ 
assembly 	
:	 

FunctionsStartup 
( 
typeof "
(" # 
SunriseSunsetMachine# 7
.7 8
Startup8 ?
)? @
)@ A
]A B
	namespace 	 
SunriseSunsetMachine
 
{		 
public

 

class

 
Startup

 
:

 
FunctionsStartup

 +
{ 
public 
override 
void 
	Configure &
(& '!
IFunctionsHostBuilder' <
builder= D
)D E
{ 	
builder 
. 
Services 
. 

AddMediatR '
(' (
typeof( .
(. /
Function/ 7
)7 8
)8 9
;9 :
builder 
. 
Services 
. 
AddDbContext )
<) * 
ApplicationDbContext* >
>> ?
(? @
options@ G
=>H J
optionsK R
.R S
UseSqlServerS _
(_ `
$str	` Æ
)
Æ Ç
)
Ç È
;
È É
} 	
} 
} 