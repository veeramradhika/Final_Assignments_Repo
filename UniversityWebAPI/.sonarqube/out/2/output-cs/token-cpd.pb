ú
[D:\Final_Assignments_Repo\UniversityWebAPI\UniversityWebAPI\APIModels\UniversityModelApi.cs
	namespace 	
UniversityWebAPI
 
. 
	APIModels $
{ 
public 

class 
UniversityModelApi #
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[		 	
Key			 
]		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage #
=$ %
$str& \
)\ ]
]] ^
public 
string 
UniversityName $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage #
=$ %
$str& U
)U V
]V W
public 
string 
Location 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage #
=$ %
$str& ]
)] ^
]^ _
public 
string 
AffiliatedUnder %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
Required	 
] 
public 
int 
EstablishedYear "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ¸
\D:\Final_Assignments_Repo\UniversityWebAPI\UniversityWebAPI\AutoMapping\AutoMapperMapping.cs
	namespace 	
UniversityWebAPI
 
. 
AutoMapping &
{ 
public 

class 
AutoMapperMapping "
:# $
Profile% ,
{ 
public		 
AutoMapperMapping		  
(		  !
)		! "
{

 	
	CreateMap 
< 

University  
,  !
UniversityModelApi" 4
>4 5
(5 6
)6 7
.7 8

ReverseMap8 B
(B C
)C D
;D E
} 	
} 
} ç=
_D:\Final_Assignments_Repo\UniversityWebAPI\UniversityWebAPI\Controllers\UniversityController.cs
	namespace

 	
UniversityWebAPI


 
.

 
Controllers

 &
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class  
UniversityController %
:& '
ControllerBase( 6
{ 
private 
readonly 
UniversityDBContext , 
_universityDBContext- A
;A B
private 
readonly 
IMapper  
_mapper! (
;( )
public 
IDataRespository 
.  
IDataRepository  /
</ 0
UniversityModelApi0 B
>B C
ObjectD J
{K L
getM P
;P Q
}R S
public  
UniversityController #
(# $
UniversityDBContext$ 7
universityDBContext8 K
,K L
IMapperM T
mapperU [
)[ \
{ 	 
_universityDBContext  
=! "
universityDBContext# 6
;6 7
} 	
public  
UniversityController #
(# $
IDataRespository$ 4
.4 5
IDataRepository5 D
<D E
UniversityModelApiE W
>W X
@objectY `
)` a
{ 	
Object 
= 
@object 
; 
} 	
[&& 	
HttpPost&&	 
]&& 
public'' 
async'' 
Task'' 
<'' 
ActionResult'' &
<''& '

University''' 1
>''1 2
>''2 3
Create''4 :
('': ;

University''; E

university''F P
)''P Q
{(( 	 
_universityDBContext))  
.))  !
Add))! $
())$ %

university))% /
)))/ 0
;))0 1
await**  
_universityDBContext** &
.**& '
SaveChangesAsync**' 7
(**7 8
)**8 9
;**9 :
_mapper++ 
.++ 
Map++ 
<++ 
UniversityModelApi++ *
>++* +
(+++ ,

university++, 6
)++6 7
;++7 8
return,, 
Ok,, 
(,, 

university,,  
),,  !
;,,! "
}-- 	
[.. 	
HttpGet..	 
].. 
public// 
async// 
Task// 
<// 
ActionResult// &
<//& '
IEnumerable//' 2
<//2 3

University//3 =
>//= >
>//> ?
>//? @
Index//A F
(//F G
)//G H
{00 	
return11 
await11  
_universityDBContext11 -
.11- .
Universities11. :
.11: ;
ToListAsync11; F
(11F G
)11G H
;11H I
}22 	
[33 	
HttpGet33	 
(33 
$str33 
)33 
]33 
public44 
async44 
Task44 
<44 
ActionResult44 &
<44& '

University44' 1
>441 2
>442 3
GetUniversity444 A
(44A B
int44B E
id44F H
)44H I
{55 	
var66 

University66 
=66 
await66 " 
_universityDBContext66# 7
.667 8
Universities668 D
.66D E
	FindAsync66E N
(66N O
id66O Q
)66Q R
;66R S
_mapper77 
.77 
Map77 
<77 
UniversityModelApi77 *
>77* +
(77+ ,

University77, 6
)776 7
;777 8
if99 
(99 
id99 
==99 
null99 
)99 
{:: 
return;; 
NotFound;; 
(;;  
);;  !
;;;! "
}<< 
return>> 

University>> 
;>> 
}?? 	
[@@ 	
HttpPut@@	 
]@@ 
publicAA 
asyncAA 
TaskAA 
<AA 
IActionResultAA '
>AA' (
PutUniversityAA) 6
(AA6 7
intAA7 :
IdAA; =
,AA= >

UniversityAA? I

universityAAJ T
)AAT U
{BB 	
ifCC 
(CC 
IdCC 
!=CC 

universityCC  
.CC  !
IdCC! #
)CC# $
{DD 
returnEE 

BadRequestEE !
(EE! "
)EE" #
;EE# $
}FF  
_universityDBContextHH  
.HH  !
EntryHH! &
(HH& '

universityHH' 1
)HH1 2
.HH2 3
StateHH3 8
=HH9 :
EntityStateHH; F
.HHF G
ModifiedHHG O
;HHO P
_mapperII 
.II 
MapII 
<II 
UniversityModelApiII *
>II* +
(II+ ,

universityII, 6
)II6 7
;II7 8
tryKK 
{LL 
awaitMM  
_universityDBContextMM *
.MM* +
SaveChangesAsyncMM+ ;
(MM; <
)MM< =
;MM= >
}NN 
catchOO 
(OO (
DbUpdateConcurrencyExceptionOO /
)OO/ 0
{PP 
ifQQ 
(QQ 
!QQ 
universityExistsQQ %
(QQ% &
IdQQ& (
)QQ( )
)QQ) *
{RR 
returnSS 
NotFoundSS #
(SS# $
)SS$ %
;SS% &
}TT 
elseUU 
{VV 
throwWW 
;WW 
}XX 
}YY 
return[[ 
Ok[[ 
([[  
_universityDBContext[[ *
.[[* +
Universities[[+ 7
)[[7 8
;[[8 9
}\\ 	
[^^ 	

HttpDelete^^	 
(^^ 
$str^^ 
)^^ 
]^^ 
public__ 
async__ 
Task__ 
<__ 
ActionResult__ &
<__& '

University__' 1
>__1 2
>__2 3
DeleteProducts__4 B
(__B C
int__C F
id__G I
)__I J
{`` 	
varaa 

universityaa 
=aa 
awaitaa " 
_universityDBContextaa# 7
.aa7 8
Universitiesaa8 D
.aaD E
	FindAsyncaaE N
(aaN O
idaaO Q
)aaQ R
;aaR S
_mapperbb 
.bb 
Mapbb 
<bb 
UniversityModelApibb *
>bb* +
(bb+ ,

universitybb, 6
)bb6 7
;bb7 8
ifcc 
(cc 

universitycc 
==cc 
nullcc "
)cc" #
{dd 
returnee 
NotFoundee 
(ee  
)ee  !
;ee! "
}ff  
_universityDBContexthh  
.hh  !
Universitieshh! -
.hh- .
Removehh. 4
(hh4 5

universityhh5 ?
)hh? @
;hh@ A
awaitjj  
_universityDBContextjj &
.jj& '
SaveChangesAsyncjj' 7
(jj7 8
)jj8 9
;jj9 :
returnll 

universityll 
;ll 
}mm 	
privateoo 
booloo 
universityExistsoo %
(oo% &
intoo& )
Idoo* ,
)oo- .
{pp 	
returnqq  
_universityDBContextqq '
.qq' (
Universitiesqq( 4
.qq4 5
Anyqq5 8
(qq8 9
eqq9 :
=>qq; =
eqq> ?
.qq? @
Idqq@ B
==qqC E
IdqqF H
)qqH I
;qqI J
}rr 	
}ss 
}tt ·
FD:\Final_Assignments_Repo\UniversityWebAPI\UniversityWebAPI\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddDbContext 
< 
UniversityDBContext 1
>1 2
(2 3
options3 :
=>; =
options 
. 
UseSqlServer 
( 
builder 
. 
Configuration *
.* +
GetConnectionString+ >
(> ?
$str? K
)K L
)L M
)M N
;N O
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder 
. 
Services 
. 
AddAutoMapper 
( 
typeof %
(% &
Program& -
)- .
). /
;/ 0
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddSwaggerGen 
( 
)  
;  !
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
app 
. 
Environment 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app 
. 

UseSwagger 
( 
) 
; 
app 
. 
UseSwaggerUI 
( 
) 
; 
} 
app 
. 
UseHttpsRedirection 
( 
) 
; 
app 
. 
UseAuthorization 
( 
) 
; 
app 
. 
MapControllers 
( 
) 
; 
app   
.   
Run   
(   
)   	
;  	 
à
ZD:\Final_Assignments_Repo\UniversityWebAPI\UniversityWebAPI\Repository\IDataRespository.cs
	namespace 	
UniversityWebAPI
 
. 

Repository %
{ 
public 

class 
IDataRespository !
{ 
public 
	interface 
IDataRepository (
<( )
TEntity) 0
>0 1
{ 	
IEnumerable		 
<		 
TEntity		 
>		  
Index		! &
(		& '
)		' (
;		( )
void 
Add 
( 
UniversityModelApi '

university( 2
)2 3
;3 4
} 	
} 
} 