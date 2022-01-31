ç
tC:\Users\adam\source\repos\SmartHome\machines\AirMachine\Application\Air\AddAirToDatabase\AddAirToDatabaseCommand.cs
	namespace		 	

AirMachine		
 
.		 
Application		  
.		  !
Airly		! &
.		& '
AddAirlyToDatabase		' 9
{

 
public 

class #
AddAirToDatabaseCommand (
:) *
IRequest+ 3
{ 
public 

AirQuality 

airQuality $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ©
{C:\Users\adam\source\repos\SmartHome\machines\AirMachine\Application\Air\AddAirToDatabase\AddAirToDatabaseCommandHandler.cs
	namespace 	

AirMachine
 
. 
Application  
.  !
Airly! &
.& '
AddAirlyToDatabase' 9
{ 
public 

class *
AddAirToDatabaseCommandHandler /
:0 1
IRequestHandler2 A
<A B#
AddAirToDatabaseCommandB Y
>Y Z
{ 
private 
readonly  
ApplicationDbContext -
_context. 6
;6 7
public *
AddAirToDatabaseCommandHandler -
(- . 
ApplicationDbContext. B
contextC J
)J K
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
Unit 
> 
Handle  &
(& '#
AddAirToDatabaseCommand' >
request? F
,F G
CancellationTokenH Y
cancellationTokenZ k
)k l
{ 	
await 
_context 
. 
Database #
.# $
ExecuteSqlRawAsync$ 6
(6 7
$str7 R
)R S
;S T
await 
_context 
. 

AirQuality %
.% &
AddAsync& .
(. /
request/ 6
.6 7

airQuality7 A
)A B
;B C
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
return 
await 
Task 
. 

FromResult (
(( )
Unit) -
.- .
Value. 3
)3 4
;4 5
} 	
} 
} ‰
|C:\Users\adam\source\repos\SmartHome\machines\AirMachine\Application\Air\GetValuesFromAirlyAPI\GetValuesFromAirlyAPIQuery.cs
	namespace		 	

AirMachine		
 
.		 
Application		  
.		  !
Airly		! &
.		& '!
GetValuesFromAirlyAPI		' <
{

 
public 

class &
GetValuesFromAirlyAPIQuery +
:, -
IRequest. 6
<6 7

AirQuality7 A
>A B
{ 
} 
} ÿ%
ƒC:\Users\adam\source\repos\SmartHome\machines\AirMachine\Application\Air\GetValuesFromAirlyAPI\GetValuesFromAirlyAPIQueryHandler.cs
	namespace 	

AirMachine
 
. 
Application  
.  !
Airly! &
.& '!
GetValuesFromAirlyAPI' <
{ 
public 

class -
!GetValuesFromAirlyAPIQueryHandler 2
:3 4
IRequestHandler5 D
<D E&
GetValuesFromAirlyAPIQueryE _
,_ `

AirQualitya k
>k l
{ 
private 
IMapper 
_mapper 
;  
private 
DateTime 
datenow  
;  !
private 

HttpClient 
client !
;! "
private  
ApplicationDbContext $
_context% -
;- .
public 
string 
AirlyApiKey !
;! "
public 
string 
AirlyApiLat !
;! "
public 
string 
AirlyApiLng !
;! "
public -
!GetValuesFromAirlyAPIQueryHandler 0
(0 1
IMapper1 8
mapper9 ?
,? @ 
ApplicationDbContextA U
contextV ]
)] ^
{ 	
_mapper 
= 
mapper 
; 
client 
= 
new 

HttpClient #
(# $
)$ %
;% &
datenow 
= 
DateTime 
. 
Now "
;" #
_context   
=   
context   
;   
AirlyApiKey"" 
="" 
$str"" <
;""< =
AirlyApiLat## 
=## 
$str## %
;##% &
AirlyApiLng$$ 
=$$ 
$str$$ %
;$$% &
})) 	
public** 
async** 
Task** 
<** 

AirQuality** $
>**$ %
Handle**& ,
(**, -&
GetValuesFromAirlyAPIQuery**- G
request**H O
,**O P
CancellationToken**Q b
cancellationToken**c t
)**t u
{++ 	
HttpRequestMessage,, 

apiRequest,, )
=,,* +
new,,, /
HttpRequestMessage,,0 B
(,,B C

HttpMethod,,C M
.,,M N
Get,,N Q
,,,Q R
$str-- F
+--F G
AirlyApiLat--G R
+--R S
$str--T [
+--[ \
AirlyApiLng--\ g
+--g h
$str	--h ‡
)
--‡ ˆ
;
--ˆ ‰

apiRequest// 
.// 
Headers// 
.// 
Add// "
(//" #
$str//# 4
,//4 5
$str//6 :
)//: ;
;//; <

apiRequest00 
.00 
Headers00 
.00 
Add00 "
(00" #
$str00# +
,00+ ,
AirlyApiKey00- 8
)008 9
;009 :
var22 
response22 
=22 
client22 !
.22! "
Send22" &
(22& '

apiRequest22' 1
)221 2
;222 3
string33 
responseBody33 
=33  !
await33" '
response33( 0
.330 1
Content331 8
.338 9
ReadAsStringAsync339 J
(33J K
)33K L
;33L M
var66 
deserializedResult66 "
=66# $
JsonSerializer66% 3
.663 4
Deserialize664 ?
<66? @
AirModelHelper66@ N
>66N O
(66O P
responseBody66P \
)66\ ]
;66] ^
var88 

outputList88 
=88 
_mapper88 $
.88$ %
Map88% (
<88( )

AirQuality88) 3
>883 4
(884 5
deserializedResult885 G
)88G H
;88H I
var99 
airlyCaqiCode99 
=99 
_context99  (
.99( )
AirlyCaqiCodes99) 7
.997 8
Where998 =
(99= >
x99> ?
=>99@ B
x99C D
.99D E
Name99E I
==99J L
deserializedResult99M _
.99_ `
current99` g
.99g h
indexes99h o
[99o p
$num99p q
]99q r
.99r s
level99s x
)99x y
.:: 
FirstOrDefault:: 
(::  
)::  !
;::! "

outputList<< 
.<< 
AirlyCaqiCodes<< %
=<<& '
airlyCaqiCode<<( 5
;<<5 6
return@@ 
await@@ 
Task@@ 
.@@ 

FromResult@@ (
(@@( )

outputList@@) 3
)@@3 4
;@@4 5
}AA 	
}BB 
}CC †
DC:\Users\adam\source\repos\SmartHome\machines\AirMachine\Function.cs
	namespace

 	

AirMachine


 
{ 
public 

class 
Function 
{ 
private 
readonly 
	IMediator "
	_mediator# ,
;, -
public 
Function 
( 
	IMediator !
mediator" *
)* +
{ 	
	_mediator 
= 
mediator  
;  !
} 	
[ 	
FunctionName	 
( 
$str  
)  !
]! "
public 
async 
Task 
Run 
( 
[ 
TimerTrigger +
(+ ,
$str, <
)< =
]= >
	TimerInfo> G
myTimerH O
,O P
ILoggerQ X
logY \
)\ ]
{ 	
var 

apiRequest 
= 
new  &
GetValuesFromAirlyAPIQuery! ;
(; <
)< =
;= >
var 
	apiResult 
= 
await !
	_mediator" +
.+ ,
Send, 0
(0 1

apiRequest1 ;
); <
;< =
var 
	dbRequest 
= 
new #
AddAirToDatabaseCommand  7
(7 8
)8 9
{ 

airQuality 
= 
	apiResult &
} 
; 
var!! 
	dbCommand!! 
=!! 
await!! !
	_mediator!!" +
.!!+ ,
Send!!, 0
(!!0 1
	dbRequest!!1 :
)!!: ;
;!!; <
}"" 	
}## 
}$$ Þ2
VC:\Users\adam\source\repos\SmartHome\machines\AirMachine\Maps\AirAPIToEntityProfile.cs
	namespace 	

AirMachine
 
. 
Maps 
{ 
public 

class !
AirAPIToEntityProfile &
:' (
Profile) 0
{ 
public !
AirAPIToEntityProfile $
($ %
)% &
{ 	
	CreateMap 
< 
AirModelHelper $
,$ %

AirQuality& 0
>0 1
(1 2
)2 3
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
TestDateTime( 4
,4 5
act 
=> 
act 
. 
MapFrom &
(& '
src' *
=>+ -
src. 1
.1 2
current2 9
.9 :
fromDateTime: F
)F G
)G H
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
PM1( +
,+ ,
act 
=> 
act 
. 
MapFrom &
(& '
src' *
=>+ -
src 
. 
current #
.# $
values$ *
.* +
Where+ 0
(0 1
x1 2
=>3 5
x6 7
.7 8
name8 <
=== ?
$str@ E
)E F
.F G
SelectG M
(M N
xN O
=>P R
xS T
.T U
valueU Z
)Z [
.[ \
FirstOrDefault\ j
(j k
)k l
)l m
)m n
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
PM25( ,
,, -
act 
=> 
act 
. 
MapFrom &
(& '
src' *
=>+ -
src 
. 
current #
.# $
values$ *
.* +
Where+ 0
(0 1
x1 2
=>3 5
x6 7
.7 8
name8 <
=== ?
$str@ F
)F G
.G H
SelectH N
(N O
xO P
=>Q S
xT U
.U V
valueV [
)[ \
.\ ]
FirstOrDefault] k
(k l
)l m
)m n
)n o
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
PM10( ,
,, -
act 
=> 
act 
. 
MapFrom &
(& '
src' *
=>+ -
src 
. 
current #
.# $
values$ *
.* +
Where+ 0
(0 1
x1 2
=>3 5
x6 7
.7 8
name8 <
=== ?
$str@ F
)F G
.G H
SelectH N
(N O
xO P
=>Q S
xT U
.U V
valueV [
)[ \
.\ ]
FirstOrDefault] k
(k l
)l m
)m n
)n o
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
Humidity( 0
,0 1
act   
=>   
act   
.   
MapFrom   &
(  & '
src  ' *
=>  + -
src!! 
.!! 
current!! #
.!!# $
values!!$ *
.!!* +
Where!!+ 0
(!!0 1
x!!1 2
=>!!3 5
x!!6 7
.!!7 8
name!!8 <
==!!= ?
$str!!@ J
)!!J K
.!!K L
Select!!L R
(!!R S
x!!S T
=>!!U W
x!!X Y
.!!Y Z
value!!Z _
)!!_ `
.!!` a
FirstOrDefault!!a o
(!!o p
)!!p q
)!!q r
)!!r s
."" 
	ForMember"" 
("" 
dest"" 
=>""  "
dest""# '
.""' (
Pressure""( 0
,""0 1
act## 
=>## 
act## 
.## 
MapFrom## &
(##& '
src##' *
=>##+ -
src$$ 
.$$ 
current$$ #
.$$# $
values$$$ *
.$$* +
Where$$+ 0
($$0 1
x$$1 2
=>$$3 5
x$$6 7
.$$7 8
name$$8 <
==$$= ?
$str$$@ J
)$$J K
.$$K L
Select$$L R
($$R S
x$$S T
=>$$U W
x$$X Y
.$$Y Z
value$$Z _
)$$_ `
.$$` a
FirstOrDefault$$a o
($$o p
)$$p q
)$$q r
)$$r s
.%% 
	ForMember%% 
(%% 
dest%% 
=>%%  "
dest%%# '
.%%' (
Temperature%%( 3
,%%3 4
act&& 
=>&& 
act&& 
.&& 
MapFrom&& &
(&&& '
src&&' *
=>&&+ -
src'' 
.'' 
current'' #
.''# $
values''$ *
.''* +
Where''+ 0
(''0 1
x''1 2
=>''3 5
x''6 7
.''7 8
name''8 <
==''= ?
$str''@ M
)''M N
.''N O
Select''O U
(''U V
x''V W
=>''X Z
x''[ \
.''\ ]
value''] b
)''b c
.''c d
FirstOrDefault''d r
(''r s
)''s t
)''t u
)''u v
.(( 
	ForMember(( 
((( 
dest(( 
=>((  "
dest((# '
.((' (
AirlyCaqiValue((( 6
,((6 7
act)) 
=>)) 
act)) 
.)) 
MapFrom)) &
())& '
src))' *
=>))+ -
src)). 1
.))1 2
current))2 9
.))9 :
indexes)): A
.))A B
Select))B H
())H I
x))I J
=>))K M
x))N O
.))O P
value))P U
)))U V
.))V W
FirstOrDefault))W e
())e f
)))f g
)))g h
)))h i
;))i j
;** 
}-- 	
}.. 
}// •
iC:\Users\adam\source\repos\SmartHome\machines\AirMachine\ModelHelpers\AirAPIModelHelper\AirModelHelper.cs
	namespace 	

AirMachine
 
. 
ModelHelpers !
.! "
AirlyAPIModelHelper" 5
{ 
public		 

class		 
AirModelHelper		 
{

 
public  
AirModelValuesHelper #
current$ +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} –

pC:\Users\adam\source\repos\SmartHome\machines\AirMachine\ModelHelpers\AirAPIModelHelper\AirModelIndexesHelper.cs
	namespace 	

AirMachine
 
. 
ModelHelpers !
.! "
AirlyAPIModelHelper" 5
{ 
public 

class !
AirModelIndexesHelper &
{ 
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
public 
double 
value 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
level 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
string		 
advice		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
string

 
color

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
} 
} Ð
oC:\Users\adam\source\repos\SmartHome\machines\AirMachine\ModelHelpers\AirAPIModelHelper\AirModelValuesHelper.cs
	namespace 	

AirMachine
 
. 
ModelHelpers !
.! "
AirlyAPIModelHelper" 5
{ 
public 

class  
AirModelValuesHelper %
{ 
public 
DateTime 
fromDateTime $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public		 
List		 
<		 $
AirModelValuesListHelper		 ,
>		, -
values		. 4
{		5 6
get		7 :
;		: ;
set		< ?
;		? @
}		A B
public

 
List

 
<

 !
AirModelIndexesHelper

 )
>

) *
indexes

+ 2
{

3 4
get

5 8
;

8 9
set

: =
;

= >
}

? @
} 
} ±
sC:\Users\adam\source\repos\SmartHome\machines\AirMachine\ModelHelpers\AirAPIModelHelper\AirModelValuesListHelper.cs
	namespace 	

AirMachine
 
. 
ModelHelpers !
.! "
AirlyAPIModelHelper" 5
{ 
public 

class $
AirModelValuesListHelper )
{ 
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
public 
double 
value 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ë
CC:\Users\adam\source\repos\SmartHome\machines\AirMachine\Startup.cs
[ 
assembly 	
:	 

FunctionsStartup 
( 
typeof "
(" #

AirMachine# -
.- .
Startup. 5
)5 6
)6 7
]7 8
	namespace 	

AirMachine
 
{ 
public 

class 
Startup 
: 
FunctionsStartup +
{ 
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
. 
AddDbContext )
<) * 
ApplicationDbContext* >
>> ?
(? @
options@ G
=>H J
optionsK R
.R S
UseSqlServerS _
(_ `
$str	` Æ
)
Æ Ç
)
Ç È
;
È É
builder 
. 
Services 
. 
AddAutoMapper *
(* +
typeof+ 1
(1 2!
AirAPIToEntityProfile2 G
)G H
)H I
;I J
} 	
} 
} 