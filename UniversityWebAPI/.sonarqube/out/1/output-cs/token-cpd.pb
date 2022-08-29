˛
]D:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\APIModel\UniversityModelApi.cs
	namespace 	
UniversityMVCWebApp
 
. 
APIModel &
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
} 
} Û
pD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Data\UniversityMVCWebAppContext.cs
	namespace 	
UniversityMVCWebApp
 
. 
Data "
;" #
public

 
class

 &
UniversityMVCWebAppContext

 '
:

( )
IdentityDbContext

* ;
<

; <#
UniversityMVCWebAppUser

< S
>

S T
{ 
public 
&
UniversityMVCWebAppContext %
(% &
DbContextOptions& 6
<6 7&
UniversityMVCWebAppContext7 Q
>Q R
optionsS Z
)Z [
: 	
base
 
( 
options 
) 
{ 
} 
public 

DbSet 
< 
AdminViewModel 
>  
Approval! )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 

DbSet 
< 
StatusViewModel  
>  !
StatusViewModel" 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
	protected 
override 
void 
OnConfiguring )
() *#
DbContextOptionsBuilder* A
OptionsBuilderB P
)P Q
{ 
OptionsBuilder 
. 
UseSqlServer #
(# $
$str$ b
)b c
;c d
} 
	protected 
override 
void 
OnModelCreating +
(+ ,
ModelBuilder, 8
builder9 @
)@ A
{ 
base 
. 
OnModelCreating 
( 
builder $
)$ %
;% &
builder 
. 
ApplyConfiguration "
(" #
new# &-
!AplicationUserEntityConfiguration' H
(H I
)I J
)J K
;K L
builder   
.   
Entity   
<   
AdminViewModel   %
>  % &
(  & '
)  ' (
.  ( )
HasIndex  ) 1
(  1 2
u  2 3
=>  4 6
u  7 8
.  8 9
Email  9 >
)  > ?
.  ? @
IsUnique  @ H
(  H I
)  I J
;  J K
builder"" 
."" 
Entity"" 
<"" 
StatusViewModel"" &
>""& '
(""' (
)""( )
."") *
HasIndex""* 2
(""2 3
u""3 4
=>""5 7
u""8 9
.""9 :
Email"": ?
)""? @
.""@ A
IsUnique""A I
(""I J
)""J K
;""K L
}## 
public%% 

class%% -
!AplicationUserEntityConfiguration%% 2
:%%3 4$
IEntityTypeConfiguration%%5 M
<%%M N#
UniversityMVCWebAppUser%%N e
>%%e f
{&& 
public'' 
void'' 
	Configure'' 
('' 
EntityTypeBuilder'' /
<''/ 0#
UniversityMVCWebAppUser''0 G
>''G H
builder''I P
)''P Q
{(( 	
builder)) 
.)) 
Property)) 
()) 
p)) 
=>)) !
p))" #
.))# $
	PanNumber))$ -
)))- .
.)). /
HasMaxLength))/ ;
()); <
$num))< >
)))> ?
;))? @
}** 	
}++ 
},, ¨
mD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Data\UniversityMVCWebAppUser.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Data- 1
;1 2
public 
class #
UniversityMVCWebAppUser $
:% &
IdentityUser' 3
{ 
[ 
Required 
] 
[ 
StringLength 
( 
$num 
, 
ErrorMessage "
=# $
$str% =
)= >
]> ?
public 

string 
	PanNumber 
{ 
get !
;! "
set# &
;& '
}( )
} –
rD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\AccessDenied.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
{ 
public 

class 
AccessDeniedModel "
:# $
	PageModel% .
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} ö
rD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\ConfirmEmail.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
{ 
public 

class 
ConfirmEmailModel "
:# $
	PageModel% .
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
public 
ConfirmEmailModel  
(  !
UserManager! ,
<, -#
UniversityMVCWebAppUser- D
>D E
userManagerF Q
)Q R
{ 	
_userManager 
= 
userManager &
;& '
} 	
[ 	
TempData	 
] 
public   
string   
StatusMessage   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public!! 
async!! 
Task!! 
<!! 
IActionResult!! '
>!!' (

OnGetAsync!!) 3
(!!3 4
string!!4 :
userId!!; A
,!!A B
string!!C I
code!!J N
)!!N O
{"" 	
if## 
(## 
userId## 
==## 
null## 
||## !
code##" &
==##' )
null##* .
)##. /
{$$ 
return%% 
RedirectToPage%% %
(%%% &
$str%%& .
)%%. /
;%%/ 0
}&& 
var(( 
user(( 
=(( 
await(( 
_userManager(( )
.(() *
FindByIdAsync((* 7
(((7 8
userId((8 >
)((> ?
;((? @
if)) 
()) 
user)) 
==)) 
null)) 
))) 
{** 
return++ 
NotFound++ 
(++  
$"++  "
$str++" ?
{++? @
userId++@ F
}++F G
$str++G I
"++I J
)++J K
;++K L
},, 
code.. 
=.. 
Encoding.. 
... 
UTF8..  
...  !
	GetString..! *
(..* +
WebEncoders..+ 6
...6 7
Base64UrlDecode..7 F
(..F G
code..G K
)..K L
)..L M
;..M N
var// 
result// 
=// 
await// 
_userManager// +
.//+ ,
ConfirmEmailAsync//, =
(//= >
user//> B
,//B C
code//D H
)//H I
;//I J
StatusMessage00 
=00 
result00 "
.00" #
	Succeeded00# ,
?00- .
$str00/ U
:00V W
$str00X v
;00v w
return11 
Page11 
(11 
)11 
;11 
}22 	
}33 
}44 ˚#
xD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\ConfirmEmailChange.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
{ 
public 

class #
ConfirmEmailChangeModel (
:) *
	PageModel+ 4
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
SignInManager &
<& '#
UniversityMVCWebAppUser' >
>> ?
_signInManager@ N
;N O
public #
ConfirmEmailChangeModel &
(& '
UserManager' 2
<2 3#
UniversityMVCWebAppUser3 J
>J K
userManagerL W
,W X
SignInManagerY f
<f g#
UniversityMVCWebAppUserg ~
>~ 
signInManager
Ä ç
)
ç é
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
[   	
TempData  	 
]   
public!! 
string!! 
StatusMessage!! #
{!!$ %
get!!& )
;!!) *
set!!+ .
;!!. /
}!!0 1
public## 
async## 
Task## 
<## 
IActionResult## '
>##' (

OnGetAsync##) 3
(##3 4
string##4 :
userId##; A
,##A B
string##C I
email##J O
,##O P
string##Q W
code##X \
)##\ ]
{$$ 	
if%% 
(%% 
userId%% 
==%% 
null%% 
||%% !
email%%" '
==%%( *
null%%+ /
||%%0 2
code%%3 7
==%%8 :
null%%; ?
)%%? @
{&& 
return'' 
RedirectToPage'' %
(''% &
$str''& .
)''. /
;''/ 0
}(( 
var** 
user** 
=** 
await** 
_userManager** )
.**) *
FindByIdAsync*** 7
(**7 8
userId**8 >
)**> ?
;**? @
if++ 
(++ 
user++ 
==++ 
null++ 
)++ 
{,, 
return-- 
NotFound-- 
(--  
$"--  "
$str--" ?
{--? @
userId--@ F
}--F G
$str--G I
"--I J
)--J K
;--K L
}.. 
code00 
=00 
Encoding00 
.00 
UTF800  
.00  !
	GetString00! *
(00* +
WebEncoders00+ 6
.006 7
Base64UrlDecode007 F
(00F G
code00G K
)00K L
)00L M
;00M N
var11 
result11 
=11 
await11 
_userManager11 +
.11+ ,
ChangeEmailAsync11, <
(11< =
user11= A
,11A B
email11C H
,11H I
code11J N
)11N O
;11O P
if22 
(22 
!22 
result22 
.22 
	Succeeded22 !
)22! "
{33 
StatusMessage44 
=44 
$str44  7
;447 8
return55 
Page55 
(55 
)55 
;55 
}66 
var:: 
setUserNameResult:: !
=::" #
await::$ )
_userManager::* 6
.::6 7
SetUserNameAsync::7 G
(::G H
user::H L
,::L M
email::N S
)::S T
;::T U
if;; 
(;; 
!;; 
setUserNameResult;; "
.;;" #
	Succeeded;;# ,
);;, -
{<< 
StatusMessage== 
=== 
$str==  ;
;==; <
return>> 
Page>> 
(>> 
)>> 
;>> 
}?? 
awaitAA 
_signInManagerAA  
.AA  !
RefreshSignInAsyncAA! 3
(AA3 4
userAA4 8
)AA8 9
;AA9 :
StatusMessageBB 
=BB 
$strBB I
;BBI J
returnCC 
PageCC 
(CC 
)CC 
;CC 
}DD 	
}EE 
}FF ·ç
sD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\ExternalLogin.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
{ 
[ 
AllowAnonymous 
] 
public 

class 
ExternalLoginModel #
:$ %
	PageModel& /
{ 
private 
readonly 
SignInManager &
<& '#
UniversityMVCWebAppUser' >
>> ?
_signInManager@ N
;N O
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 

IUserStore #
<# $#
UniversityMVCWebAppUser$ ;
>; <

_userStore= G
;G H
private 
readonly 
IUserEmailStore (
<( )#
UniversityMVCWebAppUser) @
>@ A
_emailStoreB M
;M N
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
private   
readonly   
ILogger    
<    !
ExternalLoginModel  ! 3
>  3 4
_logger  5 <
;  < =
public"" 
ExternalLoginModel"" !
(""! "
SignInManager## 
<## #
UniversityMVCWebAppUser## 1
>##1 2
signInManager##3 @
,##@ A
UserManager$$ 
<$$ #
UniversityMVCWebAppUser$$ /
>$$/ 0
userManager$$1 <
,$$< =

IUserStore%% 
<%% #
UniversityMVCWebAppUser%% .
>%%. /
	userStore%%0 9
,%%9 :
ILogger&& 
<&& 
ExternalLoginModel&& &
>&&& '
logger&&( .
,&&. /
IEmailSender'' 
emailSender'' $
)''$ %
{(( 	
_signInManager)) 
=)) 
signInManager)) *
;))* +
_userManager** 
=** 
userManager** &
;**& '

_userStore++ 
=++ 
	userStore++ "
;++" #
_emailStore,, 
=,, 
GetEmailStore,, '
(,,' (
),,( )
;,,) *
_logger-- 
=-- 
logger-- 
;-- 
_emailSender.. 
=.. 
emailSender.. &
;..& '
}// 	
[55 	
BindProperty55	 
]55 
public66 

InputModel66 
Input66 
{66  !
get66" %
;66% &
set66' *
;66* +
}66, -
public<< 
string<< 
ProviderDisplayName<< )
{<<* +
get<<, /
;<</ 0
set<<1 4
;<<4 5
}<<6 7
publicBB 
stringBB 
	ReturnUrlBB 
{BB  !
getBB" %
;BB% &
setBB' *
;BB* +
}BB, -
[HH 	
TempDataHH	 
]HH 
publicII 
stringII 
ErrorMessageII "
{II# $
getII% (
;II( )
setII* -
;II- .
}II/ 0
publicOO 
classOO 

InputModelOO 
{PP 	
[UU 
RequiredUU 
]UU 
[VV 
EmailAddressVV 
]VV 
publicWW 
stringWW 
EmailWW 
{WW  !
getWW" %
;WW% &
setWW' *
;WW* +
}WW, -
}XX 	
publicZZ 
IActionResultZZ 
OnGetZZ "
(ZZ" #
)ZZ# $
=>ZZ% '
RedirectToPageZZ( 6
(ZZ6 7
$strZZ7 @
)ZZ@ A
;ZZA B
public\\ 
IActionResult\\ 
OnPost\\ #
(\\# $
string\\$ *
provider\\+ 3
,\\3 4
string\\5 ;
	returnUrl\\< E
=\\F G
null\\H L
)\\L M
{]] 	
var__ 
redirectUrl__ 
=__ 
Url__ !
.__! "
Page__" &
(__& '
$str__' 8
,__8 9
pageHandler__: E
:__E F
$str__G Q
,__Q R
values__S Y
:__Y Z
new__[ ^
{___ `
	returnUrl__a j
}__k l
)__l m
;__m n
var`` 

properties`` 
=`` 
_signInManager`` +
.``+ ,5
)ConfigureExternalAuthenticationProperties``, U
(``U V
provider``V ^
,``^ _
redirectUrl``` k
)``k l
;``l m
returnaa 
newaa 
ChallengeResultaa &
(aa& '
provideraa' /
,aa/ 0

propertiesaa1 ;
)aa; <
;aa< =
}bb 	
publicdd 
asyncdd 
Taskdd 
<dd 
IActionResultdd '
>dd' (
OnGetCallbackAsyncdd) ;
(dd; <
stringdd< B
	returnUrlddC L
=ddM N
nullddO S
,ddS T
stringddU [
remoteErrordd\ g
=ddh i
nullddj n
)ddn o
{ee 	
	returnUrlff 
=ff 
	returnUrlff !
??ff" $
Urlff% (
.ff( )
Contentff) 0
(ff0 1
$strff1 5
)ff5 6
;ff6 7
ifgg 
(gg 
remoteErrorgg 
!=gg 
nullgg #
)gg# $
{hh 
ErrorMessageii 
=ii 
$"ii !
$strii! ?
{ii? @
remoteErrorii@ K
}iiK L
"iiL M
;iiM N
returnjj 
RedirectToPagejj %
(jj% &
$strjj& /
,jj/ 0
newjj1 4
{jj5 6
	ReturnUrljj7 @
=jjA B
	returnUrljjC L
}jjM N
)jjN O
;jjO P
}kk 
varll 
infoll 
=ll 
awaitll 
_signInManagerll +
.ll+ ,%
GetExternalLoginInfoAsyncll, E
(llE F
)llF G
;llG H
ifmm 
(mm 
infomm 
==mm 
nullmm 
)mm 
{nn 
ErrorMessageoo 
=oo 
$stroo J
;ooJ K
returnpp 
RedirectToPagepp %
(pp% &
$strpp& /
,pp/ 0
newpp1 4
{pp5 6
	ReturnUrlpp7 @
=ppA B
	returnUrlppC L
}ppM N
)ppN O
;ppO P
}qq 
vartt 
resulttt 
=tt 
awaittt 
_signInManagertt -
.tt- .$
ExternalLoginSignInAsynctt. F
(ttF G
infottG K
.ttK L
LoginProviderttL Y
,ttY Z
infott[ _
.tt_ `
ProviderKeytt` k
,ttk l
isPersistentttm y
:tty z
false	tt{ Ä
,
ttÄ Å
bypassTwoFactor
ttÇ ë
:
ttë í
true
ttì ó
)
ttó ò
;
ttò ô
ifuu 
(uu 
resultuu 
.uu 
	Succeededuu  
)uu  !
{vv 
_loggerww 
.ww 
LogInformationww &
(ww& '
$strww' X
,wwX Y
infowwZ ^
.ww^ _
	Principalww_ h
.wwh i
Identitywwi q
.wwq r
Namewwr v
,wwv w
infowwx |
.ww| }
LoginProvider	ww} ä
)
wwä ã
;
wwã å
returnxx 
LocalRedirectxx $
(xx$ %
	returnUrlxx% .
)xx. /
;xx/ 0
}yy 
ifzz 
(zz 
resultzz 
.zz 
IsLockedOutzz "
)zz" #
{{{ 
return|| 
RedirectToPage|| %
(||% &
$str||& 1
)||1 2
;||2 3
}}} 
else~~ 
{ 
	ReturnUrl
ÅÅ 
=
ÅÅ 
	returnUrl
ÅÅ %
;
ÅÅ% &!
ProviderDisplayName
ÇÇ #
=
ÇÇ$ %
info
ÇÇ& *
.
ÇÇ* +!
ProviderDisplayName
ÇÇ+ >
;
ÇÇ> ?
if
ÉÉ 
(
ÉÉ 
info
ÉÉ 
.
ÉÉ 
	Principal
ÉÉ "
.
ÉÉ" #
HasClaim
ÉÉ# +
(
ÉÉ+ ,
c
ÉÉ, -
=>
ÉÉ. 0
c
ÉÉ1 2
.
ÉÉ2 3
Type
ÉÉ3 7
==
ÉÉ8 :

ClaimTypes
ÉÉ; E
.
ÉÉE F
Email
ÉÉF K
)
ÉÉK L
)
ÉÉL M
{
ÑÑ 
Input
ÖÖ 
=
ÖÖ 
new
ÖÖ 

InputModel
ÖÖ  *
{
ÜÜ 
Email
áá 
=
áá 
info
áá  $
.
áá$ %
	Principal
áá% .
.
áá. /
FindFirstValue
áá/ =
(
áá= >

ClaimTypes
áá> H
.
ááH I
Email
ááI N
)
ááN O
}
àà 
;
àà 
}
ââ 
return
ää 
Page
ää 
(
ää 
)
ää 
;
ää 
}
ãã 
}
åå 	
public
éé 
async
éé 
Task
éé 
<
éé 
IActionResult
éé '
>
éé' (%
OnPostConfirmationAsync
éé) @
(
éé@ A
string
ééA G
	returnUrl
ééH Q
=
ééR S
null
ééT X
)
ééX Y
{
èè 	
	returnUrl
êê 
=
êê 
	returnUrl
êê !
??
êê" $
Url
êê% (
.
êê( )
Content
êê) 0
(
êê0 1
$str
êê1 5
)
êê5 6
;
êê6 7
var
íí 
info
íí 
=
íí 
await
íí 
_signInManager
íí +
.
íí+ ,'
GetExternalLoginInfoAsync
íí, E
(
ííE F
)
ííF G
;
ííG H
if
ìì 
(
ìì 
info
ìì 
==
ìì 
null
ìì 
)
ìì 
{
îî 
ErrorMessage
ïï 
=
ïï 
$str
ïï ^
;
ïï^ _
return
ññ 
RedirectToPage
ññ %
(
ññ% &
$str
ññ& /
,
ññ/ 0
new
ññ1 4
{
ññ5 6
	ReturnUrl
ññ7 @
=
ññA B
	returnUrl
ññC L
}
ññM N
)
ññN O
;
ññO P
}
óó 
if
ôô 
(
ôô 

ModelState
ôô 
.
ôô 
IsValid
ôô "
)
ôô" #
{
öö 
var
õõ 
user
õõ 
=
õõ 

CreateUser
õõ %
(
õõ% &
)
õõ& '
;
õõ' (
await
ùù 

_userStore
ùù  
.
ùù  !
SetUserNameAsync
ùù! 1
(
ùù1 2
user
ùù2 6
,
ùù6 7
Input
ùù8 =
.
ùù= >
Email
ùù> C
,
ùùC D
CancellationToken
ùùE V
.
ùùV W
None
ùùW [
)
ùù[ \
;
ùù\ ]
await
ûû 
_emailStore
ûû !
.
ûû! "
SetEmailAsync
ûû" /
(
ûû/ 0
user
ûû0 4
,
ûû4 5
Input
ûû6 ;
.
ûû; <
Email
ûû< A
,
ûûA B
CancellationToken
ûûC T
.
ûûT U
None
ûûU Y
)
ûûY Z
;
ûûZ [
var
†† 
result
†† 
=
†† 
await
†† "
_userManager
††# /
.
††/ 0
CreateAsync
††0 ;
(
††; <
user
††< @
)
††@ A
;
††A B
if
°° 
(
°° 
result
°° 
.
°° 
	Succeeded
°° $
)
°°$ %
{
¢¢ 
result
££ 
=
££ 
await
££ "
_userManager
££# /
.
££/ 0
AddLoginAsync
££0 =
(
££= >
user
££> B
,
££B C
info
££D H
)
££H I
;
££I J
if
§§ 
(
§§ 
result
§§ 
.
§§ 
	Succeeded
§§ (
)
§§( )
{
•• 
_logger
¶¶ 
.
¶¶  
LogInformation
¶¶  .
(
¶¶. /
$str
¶¶/ _
,
¶¶_ `
info
¶¶a e
.
¶¶e f
LoginProvider
¶¶f s
)
¶¶s t
;
¶¶t u
var
®® 
userId
®® "
=
®®# $
await
®®% *
_userManager
®®+ 7
.
®®7 8
GetUserIdAsync
®®8 F
(
®®F G
user
®®G K
)
®®K L
;
®®L M
var
©© 
code
©©  
=
©©! "
await
©©# (
_userManager
©©) 5
.
©©5 61
#GenerateEmailConfirmationTokenAsync
©©6 Y
(
©©Y Z
user
©©Z ^
)
©©^ _
;
©©_ `
code
™™ 
=
™™ 
WebEncoders
™™ *
.
™™* +
Base64UrlEncode
™™+ :
(
™™: ;
Encoding
™™; C
.
™™C D
UTF8
™™D H
.
™™H I
GetBytes
™™I Q
(
™™Q R
code
™™R V
)
™™V W
)
™™W X
;
™™X Y
var
´´ 
callbackUrl
´´ '
=
´´( )
Url
´´* -
.
´´- .
Page
´´. 2
(
´´2 3
$str
¨¨ 3
,
¨¨3 4
pageHandler
≠≠ '
:
≠≠' (
null
≠≠) -
,
≠≠- .
values
ÆÆ "
:
ÆÆ" #
new
ÆÆ$ '
{
ÆÆ( )
area
ÆÆ* .
=
ÆÆ/ 0
$str
ÆÆ1 ;
,
ÆÆ; <
userId
ÆÆ= C
=
ÆÆD E
userId
ÆÆF L
,
ÆÆL M
code
ÆÆN R
=
ÆÆS T
code
ÆÆU Y
}
ÆÆZ [
,
ÆÆ[ \
protocol
ØØ $
:
ØØ$ %
Request
ØØ& -
.
ØØ- .
Scheme
ØØ. 4
)
ØØ4 5
;
ØØ5 6
await
±± 
_emailSender
±± *
.
±±* +
SendEmailAsync
±±+ 9
(
±±9 :
Input
±±: ?
.
±±? @
Email
±±@ E
,
±±E F
$str
±±G [
,
±±[ \
$"
≤≤ 
$str
≤≤ F
{
≤≤F G
HtmlEncoder
≤≤G R
.
≤≤R S
Default
≤≤S Z
.
≤≤Z [
Encode
≤≤[ a
(
≤≤a b
callbackUrl
≤≤b m
)
≤≤m n
}
≤≤n o
$str≤≤o É
"≤≤É Ñ
)≤≤Ñ Ö
;≤≤Ö Ü
if
µµ 
(
µµ 
_userManager
µµ (
.
µµ( )
Options
µµ) 0
.
µµ0 1
SignIn
µµ1 7
.
µµ7 8%
RequireConfirmedAccount
µµ8 O
)
µµO P
{
∂∂ 
return
∑∑ "
RedirectToPage
∑∑# 1
(
∑∑1 2
$str
∑∑2 J
,
∑∑J K
new
∑∑L O
{
∑∑P Q
Email
∑∑R W
=
∑∑X Y
Input
∑∑Z _
.
∑∑_ `
Email
∑∑` e
}
∑∑f g
)
∑∑g h
;
∑∑h i
}
∏∏ 
await
∫∫ 
_signInManager
∫∫ ,
.
∫∫, -
SignInAsync
∫∫- 8
(
∫∫8 9
user
∫∫9 =
,
∫∫= >
isPersistent
∫∫? K
:
∫∫K L
false
∫∫M R
,
∫∫R S
info
∫∫T X
.
∫∫X Y
LoginProvider
∫∫Y f
)
∫∫f g
;
∫∫g h
return
ªª 
LocalRedirect
ªª ,
(
ªª, -
	returnUrl
ªª- 6
)
ªª6 7
;
ªª7 8
}
ºº 
}
ΩΩ 
foreach
ææ 
(
ææ 
var
ææ 
error
ææ "
in
ææ# %
result
ææ& ,
.
ææ, -
Errors
ææ- 3
)
ææ3 4
{
øø 

ModelState
¿¿ 
.
¿¿ 
AddModelError
¿¿ ,
(
¿¿, -
string
¿¿- 3
.
¿¿3 4
Empty
¿¿4 9
,
¿¿9 :
error
¿¿; @
.
¿¿@ A
Description
¿¿A L
)
¿¿L M
;
¿¿M N
}
¡¡ 
}
¬¬ !
ProviderDisplayName
ƒƒ 
=
ƒƒ  !
info
ƒƒ" &
.
ƒƒ& '!
ProviderDisplayName
ƒƒ' :
;
ƒƒ: ;
	ReturnUrl
≈≈ 
=
≈≈ 
	returnUrl
≈≈ !
;
≈≈! "
return
∆∆ 
Page
∆∆ 
(
∆∆ 
)
∆∆ 
;
∆∆ 
}
«« 	
private
…… %
UniversityMVCWebAppUser
…… '

CreateUser
……( 2
(
……2 3
)
……3 4
{
   	
try
ÀÀ 
{
ÃÃ 
return
ÕÕ 
	Activator
ÕÕ  
.
ÕÕ  !
CreateInstance
ÕÕ! /
<
ÕÕ/ 0%
UniversityMVCWebAppUser
ÕÕ0 G
>
ÕÕG H
(
ÕÕH I
)
ÕÕI J
;
ÕÕJ K
}
ŒŒ 
catch
œœ 
{
–– 
throw
—— 
new
—— '
InvalidOperationException
—— 3
(
——3 4
$"
——4 6
$str
——6 S
{
——S T
nameof
——T Z
(
——Z [%
UniversityMVCWebAppUser
——[ r
)
——r s
}
——s t
$str
——t w
"
——w x
+
——y z
$"
““ 
$str
““ #
{
““# $
nameof
““$ *
(
““* +%
UniversityMVCWebAppUser
““+ B
)
““B C
}
““C D
$str““D ï
"““ï ñ
+““ó ò
$"
”” 
$str
”” l
"
””l m
)
””m n
;
””n o
}
‘‘ 
}
’’ 	
private
◊◊ 
IUserEmailStore
◊◊ 
<
◊◊  %
UniversityMVCWebAppUser
◊◊  7
>
◊◊7 8
GetEmailStore
◊◊9 F
(
◊◊F G
)
◊◊G H
{
ÿÿ 	
if
ŸŸ 
(
ŸŸ 
!
ŸŸ 
_userManager
ŸŸ 
.
ŸŸ 
SupportsUserEmail
ŸŸ /
)
ŸŸ/ 0
{
⁄⁄ 
throw
€€ 
new
€€ #
NotSupportedException
€€ /
(
€€/ 0
$str
€€0 j
)
€€j k
;
€€k l
}
‹‹ 
return
›› 
(
›› 
IUserEmailStore
›› #
<
››# $%
UniversityMVCWebAppUser
››$ ;
>
››; <
)
››< =

_userStore
››= G
;
››G H
}
ﬁﬁ 	
}
ﬂﬂ 
}‡‡ ß#
tD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\ForgotPassword.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
{ 
public 

class 
ForgotPasswordModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 
ForgotPasswordModel "
(" #
UserManager# .
<. /#
UniversityMVCWebAppUser/ F
>F G
userManagerH S
,S T
IEmailSenderU a
emailSenderb m
)m n
{ 	
_userManager 
= 
userManager &
;& '
_emailSender 
= 
emailSender &
;& '
} 	
[## 	
BindProperty##	 
]## 
public$$ 

InputModel$$ 
Input$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public** 
class** 

InputModel** 
{++ 	
[00 
Required00 
]00 
[11 
EmailAddress11 
]11 
public22 
string22 
Email22 
{22  !
get22" %
;22% &
set22' *
;22* +
}22, -
}33 	
public55 
async55 
Task55 
<55 
IActionResult55 '
>55' (
OnPostAsync55) 4
(554 5
)555 6
{66 	
if77 
(77 

ModelState77 
.77 
IsValid77 "
)77" #
{88 
var99 
user99 
=99 
await99  
_userManager99! -
.99- .
FindByEmailAsync99. >
(99> ?
Input99? D
.99D E
Email99E J
)99J K
;99K L
if:: 
(:: 
user:: 
==:: 
null::  
||::! #
!::$ %
(::% &
await::& +
_userManager::, 8
.::8 9!
IsEmailConfirmedAsync::9 N
(::N O
user::O S
)::S T
)::T U
)::U V
{;; 
return== 
RedirectToPage== )
(==) *
$str==* H
)==H I
;==I J
}>> 
varBB 
codeBB 
=BB 
awaitBB  
_userManagerBB! -
.BB- .+
GeneratePasswordResetTokenAsyncBB. M
(BBM N
userBBN R
)BBR S
;BBS T
codeCC 
=CC 
WebEncodersCC "
.CC" #
Base64UrlEncodeCC# 2
(CC2 3
EncodingCC3 ;
.CC; <
UTF8CC< @
.CC@ A
GetBytesCCA I
(CCI J
codeCCJ N
)CCN O
)CCO P
;CCP Q
varDD 
callbackUrlDD 
=DD  !
UrlDD" %
.DD% &
PageDD& *
(DD* +
$strEE ,
,EE, -
pageHandlerFF 
:FF  
nullFF! %
,FF% &
valuesGG 
:GG 
newGG 
{GG  !
areaGG" &
=GG' (
$strGG) 3
,GG3 4
codeGG5 9
}GG: ;
,GG; <
protocolHH 
:HH 
RequestHH %
.HH% &
SchemeHH& ,
)HH, -
;HH- .
awaitJJ 
_emailSenderJJ "
.JJ" #
SendEmailAsyncJJ# 1
(JJ1 2
InputKK 
.KK 
EmailKK 
,KK  
$strLL $
,LL$ %
$"MM 
$strMM =
{MM= >
HtmlEncoderMM> I
.MMI J
DefaultMMJ Q
.MMQ R
EncodeMMR X
(MMX Y
callbackUrlMMY d
)MMd e
}MMe f
$strMMf z
"MMz {
)MM{ |
;MM| }
returnOO 
RedirectToPageOO %
(OO% &
$strOO& D
)OOD E
;OOE F
}PP 
returnRR 
PageRR 
(RR 
)RR 
;RR 
}SS 	
}TT 
}UU ¢
ÄD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\ForgotPasswordConfirmation.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
{		 
[ 
AllowAnonymous 
] 
public 

class &
ForgotPasswordConfirmation +
:, -
	PageModel. 7
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} Ä
mD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Lockout.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
{		 
[ 
AllowAnonymous 
] 
public 

class 
LockoutModel 
: 
	PageModel  )
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} –:
kD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Login.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
{ 
public 

class 

LoginModel 
: 
	PageModel '
{ 
private 
readonly 
SignInManager &
<& '#
UniversityMVCWebAppUser' >
>> ?
_signInManager@ N
;N O
private 
readonly 
ILogger  
<  !

LoginModel! +
>+ ,
_logger- 4
;4 5
public 

LoginModel 
( 
SignInManager '
<' (#
UniversityMVCWebAppUser( ?
>? @
signInManagerA N
,N O
ILoggerP W
<W X

LoginModelX b
>b c
loggerd j
)j k
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[$$ 	
BindProperty$$	 
]$$ 
public%% 

InputModel%% 
Input%% 
{%%  !
get%%" %
;%%% &
set%%' *
;%%* +
}%%, -
public++ 
IList++ 
<++  
AuthenticationScheme++ )
>++) *
ExternalLogins+++ 9
{++: ;
get++< ?
;++? @
set++A D
;++D E
}++F G
public11 
string11 
	ReturnUrl11 
{11  !
get11" %
;11% &
set11' *
;11* +
}11, -
[77 	
TempData77	 
]77 
public88 
string88 
ErrorMessage88 "
{88# $
get88% (
;88( )
set88* -
;88- .
}88/ 0
public>> 
class>> 

InputModel>> 
{?? 	
[DD 
RequiredDD 
]DD 
[EE 
EmailAddressEE 
]EE 
publicFF 
stringFF 
EmailFF 
{FF  !
getFF" %
;FF% &
setFF' *
;FF* +
}FF, -
[LL 
RequiredLL 
]LL 
[MM 
DataTypeMM 
(MM 
DataTypeMM 
.MM 
PasswordMM '
)MM' (
]MM( )
publicNN 
stringNN 
PasswordNN "
{NN# $
getNN% (
;NN( )
setNN* -
;NN- .
}NN/ 0
[TT 
DisplayTT 
(TT 
NameTT 
=TT 
$strTT *
)TT* +
]TT+ ,
publicUU 
boolUU 

RememberMeUU "
{UU# $
getUU% (
;UU( )
setUU* -
;UU- .
}UU/ 0
}VV 	
publicXX 
asyncXX 
TaskXX 

OnGetAsyncXX $
(XX$ %
stringXX% +
	returnUrlXX, 5
=XX6 7
nullXX8 <
)XX< =
{YY 	
ifZZ 
(ZZ 
!ZZ 
stringZZ 
.ZZ 
IsNullOrEmptyZZ %
(ZZ% &
ErrorMessageZZ& 2
)ZZ2 3
)ZZ3 4
{[[ 

ModelState\\ 
.\\ 
AddModelError\\ (
(\\( )
string\\) /
.\\/ 0
Empty\\0 5
,\\5 6
ErrorMessage\\7 C
)\\C D
;\\D E
}]] 
	returnUrl__ 
??=__ 
Url__ 
.__ 
Content__ %
(__% &
$str__& *
)__* +
;__+ ,
awaitbb 
HttpContextbb 
.bb 
SignOutAsyncbb *
(bb* +
IdentityConstantsbb+ <
.bb< =
ExternalSchemebb= K
)bbK L
;bbL M
ExternalLoginsdd 
=dd 
(dd 
awaitdd #
_signInManagerdd$ 2
.dd2 31
%GetExternalAuthenticationSchemesAsyncdd3 X
(ddX Y
)ddY Z
)ddZ [
.dd[ \
ToListdd\ b
(ddb c
)ddc d
;ddd e
	ReturnUrlff 
=ff 
	returnUrlff !
;ff! "
}gg 	
publicii 
asyncii 
Taskii 
<ii 
IActionResultii '
>ii' (
OnPostAsyncii) 4
(ii4 5
stringii5 ;
	returnUrlii< E
=iiF G
nulliiH L
)iiL M
{jj 	
	returnUrlkk 
??=kk 
Urlkk 
.kk 
Contentkk %
(kk% &
$strkk& *
)kk* +
;kk+ ,
ExternalLoginsmm 
=mm 
(mm 
awaitmm #
_signInManagermm$ 2
.mm2 31
%GetExternalAuthenticationSchemesAsyncmm3 X
(mmX Y
)mmY Z
)mmZ [
.mm[ \
ToListmm\ b
(mmb c
)mmc d
;mmd e
ifoo 
(oo 

ModelStateoo 
.oo 
IsValidoo "
)oo" #
{pp 
varss 
resultss 
=ss 
awaitss "
_signInManagerss# 1
.ss1 2
PasswordSignInAsyncss2 E
(ssE F
InputssF K
.ssK L
EmailssL Q
,ssQ R
InputssS X
.ssX Y
PasswordssY a
,ssa b
Inputssc h
.ssh i

RememberMessi s
,sss t
lockoutOnFailure	ssu Ö
:
ssÖ Ü
false
ssá å
)
sså ç
;
ssç é
iftt 
(tt 
resulttt 
.tt 
	Succeededtt $
)tt$ %
{uu 
_loggervv 
.vv 
LogInformationvv *
(vv* +
$strvv+ <
)vv< =
;vv= >
returnww 
LocalRedirectww (
(ww( )
	returnUrlww) 2
)ww2 3
;ww3 4
}xx 
ifyy 
(yy 
resultyy 
.yy 
RequiresTwoFactoryy ,
)yy, -
{zz 
return{{ 
RedirectToPage{{ )
({{) *
$str{{* :
,{{: ;
new{{< ?
{{{@ A
	ReturnUrl{{B K
={{L M
	returnUrl{{N W
,{{W X

RememberMe{{Y c
={{d e
Input{{f k
.{{k l

RememberMe{{l v
}{{w x
){{x y
;{{y z
}|| 
if}} 
(}} 
result}} 
.}} 
IsLockedOut}} &
)}}& '
{~~ 
_logger 
. 

LogWarning &
(& '
$str' A
)A B
;B C
return
ÄÄ 
RedirectToPage
ÄÄ )
(
ÄÄ) *
$str
ÄÄ* 5
)
ÄÄ5 6
;
ÄÄ6 7
}
ÅÅ 
else
ÇÇ 
{
ÉÉ 

ModelState
ÑÑ 
.
ÑÑ 
AddModelError
ÑÑ ,
(
ÑÑ, -
string
ÑÑ- 3
.
ÑÑ3 4
Empty
ÑÑ4 9
,
ÑÑ9 :
$str
ÑÑ; S
)
ÑÑS T
;
ÑÑT U
return
ÖÖ 
Page
ÖÖ 
(
ÖÖ  
)
ÖÖ  !
;
ÖÖ! "
}
ÜÜ 
}
áá 
return
ää 
Page
ää 
(
ää 
)
ää 
;
ää 
}
ãã 	
}
åå 
}çç ª?
rD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\LoginWith2fa.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
{ 
public 

class 
LoginWith2faModel "
:# $
	PageModel% .
{ 
private 
readonly 
SignInManager &
<& '#
UniversityMVCWebAppUser' >
>> ?
_signInManager@ N
;N O
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
ILogger  
<  !
LoginWith2faModel! 2
>2 3
_logger4 ;
;; <
public 
LoginWith2faModel  
(  !
SignInManager 
< #
UniversityMVCWebAppUser 1
>1 2
signInManager3 @
,@ A
UserManager 
< #
UniversityMVCWebAppUser /
>/ 0
userManager1 <
,< =
ILogger 
< 
LoginWith2faModel %
>% &
logger' -
)- .
{ 	
_signInManager 
= 
signInManager *
;* +
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
}   	
[&& 	
BindProperty&&	 
]&& 
public'' 

InputModel'' 
Input'' 
{''  !
get''" %
;''% &
set''' *
;''* +
}'', -
public-- 
bool-- 

RememberMe-- 
{--  
get--! $
;--$ %
set--& )
;--) *
}--+ ,
public33 
string33 
	ReturnUrl33 
{33  !
get33" %
;33% &
set33' *
;33* +
}33, -
public99 
class99 

InputModel99 
{:: 	
[?? 
Required?? 
]?? 
[@@ 
StringLength@@ 
(@@ 
$num@@ 
,@@ 
ErrorMessage@@ )
=@@* +
$str@@, j
,@@j k
MinimumLength@@l y
=@@z {
$num@@| }
)@@} ~
]@@~ 
[AA 
DataTypeAA 
(AA 
DataTypeAA 
.AA 
TextAA #
)AA# $
]AA$ %
[BB 
DisplayBB 
(BB 
NameBB 
=BB 
$strBB 0
)BB0 1
]BB1 2
publicCC 
stringCC 
TwoFactorCodeCC '
{CC( )
getCC* -
;CC- .
setCC/ 2
;CC2 3
}CC4 5
[II 
DisplayII 
(II 
NameII 
=II 
$strII 3
)II3 4
]II4 5
publicJJ 
boolJJ 
RememberMachineJJ '
{JJ( )
getJJ* -
;JJ- .
setJJ/ 2
;JJ2 3
}JJ4 5
}KK 	
publicMM 
asyncMM 
TaskMM 
<MM 
IActionResultMM '
>MM' (

OnGetAsyncMM) 3
(MM3 4
boolMM4 8

rememberMeMM9 C
,MMC D
stringMME K
	returnUrlMML U
=MMV W
nullMMX \
)MM\ ]
{NN 	
varPP 
userPP 
=PP 
awaitPP 
_signInManagerPP +
.PP+ ,/
#GetTwoFactorAuthenticationUserAsyncPP, O
(PPO P
)PPP Q
;PPQ R
ifRR 
(RR 
userRR 
==RR 
nullRR 
)RR 
{SS 
throwTT 
newTT %
InvalidOperationExceptionTT 3
(TT3 4
$"TT4 6
$strTT6 d
"TTd e
)TTe f
;TTf g
}UU 
	ReturnUrlWW 
=WW 
	returnUrlWW !
;WW! "

RememberMeXX 
=XX 

rememberMeXX #
;XX# $
returnZZ 
PageZZ 
(ZZ 
)ZZ 
;ZZ 
}[[ 	
public]] 
async]] 
Task]] 
<]] 
IActionResult]] '
>]]' (
OnPostAsync]]) 4
(]]4 5
bool]]5 9

rememberMe]]: D
,]]D E
string]]F L
	returnUrl]]M V
=]]W X
null]]Y ]
)]]] ^
{^^ 	
if__ 
(__ 
!__ 

ModelState__ 
.__ 
IsValid__ #
)__# $
{`` 
returnaa 
Pageaa 
(aa 
)aa 
;aa 
}bb 
	returnUrldd 
=dd 
	returnUrldd !
??dd" $
Urldd% (
.dd( )
Contentdd) 0
(dd0 1
$strdd1 5
)dd5 6
;dd6 7
varff 
userff 
=ff 
awaitff 
_signInManagerff +
.ff+ ,/
#GetTwoFactorAuthenticationUserAsyncff, O
(ffO P
)ffP Q
;ffQ R
ifgg 
(gg 
usergg 
==gg 
nullgg 
)gg 
{hh 
throwii 
newii %
InvalidOperationExceptionii 3
(ii3 4
$"ii4 6
$strii6 d
"iid e
)iie f
;iif g
}jj 
varll 
authenticatorCodell !
=ll" #
Inputll$ )
.ll) *
TwoFactorCodell* 7
.ll7 8
Replacell8 ?
(ll? @
$strll@ C
,llC D
stringllE K
.llK L
EmptyllL Q
)llQ R
.llR S
ReplacellS Z
(llZ [
$strll[ ^
,ll^ _
stringll` f
.llf g
Emptyllg l
)lll m
;llm n
varnn 
resultnn 
=nn 
awaitnn 
_signInManagernn -
.nn- .-
!TwoFactorAuthenticatorSignInAsyncnn. O
(nnO P
authenticatorCodennP a
,nna b

rememberMennc m
,nnm n
Inputnno t
.nnt u
RememberMachine	nnu Ñ
)
nnÑ Ö
;
nnÖ Ü
varpp 
userIdpp 
=pp 
awaitpp 
_userManagerpp +
.pp+ ,
GetUserIdAsyncpp, :
(pp: ;
userpp; ?
)pp? @
;pp@ A
ifrr 
(rr 
resultrr 
.rr 
	Succeededrr  
)rr  !
{ss 
_loggertt 
.tt 
LogInformationtt &
(tt& '
$strtt' T
,ttT U
userttV Z
.ttZ [
Idtt[ ]
)tt] ^
;tt^ _
returnuu 
LocalRedirectuu $
(uu$ %
	returnUrluu% .
)uu. /
;uu/ 0
}vv 
elseww 
ifww 
(ww 
resultww 
.ww 
IsLockedOutww '
)ww' (
{xx 
_loggeryy 
.yy 

LogWarningyy "
(yy" #
$stryy# P
,yyP Q
useryyR V
.yyV W
IdyyW Y
)yyY Z
;yyZ [
returnzz 
RedirectToPagezz %
(zz% &
$strzz& 1
)zz1 2
;zz2 3
}{{ 
else|| 
{}} 
_logger~~ 
.~~ 

LogWarning~~ "
(~~" #
$str~~# d
,~~d e
user~~f j
.~~j k
Id~~k m
)~~m n
;~~n o

ModelState 
. 
AddModelError (
(( )
string) /
./ 0
Empty0 5
,5 6
$str7 T
)T U
;U V
return
ÄÄ 
Page
ÄÄ 
(
ÄÄ 
)
ÄÄ 
;
ÄÄ 
}
ÅÅ 
}
ÇÇ 	
}
ÉÉ 
}ÑÑ “5
{D:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\LoginWithRecoveryCode.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
{ 
public 

class &
LoginWithRecoveryCodeModel +
:, -
	PageModel. 7
{ 
private 
readonly 
SignInManager &
<& '#
UniversityMVCWebAppUser' >
>> ?
_signInManager@ N
;N O
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
ILogger  
<  !&
LoginWithRecoveryCodeModel! ;
>; <
_logger= D
;D E
public &
LoginWithRecoveryCodeModel )
() *
SignInManager 
< #
UniversityMVCWebAppUser 1
>1 2
signInManager3 @
,@ A
UserManager 
< #
UniversityMVCWebAppUser /
>/ 0
userManager1 <
,< =
ILogger 
< &
LoginWithRecoveryCodeModel .
>. /
logger0 6
)6 7
{ 	
_signInManager 
= 
signInManager *
;* +
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[$$ 	
BindProperty$$	 
]$$ 
public%% 

InputModel%% 
Input%% 
{%%  !
get%%" %
;%%% &
set%%' *
;%%* +
}%%, -
public++ 
string++ 
	ReturnUrl++ 
{++  !
get++" %
;++% &
set++' *
;++* +
}++, -
public11 
class11 

InputModel11 
{22 	
[77 
BindProperty77 
]77 
[88 
Required88 
]88 
[99 
DataType99 
(99 
DataType99 
.99 
Text99 #
)99# $
]99$ %
[:: 
Display:: 
(:: 
Name:: 
=:: 
$str:: +
)::+ ,
]::, -
public;; 
string;; 
RecoveryCode;; &
{;;' (
get;;) ,
;;;, -
set;;. 1
;;;1 2
};;3 4
}<< 	
public>> 
async>> 
Task>> 
<>> 
IActionResult>> '
>>>' (

OnGetAsync>>) 3
(>>3 4
string>>4 :
	returnUrl>>; D
=>>E F
null>>G K
)>>K L
{?? 	
varAA 
userAA 
=AA 
awaitAA 
_signInManagerAA +
.AA+ ,/
#GetTwoFactorAuthenticationUserAsyncAA, O
(AAO P
)AAP Q
;AAQ R
ifBB 
(BB 
userBB 
==BB 
nullBB 
)BB 
{CC 
throwDD 
newDD %
InvalidOperationExceptionDD 3
(DD3 4
$"DD4 6
$strDD6 d
"DDd e
)DDe f
;DDf g
}EE 
	ReturnUrlGG 
=GG 
	returnUrlGG !
;GG! "
returnII 
PageII 
(II 
)II 
;II 
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL '
>LL' (
OnPostAsyncLL) 4
(LL4 5
stringLL5 ;
	returnUrlLL< E
=LLF G
nullLLH L
)LLL M
{MM 	
ifNN 
(NN 
!NN 

ModelStateNN 
.NN 
IsValidNN #
)NN# $
{OO 
returnPP 
PagePP 
(PP 
)PP 
;PP 
}QQ 
varSS 
userSS 
=SS 
awaitSS 
_signInManagerSS +
.SS+ ,/
#GetTwoFactorAuthenticationUserAsyncSS, O
(SSO P
)SSP Q
;SSQ R
ifTT 
(TT 
userTT 
==TT 
nullTT 
)TT 
{UU 
throwVV 
newVV %
InvalidOperationExceptionVV 3
(VV3 4
$"VV4 6
$strVV6 d
"VVd e
)VVe f
;VVf g
}WW 
varYY 
recoveryCodeYY 
=YY 
InputYY $
.YY$ %
RecoveryCodeYY% 1
.YY1 2
ReplaceYY2 9
(YY9 :
$strYY: =
,YY= >
stringYY? E
.YYE F
EmptyYYF K
)YYK L
;YYL M
var[[ 
result[[ 
=[[ 
await[[ 
_signInManager[[ -
.[[- .,
 TwoFactorRecoveryCodeSignInAsync[[. N
([[N O
recoveryCode[[O [
)[[[ \
;[[\ ]
var]] 
userId]] 
=]] 
await]] 
_userManager]] +
.]]+ ,
GetUserIdAsync]], :
(]]: ;
user]]; ?
)]]? @
;]]@ A
if__ 
(__ 
result__ 
.__ 
	Succeeded__  
)__  !
{`` 
_loggeraa 
.aa 
LogInformationaa &
(aa& '
$straa' `
,aa` a
useraab f
.aaf g
Idaag i
)aai j
;aaj k
returnbb 
LocalRedirectbb $
(bb$ %
	returnUrlbb% .
??bb/ 1
Urlbb2 5
.bb5 6
Contentbb6 =
(bb= >
$strbb> B
)bbB C
)bbC D
;bbD E
}cc 
ifdd 
(dd 
resultdd 
.dd 
IsLockedOutdd "
)dd" #
{ee 
_loggerff 
.ff 

LogWarningff "
(ff" #
$strff# =
)ff= >
;ff> ?
returngg 
RedirectToPagegg %
(gg% &
$strgg& 1
)gg1 2
;gg2 3
}hh 
elseii 
{jj 
_loggerkk 
.kk 

LogWarningkk "
(kk" #
$strkk# _
,kk_ `
userkka e
.kke f
Idkkf h
)kkh i
;kki j

ModelStatell 
.ll 
AddModelErrorll (
(ll( )
stringll) /
.ll/ 0
Emptyll0 5
,ll5 6
$strll7 W
)llW X
;llX Y
returnmm 
Pagemm 
(mm 
)mm 
;mm 
}nn 
}oo 	
}pp 
}qq ¢
lD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Logout.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
{ 
public 

class 
LogoutModel 
: 
	PageModel (
{ 
private 
readonly 
SignInManager &
<& '#
UniversityMVCWebAppUser' >
>> ?
_signInManager@ N
;N O
private 
readonly 
ILogger  
<  !
LogoutModel! ,
>, -
_logger. 5
;5 6
public 
LogoutModel 
( 
SignInManager (
<( )#
UniversityMVCWebAppUser) @
>@ A
signInManagerB O
,O P
ILoggerQ X
<X Y
LogoutModelY d
>d e
loggerf l
)l m
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnPost) /
(/ 0
string0 6
	returnUrl7 @
=A B
nullC G
)G H
{ 	
await 
_signInManager  
.  !
SignOutAsync! -
(- .
). /
;/ 0
_logger 
. 
LogInformation "
(" #
$str# 5
)5 6
;6 7
if 
( 
	returnUrl 
!= 
null !
)! "
{   
return!! 
LocalRedirect!! $
(!!$ %
	returnUrl!!% .
)!!. /
;!!/ 0
}"" 
else## 
{$$ 
return'' 
RedirectToPage'' %
(''% &
)''& '
;''' (
}(( 
})) 	
}** 
}++ ÷>
{D:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Manage\ChangePassword.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
.: ;
Manage; A
{ 
public 

class 
ChangePasswordModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
SignInManager &
<& '#
UniversityMVCWebAppUser' >
>> ?
_signInManager@ N
;N O
private 
readonly 
ILogger  
<  !
ChangePasswordModel! 4
>4 5
_logger6 =
;= >
public 
ChangePasswordModel "
(" #
UserManager 
< #
UniversityMVCWebAppUser /
>/ 0
userManager1 <
,< =
SignInManager 
< #
UniversityMVCWebAppUser 1
>1 2
signInManager3 @
,@ A
ILogger 
< 
ChangePasswordModel '
>' (
logger) /
)/ 0
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[$$ 	
BindProperty$$	 
]$$ 
public%% 

InputModel%% 
Input%% 
{%%  !
get%%" %
;%%% &
set%%' *
;%%* +
}%%, -
[++ 	
TempData++	 
]++ 
public,, 
string,, 
StatusMessage,, #
{,,$ %
get,,& )
;,,) *
set,,+ .
;,,. /
},,0 1
public22 
class22 

InputModel22 
{33 	
[88 
Required88 
]88 
[99 
DataType99 
(99 
DataType99 
.99 
Password99 '
)99' (
]99( )
[:: 
Display:: 
(:: 
Name:: 
=:: 
$str:: .
)::. /
]::/ 0
public;; 
string;; 
OldPassword;; %
{;;& '
get;;( +
;;;+ ,
set;;- 0
;;;0 1
};;2 3
[AA 
RequiredAA 
]AA 
[BB 
StringLengthBB 
(BB 
$numBB 
,BB 
ErrorMessageBB +
=BB, -
$strBB. l
,BBl m
MinimumLengthBBn {
=BB| }
$numBB~ 
)	BB Ä
]
BBÄ Å
[CC 
DataTypeCC 
(CC 
DataTypeCC 
.CC 
PasswordCC '
)CC' (
]CC( )
[DD 
DisplayDD 
(DD 
NameDD 
=DD 
$strDD *
)DD* +
]DD+ ,
publicEE 
stringEE 
NewPasswordEE %
{EE& '
getEE( +
;EE+ ,
setEE- 0
;EE0 1
}EE2 3
[KK 
DataTypeKK 
(KK 
DataTypeKK 
.KK 
PasswordKK '
)KK' (
]KK( )
[LL 
DisplayLL 
(LL 
NameLL 
=LL 
$strLL 2
)LL2 3
]LL3 4
[MM 
CompareMM 
(MM 
$strMM "
,MM" #
ErrorMessageMM$ 0
=MM1 2
$strMM3 m
)MMm n
]MMn o
publicNN 
stringNN 
ConfirmPasswordNN )
{NN* +
getNN, /
;NN/ 0
setNN1 4
;NN4 5
}NN6 7
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
IActionResultQQ '
>QQ' (

OnGetAsyncQQ) 3
(QQ3 4
)QQ4 5
{RR 	
varSS 
userSS 
=SS 
awaitSS 
_userManagerSS )
.SS) *
GetUserAsyncSS* 6
(SS6 7
UserSS7 ;
)SS; <
;SS< =
ifTT 
(TT 
userTT 
==TT 
nullTT 
)TT 
{UU 
returnVV 
NotFoundVV 
(VV  
$"VV  "
$strVV" ?
{VV? @
_userManagerVV@ L
.VVL M
	GetUserIdVVM V
(VVV W
UserVVW [
)VV[ \
}VV\ ]
$strVV] _
"VV_ `
)VV` a
;VVa b
}WW 
varYY 
hasPasswordYY 
=YY 
awaitYY #
_userManagerYY$ 0
.YY0 1
HasPasswordAsyncYY1 A
(YYA B
userYYB F
)YYF G
;YYG H
ifZZ 
(ZZ 
!ZZ 
hasPasswordZZ 
)ZZ 
{[[ 
return\\ 
RedirectToPage\\ %
(\\% &
$str\\& 5
)\\5 6
;\\6 7
}]] 
return__ 
Page__ 
(__ 
)__ 
;__ 
}`` 	
publicbb 
asyncbb 
Taskbb 
<bb 
IActionResultbb '
>bb' (
OnPostAsyncbb) 4
(bb4 5
)bb5 6
{cc 	
ifdd 
(dd 
!dd 

ModelStatedd 
.dd 
IsValiddd #
)dd# $
{ee 
returnff 
Pageff 
(ff 
)ff 
;ff 
}gg 
varii 
userii 
=ii 
awaitii 
_userManagerii )
.ii) *
GetUserAsyncii* 6
(ii6 7
Userii7 ;
)ii; <
;ii< =
ifjj 
(jj 
userjj 
==jj 
nulljj 
)jj 
{kk 
returnll 
NotFoundll 
(ll  
$"ll  "
$strll" ?
{ll? @
_userManagerll@ L
.llL M
	GetUserIdllM V
(llV W
UserllW [
)ll[ \
}ll\ ]
$strll] _
"ll_ `
)ll` a
;lla b
}mm 
varoo  
changePasswordResultoo $
=oo% &
awaitoo' ,
_userManageroo- 9
.oo9 :
ChangePasswordAsyncoo: M
(ooM N
userooN R
,ooR S
InputooT Y
.ooY Z
OldPasswordooZ e
,ooe f
Inputoog l
.ool m
NewPasswordoom x
)oox y
;ooy z
ifpp 
(pp 
!pp  
changePasswordResultpp %
.pp% &
	Succeededpp& /
)pp/ 0
{qq 
foreachrr 
(rr 
varrr 
errorrr "
inrr# % 
changePasswordResultrr& :
.rr: ;
Errorsrr; A
)rrA B
{ss 

ModelStatett 
.tt 
AddModelErrortt ,
(tt, -
stringtt- 3
.tt3 4
Emptytt4 9
,tt9 :
errortt; @
.tt@ A
DescriptionttA L
)ttL M
;ttM N
}uu 
returnvv 
Pagevv 
(vv 
)vv 
;vv 
}ww 
awaityy 
_signInManageryy  
.yy  !
RefreshSignInAsyncyy! 3
(yy3 4
useryy4 8
)yy8 9
;yy9 :
_loggerzz 
.zz 
LogInformationzz "
(zz" #
$strzz# N
)zzN O
;zzO P
StatusMessage{{ 
={{ 
$str{{ =
;{{= >
return}} 
RedirectToPage}} !
(}}! "
)}}" #
;}}# $
}~~ 	
} 
}ÄÄ ˙2
D:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Manage\DeletePersonalData.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
.: ;
Manage; A
{ 
public 

class #
DeletePersonalDataModel (
:) *
	PageModel+ 4
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
SignInManager &
<& '#
UniversityMVCWebAppUser' >
>> ?
_signInManager@ N
;N O
private 
readonly 
ILogger  
<  !#
DeletePersonalDataModel! 8
>8 9
_logger: A
;A B
public #
DeletePersonalDataModel &
(& '
UserManager 
< #
UniversityMVCWebAppUser /
>/ 0
userManager1 <
,< =
SignInManager 
< #
UniversityMVCWebAppUser 1
>1 2
signInManager3 @
,@ A
ILogger 
< #
DeletePersonalDataModel +
>+ ,
logger- 3
)3 4
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[$$ 	
BindProperty$$	 
]$$ 
public%% 

InputModel%% 
Input%% 
{%%  !
get%%" %
;%%% &
set%%' *
;%%* +
}%%, -
public++ 
class++ 

InputModel++ 
{,, 	
[11 
Required11 
]11 
[22 
DataType22 
(22 
DataType22 
.22 
Password22 '
)22' (
]22( )
public33 
string33 
Password33 "
{33# $
get33% (
;33( )
set33* -
;33- .
}33/ 0
}44 	
public:: 
bool:: 
RequirePassword:: #
{::$ %
get::& )
;::) *
set::+ .
;::. /
}::0 1
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (
OnGet<<) .
(<<. /
)<</ 0
{== 	
var>> 
user>> 
=>> 
await>> 
_userManager>> )
.>>) *
GetUserAsync>>* 6
(>>6 7
User>>7 ;
)>>; <
;>>< =
if?? 
(?? 
user?? 
==?? 
null?? 
)?? 
{@@ 
returnAA 
NotFoundAA 
(AA  
$"AA  "
$strAA" ?
{AA? @
_userManagerAA@ L
.AAL M
	GetUserIdAAM V
(AAV W
UserAAW [
)AA[ \
}AA\ ]
$strAA] _
"AA_ `
)AA` a
;AAa b
}BB 
RequirePasswordDD 
=DD 
awaitDD #
_userManagerDD$ 0
.DD0 1
HasPasswordAsyncDD1 A
(DDA B
userDDB F
)DDF G
;DDG H
returnEE 
PageEE 
(EE 
)EE 
;EE 
}FF 	
publicHH 
asyncHH 
TaskHH 
<HH 
IActionResultHH '
>HH' (
OnPostAsyncHH) 4
(HH4 5
)HH5 6
{II 	
varJJ 
userJJ 
=JJ 
awaitJJ 
_userManagerJJ )
.JJ) *
GetUserAsyncJJ* 6
(JJ6 7
UserJJ7 ;
)JJ; <
;JJ< =
ifKK 
(KK 
userKK 
==KK 
nullKK 
)KK 
{LL 
returnMM 
NotFoundMM 
(MM  
$"MM  "
$strMM" ?
{MM? @
_userManagerMM@ L
.MML M
	GetUserIdMMM V
(MMV W
UserMMW [
)MM[ \
}MM\ ]
$strMM] _
"MM_ `
)MM` a
;MMa b
}NN 
RequirePasswordPP 
=PP 
awaitPP #
_userManagerPP$ 0
.PP0 1
HasPasswordAsyncPP1 A
(PPA B
userPPB F
)PPF G
;PPG H
ifQQ 
(QQ 
RequirePasswordQQ 
)QQ  
{RR 
ifSS 
(SS 
!SS 
awaitSS 
_userManagerSS '
.SS' (
CheckPasswordAsyncSS( :
(SS: ;
userSS; ?
,SS? @
InputSSA F
.SSF G
PasswordSSG O
)SSO P
)SSP Q
{TT 

ModelStateUU 
.UU 
AddModelErrorUU ,
(UU, -
stringUU- 3
.UU3 4
EmptyUU4 9
,UU9 :
$strUU; P
)UUP Q
;UUQ R
returnVV 
PageVV 
(VV  
)VV  !
;VV! "
}WW 
}XX 
varZZ 
resultZZ 
=ZZ 
awaitZZ 
_userManagerZZ +
.ZZ+ ,
DeleteAsyncZZ, 7
(ZZ7 8
userZZ8 <
)ZZ< =
;ZZ= >
var[[ 
userId[[ 
=[[ 
await[[ 
_userManager[[ +
.[[+ ,
GetUserIdAsync[[, :
([[: ;
user[[; ?
)[[? @
;[[@ A
if\\ 
(\\ 
!\\ 
result\\ 
.\\ 
	Succeeded\\ !
)\\! "
{]] 
throw^^ 
new^^ %
InvalidOperationException^^ 3
(^^3 4
$"^^4 6
$str^^6 ^
"^^^ _
)^^_ `
;^^` a
}__ 
awaitaa 
_signInManageraa  
.aa  !
SignOutAsyncaa! -
(aa- .
)aa. /
;aa/ 0
_loggercc 
.cc 
LogInformationcc "
(cc" #
$strcc# P
,ccP Q
userIdccR X
)ccX Y
;ccY Z
returnee 
Redirectee 
(ee 
$stree  
)ee  !
;ee! "
}ff 	
}gg 
}hh ‚$
wD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Manage\Disable2fa.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
.: ;
Manage; A
{ 
public 

class 
Disable2faModel  
:! "
	PageModel# ,
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
ILogger  
<  !
Disable2faModel! 0
>0 1
_logger2 9
;9 :
public 
Disable2faModel 
( 
UserManager 
< #
UniversityMVCWebAppUser /
>/ 0
userManager1 <
,< =
ILogger 
< 
Disable2faModel #
># $
logger% +
)+ ,
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[   	
TempData  	 
]   
public!! 
string!! 
StatusMessage!! #
{!!$ %
get!!& )
;!!) *
set!!+ .
;!!. /
}!!0 1
public## 
async## 
Task## 
<## 
IActionResult## '
>##' (
OnGet##) .
(##. /
)##/ 0
{$$ 	
var%% 
user%% 
=%% 
await%% 
_userManager%% )
.%%) *
GetUserAsync%%* 6
(%%6 7
User%%7 ;
)%%; <
;%%< =
if&& 
(&& 
user&& 
==&& 
null&& 
)&& 
{'' 
return(( 
NotFound(( 
(((  
$"((  "
$str((" ?
{((? @
_userManager((@ L
.((L M
	GetUserId((M V
(((V W
User((W [
)(([ \
}((\ ]
$str((] _
"((_ `
)((` a
;((a b
})) 
if++ 
(++ 
!++ 
await++ 
_userManager++ #
.++# $$
GetTwoFactorEnabledAsync++$ <
(++< =
user++= A
)++A B
)++B C
{,, 
throw-- 
new-- %
InvalidOperationException-- 3
(--3 4
$"--4 6
$str--6 p
"--p q
)--q r
;--r s
}.. 
return00 
Page00 
(00 
)00 
;00 
}11 	
public33 
async33 
Task33 
<33 
IActionResult33 '
>33' (
OnPostAsync33) 4
(334 5
)335 6
{44 	
var55 
user55 
=55 
await55 
_userManager55 )
.55) *
GetUserAsync55* 6
(556 7
User557 ;
)55; <
;55< =
if66 
(66 
user66 
==66 
null66 
)66 
{77 
return88 
NotFound88 
(88  
$"88  "
$str88" ?
{88? @
_userManager88@ L
.88L M
	GetUserId88M V
(88V W
User88W [
)88[ \
}88\ ]
$str88] _
"88_ `
)88` a
;88a b
}99 
var;; 
disable2faResult;;  
=;;! "
await;;# (
_userManager;;) 5
.;;5 6$
SetTwoFactorEnabledAsync;;6 N
(;;N O
user;;O S
,;;S T
false;;U Z
);;Z [
;;;[ \
if<< 
(<< 
!<< 
disable2faResult<< !
.<<! "
	Succeeded<<" +
)<<+ ,
{== 
throw>> 
new>> %
InvalidOperationException>> 3
(>>3 4
$">>4 6
$str>>6 ^
">>^ _
)>>_ `
;>>` a
}?? 
_loggerAA 
.AA 
LogInformationAA "
(AA" #
$strAA# N
,AAN O
_userManagerAAP \
.AA\ ]
	GetUserIdAA] f
(AAf g
UserAAg k
)AAk l
)AAl m
;AAm n
StatusMessageBB 
=BB 
$strBB m
;BBm n
returnCC 
RedirectToPageCC !
(CC! "
$strCC" =
)CC= >
;CC> ?
}DD 	
}EE 
}FF ª*
ÅD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Manage\DownloadPersonalData.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
.: ;
Manage; A
{ 
public 

class %
DownloadPersonalDataModel *
:+ ,
	PageModel- 6
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
ILogger  
<  !%
DownloadPersonalDataModel! :
>: ;
_logger< C
;C D
public %
DownloadPersonalDataModel (
(( )
UserManager 
< #
UniversityMVCWebAppUser /
>/ 0
userManager1 <
,< =
ILogger 
< %
DownloadPersonalDataModel -
>- .
logger/ 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
public   
IActionResult   
OnGet   "
(  " #
)  # $
{!! 	
return"" 
NotFound"" 
("" 
)"" 
;"" 
}## 	
public%% 
async%% 
Task%% 
<%% 
IActionResult%% '
>%%' (
OnPostAsync%%) 4
(%%4 5
)%%5 6
{&& 	
var'' 
user'' 
='' 
await'' 
_userManager'' )
.'') *
GetUserAsync''* 6
(''6 7
User''7 ;
)''; <
;''< =
if(( 
((( 
user(( 
==(( 
null(( 
)(( 
{)) 
return** 
NotFound** 
(**  
$"**  "
$str**" ?
{**? @
_userManager**@ L
.**L M
	GetUserId**M V
(**V W
User**W [
)**[ \
}**\ ]
$str**] _
"**_ `
)**` a
;**a b
}++ 
_logger-- 
.-- 
LogInformation-- "
(--" #
$str--# [
,--[ \
_userManager--] i
.--i j
	GetUserId--j s
(--s t
User--t x
)--x y
)--y z
;--z {
var00 
personalData00 
=00 
new00 "

Dictionary00# -
<00- .
string00. 4
,004 5
string006 <
>00< =
(00= >
)00> ?
;00? @
var11 
personalDataProps11 !
=11" #
typeof11$ *
(11* +#
UniversityMVCWebAppUser11+ B
)11B C
.11C D
GetProperties11D Q
(11Q R
)11R S
.11S T
Where11T Y
(11Y Z
prop22  
=>22! #
	Attribute22$ -
.22- .
	IsDefined22. 7
(227 8
prop228 <
,22< =
typeof22> D
(22D E!
PersonalDataAttribute22E Z
)22Z [
)22[ \
)22\ ]
;22] ^
foreach33 
(33 
var33 
p33 
in33 
personalDataProps33 /
)33/ 0
{44 
personalData55 
.55 
Add55  
(55  !
p55! "
.55" #
Name55# '
,55' (
p55) *
.55* +
GetValue55+ 3
(553 4
user554 8
)558 9
?559 :
.55: ;
ToString55; C
(55C D
)55D E
??55F H
$str55I O
)55O P
;55P Q
}66 
var88 
logins88 
=88 
await88 
_userManager88 +
.88+ ,
GetLoginsAsync88, :
(88: ;
user88; ?
)88? @
;88@ A
foreach99 
(99 
var99 
l99 
in99 
logins99 $
)99$ %
{:: 
personalData;; 
.;; 
Add;;  
(;;  !
$";;! #
{;;# $
l;;$ %
.;;% &
LoginProvider;;& 3
};;3 4
$str;;4 P
";;P Q
,;;Q R
l;;S T
.;;T U
ProviderKey;;U `
);;` a
;;;a b
}<< 
personalData>> 
.>> 
Add>> 
(>> 
$">> 
$str>> 0
">>0 1
,>>1 2
await>>3 8
_userManager>>9 E
.>>E F$
GetAuthenticatorKeyAsync>>F ^
(>>^ _
user>>_ c
)>>c d
)>>d e
;>>e f
Response@@ 
.@@ 
Headers@@ 
.@@ 
Add@@  
(@@  !
$str@@! 6
,@@6 7
$str@@8 `
)@@` a
;@@a b
returnAA 
newAA 
FileContentResultAA (
(AA( )
JsonSerializerAA) 7
.AA7 8 
SerializeToUtf8BytesAA8 L
(AAL M
personalDataAAM Y
)AAY Z
,AAZ [
$strAA\ n
)AAn o
;AAo p
}BB 	
}CC 
}DD áa
rD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Manage\Email.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
.: ;
Manage; A
{ 
public 

class 

EmailModel 
: 
	PageModel '
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
SignInManager &
<& '#
UniversityMVCWebAppUser' >
>> ?
_signInManager@ N
;N O
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 

EmailModel 
( 
UserManager 
< #
UniversityMVCWebAppUser /
>/ 0
userManager1 <
,< =
SignInManager 
< #
UniversityMVCWebAppUser 1
>1 2
signInManager3 @
,@ A
IEmailSender 
emailSender $
)$ %
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_emailSender   
=   
emailSender   &
;  & '
}!! 	
public'' 
string'' 
Email'' 
{'' 
get'' !
;''! "
set''# &
;''& '
}''( )
public-- 
bool-- 
IsEmailConfirmed-- $
{--% &
get--' *
;--* +
set--, /
;--/ 0
}--1 2
[33 	
TempData33	 
]33 
public44 
string44 
StatusMessage44 #
{44$ %
get44& )
;44) *
set44+ .
;44. /
}440 1
[:: 	
BindProperty::	 
]:: 
public;; 

InputModel;; 
Input;; 
{;;  !
get;;" %
;;;% &
set;;' *
;;;* +
};;, -
publicAA 
classAA 

InputModelAA 
{BB 	
[GG 
RequiredGG 
]GG 
[HH 
EmailAddressHH 
]HH 
[II 
DisplayII 
(II 
NameII 
=II 
$strII '
)II' (
]II( )
publicJJ 
stringJJ 
NewEmailJJ "
{JJ# $
getJJ% (
;JJ( )
setJJ* -
;JJ- .
}JJ/ 0
}KK 	
privateMM 
asyncMM 
TaskMM 
	LoadAsyncMM $
(MM$ %#
UniversityMVCWebAppUserMM% <
userMM= A
)MMA B
{NN 	
varOO 
emailOO 
=OO 
awaitOO 
_userManagerOO *
.OO* +
GetEmailAsyncOO+ 8
(OO8 9
userOO9 =
)OO= >
;OO> ?
EmailPP 
=PP 
emailPP 
;PP 
InputRR 
=RR 
newRR 

InputModelRR "
{SS 
NewEmailTT 
=TT 
emailTT  
,TT  !
}UU 
;UU 
IsEmailConfirmedWW 
=WW 
awaitWW $
_userManagerWW% 1
.WW1 2!
IsEmailConfirmedAsyncWW2 G
(WWG H
userWWH L
)WWL M
;WWM N
}XX 	
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
IActionResultZZ '
>ZZ' (

OnGetAsyncZZ) 3
(ZZ3 4
)ZZ4 5
{[[ 	
var\\ 
user\\ 
=\\ 
await\\ 
_userManager\\ )
.\\) *
GetUserAsync\\* 6
(\\6 7
User\\7 ;
)\\; <
;\\< =
if]] 
(]] 
user]] 
==]] 
null]] 
)]] 
{^^ 
return__ 
NotFound__ 
(__  
$"__  "
$str__" ?
{__? @
_userManager__@ L
.__L M
	GetUserId__M V
(__V W
User__W [
)__[ \
}__\ ]
$str__] _
"___ `
)__` a
;__a b
}`` 
awaitbb 
	LoadAsyncbb 
(bb 
userbb  
)bb  !
;bb! "
returncc 
Pagecc 
(cc 
)cc 
;cc 
}dd 	
publicff 
asyncff 
Taskff 
<ff 
IActionResultff '
>ff' ("
OnPostChangeEmailAsyncff) ?
(ff? @
)ff@ A
{gg 	
varhh 
userhh 
=hh 
awaithh 
_userManagerhh )
.hh) *
GetUserAsynchh* 6
(hh6 7
Userhh7 ;
)hh; <
;hh< =
ifii 
(ii 
userii 
==ii 
nullii 
)ii 
{jj 
returnkk 
NotFoundkk 
(kk  
$"kk  "
$strkk" ?
{kk? @
_userManagerkk@ L
.kkL M
	GetUserIdkkM V
(kkV W
UserkkW [
)kk[ \
}kk\ ]
$strkk] _
"kk_ `
)kk` a
;kka b
}ll 
ifnn 
(nn 
!nn 

ModelStatenn 
.nn 
IsValidnn #
)nn# $
{oo 
awaitpp 
	LoadAsyncpp 
(pp  
userpp  $
)pp$ %
;pp% &
returnqq 
Pageqq 
(qq 
)qq 
;qq 
}rr 
vartt 
emailtt 
=tt 
awaittt 
_userManagertt *
.tt* +
GetEmailAsynctt+ 8
(tt8 9
usertt9 =
)tt= >
;tt> ?
ifuu 
(uu 
Inputuu 
.uu 
NewEmailuu 
!=uu !
emailuu" '
)uu' (
{vv 
varww 
userIdww 
=ww 
awaitww "
_userManagerww# /
.ww/ 0
GetUserIdAsyncww0 >
(ww> ?
userww? C
)wwC D
;wwD E
varxx 
codexx 
=xx 
awaitxx  
_userManagerxx! -
.xx- .)
GenerateChangeEmailTokenAsyncxx. K
(xxK L
userxxL P
,xxP Q
InputxxR W
.xxW X
NewEmailxxX `
)xx` a
;xxa b
codeyy 
=yy 
WebEncodersyy "
.yy" #
Base64UrlEncodeyy# 2
(yy2 3
Encodingyy3 ;
.yy; <
UTF8yy< @
.yy@ A
GetBytesyyA I
(yyI J
codeyyJ N
)yyN O
)yyO P
;yyP Q
varzz 
callbackUrlzz 
=zz  !
Urlzz" %
.zz% &
Pagezz& *
(zz* +
$str{{ 1
,{{1 2
pageHandler|| 
:||  
null||! %
,||% &
values}} 
:}} 
new}} 
{}}  !
area}}" &
=}}' (
$str}}) 3
,}}3 4
userId}}5 ;
=}}< =
userId}}> D
,}}D E
email}}F K
=}}L M
Input}}N S
.}}S T
NewEmail}}T \
,}}\ ]
code}}^ b
=}}c d
code}}e i
}}}j k
,}}k l
protocol~~ 
:~~ 
Request~~ %
.~~% &
Scheme~~& ,
)~~, -
;~~- .
await 
_emailSender "
." #
SendEmailAsync# 1
(1 2
Input
ÄÄ 
.
ÄÄ 
NewEmail
ÄÄ "
,
ÄÄ" #
$str
ÅÅ (
,
ÅÅ( )
$"
ÇÇ 
$str
ÇÇ >
{
ÇÇ> ?
HtmlEncoder
ÇÇ? J
.
ÇÇJ K
Default
ÇÇK R
.
ÇÇR S
Encode
ÇÇS Y
(
ÇÇY Z
callbackUrl
ÇÇZ e
)
ÇÇe f
}
ÇÇf g
$str
ÇÇg {
"
ÇÇ{ |
)
ÇÇ| }
;
ÇÇ} ~
StatusMessage
ÑÑ 
=
ÑÑ 
$str
ÑÑ  b
;
ÑÑb c
return
ÖÖ 
RedirectToPage
ÖÖ %
(
ÖÖ% &
)
ÖÖ& '
;
ÖÖ' (
}
ÜÜ 
StatusMessage
àà 
=
àà 
$str
àà 6
;
àà6 7
return
ââ 
RedirectToPage
ââ !
(
ââ! "
)
ââ" #
;
ââ# $
}
ää 	
public
åå 
async
åå 
Task
åå 
<
åå 
IActionResult
åå '
>
åå' (.
 OnPostSendVerificationEmailAsync
åå) I
(
ååI J
)
ååJ K
{
çç 	
var
éé 
user
éé 
=
éé 
await
éé 
_userManager
éé )
.
éé) *
GetUserAsync
éé* 6
(
éé6 7
User
éé7 ;
)
éé; <
;
éé< =
if
èè 
(
èè 
user
èè 
==
èè 
null
èè 
)
èè 
{
êê 
return
ëë 
NotFound
ëë 
(
ëë  
$"
ëë  "
$str
ëë" ?
{
ëë? @
_userManager
ëë@ L
.
ëëL M
	GetUserId
ëëM V
(
ëëV W
User
ëëW [
)
ëë[ \
}
ëë\ ]
$str
ëë] _
"
ëë_ `
)
ëë` a
;
ëëa b
}
íí 
if
îî 
(
îî 
!
îî 

ModelState
îî 
.
îî 
IsValid
îî #
)
îî# $
{
ïï 
await
ññ 
	LoadAsync
ññ 
(
ññ  
user
ññ  $
)
ññ$ %
;
ññ% &
return
óó 
Page
óó 
(
óó 
)
óó 
;
óó 
}
òò 
var
öö 
userId
öö 
=
öö 
await
öö 
_userManager
öö +
.
öö+ ,
GetUserIdAsync
öö, :
(
öö: ;
user
öö; ?
)
öö? @
;
öö@ A
var
õõ 
email
õõ 
=
õõ 
await
õõ 
_userManager
õõ *
.
õõ* +
GetEmailAsync
õõ+ 8
(
õõ8 9
user
õõ9 =
)
õõ= >
;
õõ> ?
var
úú 
code
úú 
=
úú 
await
úú 
_userManager
úú )
.
úú) *1
#GenerateEmailConfirmationTokenAsync
úú* M
(
úúM N
user
úúN R
)
úúR S
;
úúS T
code
ùù 
=
ùù 
WebEncoders
ùù 
.
ùù 
Base64UrlEncode
ùù .
(
ùù. /
Encoding
ùù/ 7
.
ùù7 8
UTF8
ùù8 <
.
ùù< =
GetBytes
ùù= E
(
ùùE F
code
ùùF J
)
ùùJ K
)
ùùK L
;
ùùL M
var
ûû 
callbackUrl
ûû 
=
ûû 
Url
ûû !
.
ûû! "
Page
ûû" &
(
ûû& '
$str
üü '
,
üü' (
pageHandler
†† 
:
†† 
null
†† !
,
††! "
values
°° 
:
°° 
new
°° 
{
°° 
area
°° "
=
°°# $
$str
°°% /
,
°°/ 0
userId
°°1 7
=
°°8 9
userId
°°: @
,
°°@ A
code
°°B F
=
°°G H
code
°°I M
}
°°N O
,
°°O P
protocol
¢¢ 
:
¢¢ 
Request
¢¢ !
.
¢¢! "
Scheme
¢¢" (
)
¢¢( )
;
¢¢) *
await
££ 
_emailSender
££ 
.
££ 
SendEmailAsync
££ -
(
££- .
email
§§ 
,
§§ 
$str
•• $
,
••$ %
$"
¶¶ 
$str
¶¶ :
{
¶¶: ;
HtmlEncoder
¶¶; F
.
¶¶F G
Default
¶¶G N
.
¶¶N O
Encode
¶¶O U
(
¶¶U V
callbackUrl
¶¶V a
)
¶¶a b
}
¶¶b c
$str
¶¶c w
"
¶¶w x
)
¶¶x y
;
¶¶y z
StatusMessage
®® 
=
®® 
$str
®® O
;
®®O P
return
©© 
RedirectToPage
©© !
(
©©! "
)
©©" #
;
©©# $
}
™™ 	
}
´´ 
}¨¨ «g
ÄD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Manage\EnableAuthenticator.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
.: ;
Manage; A
{ 
public 

class $
EnableAuthenticatorModel )
:* +
	PageModel, 5
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
ILogger  
<  !$
EnableAuthenticatorModel! 9
>9 :
_logger; B
;B C
private 
readonly 

UrlEncoder #
_urlEncoder$ /
;/ 0
private 
const 
string "
AuthenticatorUriFormat 3
=4 5
$str6 m
;m n
public $
EnableAuthenticatorModel '
(' (
UserManager 
< #
UniversityMVCWebAppUser /
>/ 0
userManager1 <
,< =
ILogger 
< $
EnableAuthenticatorModel ,
>, -
logger. 4
,4 5

UrlEncoder 

urlEncoder !
)! "
{   	
_userManager!! 
=!! 
userManager!! &
;!!& '
_logger"" 
="" 
logger"" 
;"" 
_urlEncoder## 
=## 

urlEncoder## $
;##$ %
}$$ 	
public** 
string** 
	SharedKey** 
{**  !
get**" %
;**% &
set**' *
;*** +
}**, -
public00 
string00 
AuthenticatorUri00 &
{00' (
get00) ,
;00, -
set00. 1
;001 2
}003 4
[66 	
TempData66	 
]66 
public77 
string77 
[77 
]77 
RecoveryCodes77 %
{77& '
get77( +
;77+ ,
set77- 0
;770 1
}772 3
[== 	
TempData==	 
]== 
public>> 
string>> 
StatusMessage>> #
{>>$ %
get>>& )
;>>) *
set>>+ .
;>>. /
}>>0 1
[DD 	
BindPropertyDD	 
]DD 
publicEE 

InputModelEE 
InputEE 
{EE  !
getEE" %
;EE% &
setEE' *
;EE* +
}EE, -
publicKK 
classKK 

InputModelKK 
{LL 	
[QQ 
RequiredQQ 
]QQ 
[RR 
StringLengthRR 
(RR 
$numRR 
,RR 
ErrorMessageRR )
=RR* +
$strRR, j
,RRj k
MinimumLengthRRl y
=RRz {
$numRR| }
)RR} ~
]RR~ 
[SS 
DataTypeSS 
(SS 
DataTypeSS 
.SS 
TextSS #
)SS# $
]SS$ %
[TT 
DisplayTT 
(TT 
NameTT 
=TT 
$strTT /
)TT/ 0
]TT0 1
publicUU 
stringUU 
CodeUU 
{UU  
getUU! $
;UU$ %
setUU& )
;UU) *
}UU+ ,
}VV 	
publicXX 
asyncXX 
TaskXX 
<XX 
IActionResultXX '
>XX' (

OnGetAsyncXX) 3
(XX3 4
)XX4 5
{YY 	
varZZ 
userZZ 
=ZZ 
awaitZZ 
_userManagerZZ )
.ZZ) *
GetUserAsyncZZ* 6
(ZZ6 7
UserZZ7 ;
)ZZ; <
;ZZ< =
if[[ 
([[ 
user[[ 
==[[ 
null[[ 
)[[ 
{\\ 
return]] 
NotFound]] 
(]]  
$"]]  "
$str]]" ?
{]]? @
_userManager]]@ L
.]]L M
	GetUserId]]M V
(]]V W
User]]W [
)]][ \
}]]\ ]
$str]]] _
"]]_ `
)]]` a
;]]a b
}^^ 
await`` *
LoadSharedKeyAndQrCodeUriAsync`` 0
(``0 1
user``1 5
)``5 6
;``6 7
returnbb 
Pagebb 
(bb 
)bb 
;bb 
}cc 	
publicee 
asyncee 
Taskee 
<ee 
IActionResultee '
>ee' (
OnPostAsyncee) 4
(ee4 5
)ee5 6
{ff 	
vargg 
usergg 
=gg 
awaitgg 
_userManagergg )
.gg) *
GetUserAsyncgg* 6
(gg6 7
Usergg7 ;
)gg; <
;gg< =
ifhh 
(hh 
userhh 
==hh 
nullhh 
)hh 
{ii 
returnjj 
NotFoundjj 
(jj  
$"jj  "
$strjj" ?
{jj? @
_userManagerjj@ L
.jjL M
	GetUserIdjjM V
(jjV W
UserjjW [
)jj[ \
}jj\ ]
$strjj] _
"jj_ `
)jj` a
;jja b
}kk 
ifmm 
(mm 
!mm 

ModelStatemm 
.mm 
IsValidmm #
)mm# $
{nn 
awaitoo *
LoadSharedKeyAndQrCodeUriAsyncoo 4
(oo4 5
useroo5 9
)oo9 :
;oo: ;
returnpp 
Pagepp 
(pp 
)pp 
;pp 
}qq 
vartt 
verificationCodett  
=tt! "
Inputtt# (
.tt( )
Codett) -
.tt- .
Replacett. 5
(tt5 6
$strtt6 9
,tt9 :
stringtt; A
.ttA B
EmptyttB G
)ttG H
.ttH I
ReplacettI P
(ttP Q
$strttQ T
,ttT U
stringttV \
.tt\ ]
Emptytt] b
)ttb c
;ttc d
varvv 
is2faTokenValidvv 
=vv  !
awaitvv" '
_userManagervv( 4
.vv4 5%
VerifyTwoFactorTokenAsyncvv5 N
(vvN O
userww 
,ww 
_userManagerww "
.ww" #
Optionsww# *
.ww* +
Tokensww+ 1
.ww1 2&
AuthenticatorTokenProviderww2 L
,wwL M
verificationCodewwN ^
)ww^ _
;ww_ `
ifyy 
(yy 
!yy 
is2faTokenValidyy  
)yy  !
{zz 

ModelState{{ 
.{{ 
AddModelError{{ (
({{( )
$str{{) 5
,{{5 6
$str{{7 V
){{V W
;{{W X
await|| *
LoadSharedKeyAndQrCodeUriAsync|| 4
(||4 5
user||5 9
)||9 :
;||: ;
return}} 
Page}} 
(}} 
)}} 
;}} 
}~~ 
await
ÄÄ 
_userManager
ÄÄ 
.
ÄÄ &
SetTwoFactorEnabledAsync
ÄÄ 7
(
ÄÄ7 8
user
ÄÄ8 <
,
ÄÄ< =
true
ÄÄ> B
)
ÄÄB C
;
ÄÄC D
var
ÅÅ 
userId
ÅÅ 
=
ÅÅ 
await
ÅÅ 
_userManager
ÅÅ +
.
ÅÅ+ ,
GetUserIdAsync
ÅÅ, :
(
ÅÅ: ;
user
ÅÅ; ?
)
ÅÅ? @
;
ÅÅ@ A
_logger
ÇÇ 
.
ÇÇ 
LogInformation
ÇÇ "
(
ÇÇ" #
$str
ÇÇ# g
,
ÇÇg h
userId
ÇÇi o
)
ÇÇo p
;
ÇÇp q
StatusMessage
ÑÑ 
=
ÑÑ 
$str
ÑÑ G
;
ÑÑG H
if
ÜÜ 
(
ÜÜ 
await
ÜÜ 
_userManager
ÜÜ "
.
ÜÜ" #%
CountRecoveryCodesAsync
ÜÜ# :
(
ÜÜ: ;
user
ÜÜ; ?
)
ÜÜ? @
==
ÜÜA C
$num
ÜÜD E
)
ÜÜE F
{
áá 
var
àà 
recoveryCodes
àà !
=
àà" #
await
àà$ )
_userManager
àà* 6
.
àà6 74
&GenerateNewTwoFactorRecoveryCodesAsync
àà7 ]
(
àà] ^
user
àà^ b
,
ààb c
$num
ààd f
)
ààf g
;
ààg h
RecoveryCodes
ââ 
=
ââ 
recoveryCodes
ââ  -
.
ââ- .
ToArray
ââ. 5
(
ââ5 6
)
ââ6 7
;
ââ7 8
return
ää 
RedirectToPage
ää %
(
ää% &
$str
ää& ;
)
ää; <
;
ää< =
}
ãã 
else
åå 
{
çç 
return
éé 
RedirectToPage
éé %
(
éé% &
$str
éé& A
)
ééA B
;
ééB C
}
èè 
}
êê 	
private
íí 
async
íí 
Task
íí ,
LoadSharedKeyAndQrCodeUriAsync
íí 9
(
íí9 :%
UniversityMVCWebAppUser
íí: Q
user
ííR V
)
ííV W
{
ìì 	
var
ïï 
unformattedKey
ïï 
=
ïï  
await
ïï! &
_userManager
ïï' 3
.
ïï3 4&
GetAuthenticatorKeyAsync
ïï4 L
(
ïïL M
user
ïïM Q
)
ïïQ R
;
ïïR S
if
ññ 
(
ññ 
string
ññ 
.
ññ 
IsNullOrEmpty
ññ $
(
ññ$ %
unformattedKey
ññ% 3
)
ññ3 4
)
ññ4 5
{
óó 
await
òò 
_userManager
òò "
.
òò" #(
ResetAuthenticatorKeyAsync
òò# =
(
òò= >
user
òò> B
)
òòB C
;
òòC D
unformattedKey
ôô 
=
ôô  
await
ôô! &
_userManager
ôô' 3
.
ôô3 4&
GetAuthenticatorKeyAsync
ôô4 L
(
ôôL M
user
ôôM Q
)
ôôQ R
;
ôôR S
}
öö 
	SharedKey
úú 
=
úú 
	FormatKey
úú !
(
úú! "
unformattedKey
úú" 0
)
úú0 1
;
úú1 2
var
ûû 
email
ûû 
=
ûû 
await
ûû 
_userManager
ûû *
.
ûû* +
GetEmailAsync
ûû+ 8
(
ûû8 9
user
ûû9 =
)
ûû= >
;
ûû> ?
AuthenticatorUri
üü 
=
üü 
GenerateQrCodeUri
üü 0
(
üü0 1
email
üü1 6
,
üü6 7
unformattedKey
üü8 F
)
üüF G
;
üüG H
}
†† 	
private
¢¢ 
string
¢¢ 
	FormatKey
¢¢  
(
¢¢  !
string
¢¢! '
unformattedKey
¢¢( 6
)
¢¢6 7
{
££ 	
var
§§ 
result
§§ 
=
§§ 
new
§§ 
StringBuilder
§§ *
(
§§* +
)
§§+ ,
;
§§, -
int
•• 
currentPosition
•• 
=
••  !
$num
••" #
;
••# $
while
¶¶ 
(
¶¶ 
currentPosition
¶¶ "
+
¶¶# $
$num
¶¶% &
<
¶¶' (
unformattedKey
¶¶) 7
.
¶¶7 8
Length
¶¶8 >
)
¶¶> ?
{
ßß 
result
®® 
.
®® 
Append
®® 
(
®® 
unformattedKey
®® ,
.
®®, -
AsSpan
®®- 3
(
®®3 4
currentPosition
®®4 C
,
®®C D
$num
®®E F
)
®®F G
)
®®G H
.
®®H I
Append
®®I O
(
®®O P
$char
®®P S
)
®®S T
;
®®T U
currentPosition
©© 
+=
©©  "
$num
©©# $
;
©©$ %
}
™™ 
if
´´ 
(
´´ 
currentPosition
´´ 
<
´´  !
unformattedKey
´´" 0
.
´´0 1
Length
´´1 7
)
´´7 8
{
¨¨ 
result
≠≠ 
.
≠≠ 
Append
≠≠ 
(
≠≠ 
unformattedKey
≠≠ ,
.
≠≠, -
AsSpan
≠≠- 3
(
≠≠3 4
currentPosition
≠≠4 C
)
≠≠C D
)
≠≠D E
;
≠≠E F
}
ÆÆ 
return
∞∞ 
result
∞∞ 
.
∞∞ 
ToString
∞∞ "
(
∞∞" #
)
∞∞# $
.
∞∞$ %
ToLowerInvariant
∞∞% 5
(
∞∞5 6
)
∞∞6 7
;
∞∞7 8
}
±± 	
private
≥≥ 
string
≥≥ 
GenerateQrCodeUri
≥≥ (
(
≥≥( )
string
≥≥) /
email
≥≥0 5
,
≥≥5 6
string
≥≥7 =
unformattedKey
≥≥> L
)
≥≥L M
{
¥¥ 	
return
µµ 
string
µµ 
.
µµ 
Format
µµ  
(
µµ  !
CultureInfo
∂∂ 
.
∂∂ 
InvariantCulture
∂∂ ,
,
∂∂, -$
AuthenticatorUriFormat
∑∑ &
,
∑∑& '
_urlEncoder
∏∏ 
.
∏∏ 
Encode
∏∏ "
(
∏∏" #
$str
∏∏# E
)
∏∏E F
,
∏∏F G
_urlEncoder
ππ 
.
ππ 
Encode
ππ "
(
ππ" #
email
ππ# (
)
ππ( )
,
ππ) *
unformattedKey
∫∫ 
)
∫∫ 
;
∫∫  
}
ªª 	
}
ºº 
}ΩΩ °U
{D:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Manage\ExternalLogins.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
.: ;
Manage; A
{ 
public 

class 
ExternalLoginsModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
SignInManager &
<& '#
UniversityMVCWebAppUser' >
>> ?
_signInManager@ N
;N O
private 
readonly 

IUserStore #
<# $#
UniversityMVCWebAppUser$ ;
>; <

_userStore= G
;G H
public 
ExternalLoginsModel "
(" #
UserManager 
< #
UniversityMVCWebAppUser /
>/ 0
userManager1 <
,< =
SignInManager 
< #
UniversityMVCWebAppUser 1
>1 2
signInManager3 @
,@ A

IUserStore 
< #
UniversityMVCWebAppUser .
>. /
	userStore0 9
)9 :
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +

_userStore 
= 
	userStore "
;" #
}   	
public&& 
IList&& 
<&& 
UserLoginInfo&& "
>&&" #
CurrentLogins&&$ 1
{&&2 3
get&&4 7
;&&7 8
set&&9 <
;&&< =
}&&> ?
public,, 
IList,, 
<,,  
AuthenticationScheme,, )
>,,) *
OtherLogins,,+ 6
{,,7 8
get,,9 <
;,,< =
set,,> A
;,,A B
},,C D
public22 
bool22 
ShowRemoveButton22 $
{22% &
get22' *
;22* +
set22, /
;22/ 0
}221 2
[88 	
TempData88	 
]88 
public99 
string99 
StatusMessage99 #
{99$ %
get99& )
;99) *
set99+ .
;99. /
}990 1
public;; 
async;; 
Task;; 
<;; 
IActionResult;; '
>;;' (

OnGetAsync;;) 3
(;;3 4
);;4 5
{<< 	
var== 
user== 
=== 
await== 
_userManager== )
.==) *
GetUserAsync==* 6
(==6 7
User==7 ;
)==; <
;==< =
if>> 
(>> 
user>> 
==>> 
null>> 
)>> 
{?? 
return@@ 
NotFound@@ 
(@@  
$"@@  "
$str@@" ?
{@@? @
_userManager@@@ L
.@@L M
	GetUserId@@M V
(@@V W
User@@W [
)@@[ \
}@@\ ]
$str@@] _
"@@_ `
)@@` a
;@@a b
}AA 
CurrentLoginsCC 
=CC 
awaitCC !
_userManagerCC" .
.CC. /
GetLoginsAsyncCC/ =
(CC= >
userCC> B
)CCB C
;CCC D
OtherLoginsDD 
=DD 
(DD 
awaitDD  
_signInManagerDD! /
.DD/ 01
%GetExternalAuthenticationSchemesAsyncDD0 U
(DDU V
)DDV W
)DDW X
.EE 
WhereEE 
(EE 
authEE 
=>EE 
CurrentLoginsEE ,
.EE, -
AllEE- 0
(EE0 1
ulEE1 3
=>EE4 6
authEE7 ;
.EE; <
NameEE< @
!=EEA C
ulEED F
.EEF G
LoginProviderEEG T
)EET U
)EEU V
.FF 
ToListFF 
(FF 
)FF 
;FF 
stringHH 
passwordHashHH 
=HH  !
nullHH" &
;HH& '
ifII 
(II 

_userStoreII 
isII 
IUserPasswordStoreII 0
<II0 1#
UniversityMVCWebAppUserII1 H
>IIH I
userPasswordStoreIIJ [
)II[ \
{JJ 
passwordHashKK 
=KK 
awaitKK $
userPasswordStoreKK% 6
.KK6 7 
GetPasswordHashAsyncKK7 K
(KKK L
userKKL P
,KKP Q
HttpContextKKR ]
.KK] ^
RequestAbortedKK^ l
)KKl m
;KKm n
}LL 
ShowRemoveButtonNN 
=NN 
passwordHashNN +
!=NN, .
nullNN/ 3
||NN4 6
CurrentLoginsNN7 D
.NND E
CountNNE J
>NNK L
$numNNM N
;NNN O
returnOO 
PageOO 
(OO 
)OO 
;OO 
}PP 	
publicRR 
asyncRR 
TaskRR 
<RR 
IActionResultRR '
>RR' ("
OnPostRemoveLoginAsyncRR) ?
(RR? @
stringRR@ F
loginProviderRRG T
,RRT U
stringRRV \
providerKeyRR] h
)RRh i
{SS 	
varTT 
userTT 
=TT 
awaitTT 
_userManagerTT )
.TT) *
GetUserAsyncTT* 6
(TT6 7
UserTT7 ;
)TT; <
;TT< =
ifUU 
(UU 
userUU 
==UU 
nullUU 
)UU 
{VV 
returnWW 
NotFoundWW 
(WW  
$"WW  "
$strWW" ?
{WW? @
_userManagerWW@ L
.WWL M
	GetUserIdWWM V
(WWV W
UserWWW [
)WW[ \
}WW\ ]
$strWW] _
"WW_ `
)WW` a
;WWa b
}XX 
varZZ 
resultZZ 
=ZZ 
awaitZZ 
_userManagerZZ +
.ZZ+ ,
RemoveLoginAsyncZZ, <
(ZZ< =
userZZ= A
,ZZA B
loginProviderZZC P
,ZZP Q
providerKeyZZR ]
)ZZ] ^
;ZZ^ _
if[[ 
([[ 
![[ 
result[[ 
.[[ 
	Succeeded[[ !
)[[! "
{\\ 
StatusMessage]] 
=]] 
$str]]  E
;]]E F
return^^ 
RedirectToPage^^ %
(^^% &
)^^& '
;^^' (
}__ 
awaitaa 
_signInManageraa  
.aa  !
RefreshSignInAsyncaa! 3
(aa3 4
useraa4 8
)aa8 9
;aa9 :
StatusMessagebb 
=bb 
$strbb =
;bb= >
returncc 
RedirectToPagecc !
(cc! "
)cc" #
;cc# $
}dd 	
publicff 
asyncff 
Taskff 
<ff 
IActionResultff '
>ff' ( 
OnPostLinkLoginAsyncff) =
(ff= >
stringff> D
providerffE M
)ffM N
{gg 	
awaitii 
HttpContextii 
.ii 
SignOutAsyncii *
(ii* +
IdentityConstantsii+ <
.ii< =
ExternalSchemeii= K
)iiK L
;iiL M
varll 
redirectUrlll 
=ll 
Urlll !
.ll! "
Pagell" &
(ll& '
$strll' 9
,ll9 :
pageHandlerll; F
:llF G
$strllH [
)ll[ \
;ll\ ]
varmm 

propertiesmm 
=mm 
_signInManagermm +
.mm+ ,5
)ConfigureExternalAuthenticationPropertiesmm, U
(mmU V
providermmV ^
,mm^ _
redirectUrlmm` k
,mmk l
_userManagermmm y
.mmy z
	GetUserId	mmz É
(
mmÉ Ñ
User
mmÑ à
)
mmà â
)
mmâ ä
;
mmä ã
returnnn 
newnn 
ChallengeResultnn &
(nn& '
providernn' /
,nn/ 0

propertiesnn1 ;
)nn; <
;nn< =
}oo 	
publicqq 
asyncqq 
Taskqq 
<qq 
IActionResultqq '
>qq' ('
OnGetLinkLoginCallbackAsyncqq) D
(qqD E
)qqE F
{rr 	
varss 
userss 
=ss 
awaitss 
_userManagerss )
.ss) *
GetUserAsyncss* 6
(ss6 7
Userss7 ;
)ss; <
;ss< =
iftt 
(tt 
usertt 
==tt 
nulltt 
)tt 
{uu 
returnvv 
NotFoundvv 
(vv  
$"vv  "
$strvv" ?
{vv? @
_userManagervv@ L
.vvL M
	GetUserIdvvM V
(vvV W
UservvW [
)vv[ \
}vv\ ]
$strvv] _
"vv_ `
)vv` a
;vva b
}ww 
varyy 
userIdyy 
=yy 
awaityy 
_userManageryy +
.yy+ ,
GetUserIdAsyncyy, :
(yy: ;
useryy; ?
)yy? @
;yy@ A
varzz 
infozz 
=zz 
awaitzz 
_signInManagerzz +
.zz+ ,%
GetExternalLoginInfoAsynczz, E
(zzE F
userIdzzF L
)zzL M
;zzM N
if{{ 
({{ 
info{{ 
=={{ 
null{{ 
){{ 
{|| 
throw}} 
new}} %
InvalidOperationException}} 3
(}}3 4
$"}}4 6
$str}}6 l
"}}l m
)}}m n
;}}n o
}~~ 
var
ÄÄ 
result
ÄÄ 
=
ÄÄ 
await
ÄÄ 
_userManager
ÄÄ +
.
ÄÄ+ ,
AddLoginAsync
ÄÄ, 9
(
ÄÄ9 :
user
ÄÄ: >
,
ÄÄ> ?
info
ÄÄ@ D
)
ÄÄD E
;
ÄÄE F
if
ÅÅ 
(
ÅÅ 
!
ÅÅ 
result
ÅÅ 
.
ÅÅ 
	Succeeded
ÅÅ !
)
ÅÅ! "
{
ÇÇ 
StatusMessage
ÉÉ 
=
ÉÉ 
$str
ÉÉ  |
;
ÉÉ| }
return
ÑÑ 
RedirectToPage
ÑÑ %
(
ÑÑ% &
)
ÑÑ& '
;
ÑÑ' (
}
ÖÖ 
await
àà 
HttpContext
àà 
.
àà 
SignOutAsync
àà *
(
àà* +
IdentityConstants
àà+ <
.
àà< =
ExternalScheme
àà= K
)
ààK L
;
ààL M
StatusMessage
ää 
=
ää 
$str
ää ;
;
ää; <
return
ãã 
RedirectToPage
ãã !
(
ãã! "
)
ãã" #
;
ãã# $
}
åå 	
}
çç 
}éé ◊+
ÇD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Manage\GenerateRecoveryCodes.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
.: ;
Manage; A
{ 
public 

class &
GenerateRecoveryCodesModel +
:, -
	PageModel. 7
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
ILogger  
<  !&
GenerateRecoveryCodesModel! ;
>; <
_logger= D
;D E
public &
GenerateRecoveryCodesModel )
() *
UserManager 
< #
UniversityMVCWebAppUser /
>/ 0
userManager1 <
,< =
ILogger 
< &
GenerateRecoveryCodesModel .
>. /
logger0 6
)6 7
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[!! 	
TempData!!	 
]!! 
public"" 
string"" 
["" 
]"" 
RecoveryCodes"" %
{""& '
get""( +
;""+ ,
set""- 0
;""0 1
}""2 3
[(( 	
TempData((	 
](( 
public)) 
string)) 
StatusMessage)) #
{))$ %
get))& )
;))) *
set))+ .
;)). /
}))0 1
public++ 
async++ 
Task++ 
<++ 
IActionResult++ '
>++' (

OnGetAsync++) 3
(++3 4
)++4 5
{,, 	
var-- 
user-- 
=-- 
await-- 
_userManager-- )
.--) *
GetUserAsync--* 6
(--6 7
User--7 ;
)--; <
;--< =
if.. 
(.. 
user.. 
==.. 
null.. 
).. 
{// 
return00 
NotFound00 
(00  
$"00  "
$str00" ?
{00? @
_userManager00@ L
.00L M
	GetUserId00M V
(00V W
User00W [
)00[ \
}00\ ]
$str00] _
"00_ `
)00` a
;00a b
}11 
var33 
isTwoFactorEnabled33 "
=33# $
await33% *
_userManager33+ 7
.337 8$
GetTwoFactorEnabledAsync338 P
(33P Q
user33Q U
)33U V
;33V W
if44 
(44 
!44 
isTwoFactorEnabled44 #
)44# $
{55 
throw66 
new66 %
InvalidOperationException66 3
(663 4
$"664 6
$str	666 É
"
66É Ñ
)
66Ñ Ö
;
66Ö Ü
}77 
return99 
Page99 
(99 
)99 
;99 
}:: 	
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (
OnPostAsync<<) 4
(<<4 5
)<<5 6
{== 	
var>> 
user>> 
=>> 
await>> 
_userManager>> )
.>>) *
GetUserAsync>>* 6
(>>6 7
User>>7 ;
)>>; <
;>>< =
if?? 
(?? 
user?? 
==?? 
null?? 
)?? 
{@@ 
returnAA 
NotFoundAA 
(AA  
$"AA  "
$strAA" ?
{AA? @
_userManagerAA@ L
.AAL M
	GetUserIdAAM V
(AAV W
UserAAW [
)AA[ \
}AA\ ]
$strAA] _
"AA_ `
)AA` a
;AAa b
}BB 
varDD 
isTwoFactorEnabledDD "
=DD# $
awaitDD% *
_userManagerDD+ 7
.DD7 8$
GetTwoFactorEnabledAsyncDD8 P
(DDP Q
userDDQ U
)DDU V
;DDV W
varEE 
userIdEE 
=EE 
awaitEE 
_userManagerEE +
.EE+ ,
GetUserIdAsyncEE, :
(EE: ;
userEE; ?
)EE? @
;EE@ A
ifFF 
(FF 
!FF 
isTwoFactorEnabledFF #
)FF# $
{GG 
throwHH 
newHH %
InvalidOperationExceptionHH 3
(HH3 4
$"HH4 6
$strHH6 ~
"HH~ 
)	HH Ä
;
HHÄ Å
}II 
varKK 
recoveryCodesKK 
=KK 
awaitKK  %
_userManagerKK& 2
.KK2 32
&GenerateNewTwoFactorRecoveryCodesAsyncKK3 Y
(KKY Z
userKKZ ^
,KK^ _
$numKK` b
)KKb c
;KKc d
RecoveryCodesLL 
=LL 
recoveryCodesLL )
.LL) *
ToArrayLL* 1
(LL1 2
)LL2 3
;LL3 4
_loggerNN 
.NN 
LogInformationNN "
(NN" #
$strNN# b
,NNb c
userIdNNd j
)NNj k
;NNk l
StatusMessageOO 
=OO 
$strOO D
;OOD E
returnPP 
RedirectToPagePP !
(PP! "
$strPP" 7
)PP7 8
;PP8 9
}QQ 	
}RR 
}SS Û4
rD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Manage\Index.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
.: ;
Manage; A
{ 
public 

class 

IndexModel 
: 
	PageModel '
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
SignInManager &
<& '#
UniversityMVCWebAppUser' >
>> ?
_signInManager@ N
;N O
public 

IndexModel 
( 
UserManager 
< #
UniversityMVCWebAppUser /
>/ 0
userManager1 <
,< =
SignInManager 
< #
UniversityMVCWebAppUser 1
>1 2
signInManager3 @
)@ A
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
public!! 
string!! 
Username!! 
{!!  
get!!! $
;!!$ %
set!!& )
;!!) *
}!!+ ,
['' 	
TempData''	 
]'' 
public(( 
string(( 
StatusMessage(( #
{(($ %
get((& )
;(() *
set((+ .
;((. /
}((0 1
[.. 	
BindProperty..	 
].. 
public// 

InputModel// 
Input// 
{//  !
get//" %
;//% &
set//' *
;//* +
}//, -
public55 
class55 

InputModel55 
{66 	
[;; 
Phone;; 
];; 
[<< 
Display<< 
(<< 
Name<< 
=<< 
$str<< *
)<<* +
]<<+ ,
public== 
string== 
PhoneNumber== %
{==& '
get==( +
;==+ ,
set==- 0
;==0 1
}==2 3
}>> 	
private@@ 
async@@ 
Task@@ 
	LoadAsync@@ $
(@@$ %#
UniversityMVCWebAppUser@@% <
user@@= A
)@@A B
{AA 	
varBB 
userNameBB 
=BB 
awaitBB  
_userManagerBB! -
.BB- .
GetUserNameAsyncBB. >
(BB> ?
userBB? C
)BBC D
;BBD E
varCC 
phoneNumberCC 
=CC 
awaitCC #
_userManagerCC$ 0
.CC0 1
GetPhoneNumberAsyncCC1 D
(CCD E
userCCE I
)CCI J
;CCJ K
UsernameEE 
=EE 
userNameEE 
;EE  
InputGG 
=GG 
newGG 

InputModelGG "
{HH 
PhoneNumberII 
=II 
phoneNumberII )
}JJ 
;JJ 
}KK 	
publicMM 
asyncMM 
TaskMM 
<MM 
IActionResultMM '
>MM' (

OnGetAsyncMM) 3
(MM3 4
)MM4 5
{NN 	
varOO 
userOO 
=OO 
awaitOO 
_userManagerOO )
.OO) *
GetUserAsyncOO* 6
(OO6 7
UserOO7 ;
)OO; <
;OO< =
ifPP 
(PP 
userPP 
==PP 
nullPP 
)PP 
{QQ 
returnRR 
NotFoundRR 
(RR  
$"RR  "
$strRR" ?
{RR? @
_userManagerRR@ L
.RRL M
	GetUserIdRRM V
(RRV W
UserRRW [
)RR[ \
}RR\ ]
$strRR] _
"RR_ `
)RR` a
;RRa b
}SS 
awaitUU 
	LoadAsyncUU 
(UU 
userUU  
)UU  !
;UU! "
returnVV 
PageVV 
(VV 
)VV 
;VV 
}WW 	
publicYY 
asyncYY 
TaskYY 
<YY 
IActionResultYY '
>YY' (
OnPostAsyncYY) 4
(YY4 5
)YY5 6
{ZZ 	
var[[ 
user[[ 
=[[ 
await[[ 
_userManager[[ )
.[[) *
GetUserAsync[[* 6
([[6 7
User[[7 ;
)[[; <
;[[< =
if\\ 
(\\ 
user\\ 
==\\ 
null\\ 
)\\ 
{]] 
return^^ 
NotFound^^ 
(^^  
$"^^  "
$str^^" ?
{^^? @
_userManager^^@ L
.^^L M
	GetUserId^^M V
(^^V W
User^^W [
)^^[ \
}^^\ ]
$str^^] _
"^^_ `
)^^` a
;^^a b
}__ 
ifaa 
(aa 
!aa 

ModelStateaa 
.aa 
IsValidaa #
)aa# $
{bb 
awaitcc 
	LoadAsynccc 
(cc  
usercc  $
)cc$ %
;cc% &
returndd 
Pagedd 
(dd 
)dd 
;dd 
}ee 
vargg 
phoneNumbergg 
=gg 
awaitgg #
_userManagergg$ 0
.gg0 1
GetPhoneNumberAsyncgg1 D
(ggD E
userggE I
)ggI J
;ggJ K
ifhh 
(hh 
Inputhh 
.hh 
PhoneNumberhh !
!=hh" $
phoneNumberhh% 0
)hh0 1
{ii 
varjj 
setPhoneResultjj "
=jj# $
awaitjj% *
_userManagerjj+ 7
.jj7 8
SetPhoneNumberAsyncjj8 K
(jjK L
userjjL P
,jjP Q
InputjjR W
.jjW X
PhoneNumberjjX c
)jjc d
;jjd e
ifkk 
(kk 
!kk 
setPhoneResultkk #
.kk# $
	Succeededkk$ -
)kk- .
{ll 
StatusMessagemm !
=mm" #
$strmm$ W
;mmW X
returnnn 
RedirectToPagenn )
(nn) *
)nn* +
;nn+ ,
}oo 
}pp 
awaitrr 
_signInManagerrr  
.rr  !
RefreshSignInAsyncrr! 3
(rr3 4
userrr4 8
)rr8 9
;rr9 :
StatusMessagess 
=ss 
$strss ;
;ss; <
returntt 
RedirectToPagett !
(tt! "
)tt" #
;tt# $
}uu 	
}vv 
}ww ﬂ)
tD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Manage\ManageNavPages.cs
	namespace 	
UniversityMVCWebApp 
. 
Areas $
.$ %
Identity% -
.- .
Pages. 3
.3 4
Account4 ;
.; <
Manage< B
{		 
public 

static 
class 
ManageNavPages &
{ 
public 
static 
string 
Index "
=># %
$str& -
;- .
public 
static 
string 
Email "
=># %
$str& -
;- .
public   
static   
string   
ChangePassword   +
=>  , .
$str  / ?
;  ? @
public&& 
static&& 
string&&  
DownloadPersonalData&& 1
=>&&2 4
$str&&5 K
;&&K L
public,, 
static,, 
string,, 
DeletePersonalData,, /
=>,,0 2
$str,,3 G
;,,G H
public22 
static22 
string22 
ExternalLogins22 +
=>22, .
$str22/ ?
;22? @
public88 
static88 
string88 
PersonalData88 )
=>88* ,
$str88- ;
;88; <
public>> 
static>> 
string>> #
TwoFactorAuthentication>> 4
=>>>5 7
$str>>8 Q
;>>Q R
publicDD 
staticDD 
stringDD 
IndexNavClassDD *
(DD* +
ViewContextDD+ 6
viewContextDD7 B
)DDB C
=>DDD F
PageNavClassDDG S
(DDS T
viewContextDDT _
,DD_ `
IndexDDa f
)DDf g
;DDg h
publicJJ 
staticJJ 
stringJJ 
EmailNavClassJJ *
(JJ* +
ViewContextJJ+ 6
viewContextJJ7 B
)JJB C
=>JJD F
PageNavClassJJG S
(JJS T
viewContextJJT _
,JJ_ `
EmailJJa f
)JJf g
;JJg h
publicPP 
staticPP 
stringPP "
ChangePasswordNavClassPP 3
(PP3 4
ViewContextPP4 ?
viewContextPP@ K
)PPK L
=>PPM O
PageNavClassPPP \
(PP\ ]
viewContextPP] h
,PPh i
ChangePasswordPPj x
)PPx y
;PPy z
publicVV 
staticVV 
stringVV (
DownloadPersonalDataNavClassVV 9
(VV9 :
ViewContextVV: E
viewContextVVF Q
)VVQ R
=>VVS U
PageNavClassVVV b
(VVb c
viewContextVVc n
,VVn o!
DownloadPersonalData	VVp Ñ
)
VVÑ Ö
;
VVÖ Ü
public\\ 
static\\ 
string\\ &
DeletePersonalDataNavClass\\ 7
(\\7 8
ViewContext\\8 C
viewContext\\D O
)\\O P
=>\\Q S
PageNavClass\\T `
(\\` a
viewContext\\a l
,\\l m
DeletePersonalData	\\n Ä
)
\\Ä Å
;
\\Å Ç
publicbb 
staticbb 
stringbb "
ExternalLoginsNavClassbb 3
(bb3 4
ViewContextbb4 ?
viewContextbb@ K
)bbK L
=>bbM O
PageNavClassbbP \
(bb\ ]
viewContextbb] h
,bbh i
ExternalLoginsbbj x
)bbx y
;bby z
publichh 
statichh 
stringhh  
PersonalDataNavClasshh 1
(hh1 2
ViewContexthh2 =
viewContexthh> I
)hhI J
=>hhK M
PageNavClasshhN Z
(hhZ [
viewContexthh[ f
,hhf g
PersonalDatahhh t
)hht u
;hhu v
publicnn 
staticnn 
stringnn +
TwoFactorAuthenticationNavClassnn <
(nn< =
ViewContextnn= H
viewContextnnI T
)nnT U
=>nnV X
PageNavClassnnY e
(nne f
viewContextnnf q
,nnq r$
TwoFactorAuthentication	nns ä
)
nnä ã
;
nnã å
publictt 
statictt 
stringtt 
PageNavClasstt )
(tt) *
ViewContexttt* 5
viewContexttt6 A
,ttA B
stringttC I
pagettJ N
)ttN O
{uu 	
varvv 

activePagevv 
=vv 
viewContextvv (
.vv( )
ViewDatavv) 1
[vv1 2
$strvv2 >
]vv> ?
asvv@ B
stringvvC I
??ww 
Systemww 
.ww 
IOww 
.ww 
Pathww !
.ww! "'
GetFileNameWithoutExtensionww" =
(ww= >
viewContextww> I
.wwI J
ActionDescriptorwwJ Z
.wwZ [
DisplayNameww[ f
)wwf g
;wwg h
returnxx 
stringxx 
.xx 
Equalsxx  
(xx  !

activePagexx! +
,xx+ ,
pagexx- 1
,xx1 2
StringComparisonxx3 C
.xxC D
OrdinalIgnoreCasexxD U
)xxU V
?xxW X
$strxxY a
:xxb c
nullxxd h
;xxh i
}yy 	
}zz 
}{{  
yD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Manage\PersonalData.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
.: ;
Manage; A
{ 
public 

class 
PersonalDataModel "
:# $
	PageModel% .
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
ILogger  
<  !
PersonalDataModel! 2
>2 3
_logger4 ;
;; <
public 
PersonalDataModel  
(  !
UserManager 
< #
UniversityMVCWebAppUser /
>/ 0
userManager1 <
,< =
ILogger 
< 
PersonalDataModel %
>% &
logger' -
)- .
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnGet) .
(. /
)/ 0
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{ 
return 
NotFound 
(  
$"  "
$str" ?
{? @
_userManager@ L
.L M
	GetUserIdM V
(V W
UserW [
)[ \
}\ ]
$str] _
"_ `
)` a
;a b
}   
return"" 
Page"" 
("" 
)"" 
;"" 
}## 	
}$$ 
}%% Œ%
D:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Manage\ResetAuthenticator.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
.: ;
Manage; A
{ 
public 

class #
ResetAuthenticatorModel (
:) *
	PageModel+ 4
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
SignInManager &
<& '#
UniversityMVCWebAppUser' >
>> ?
_signInManager@ N
;N O
private 
readonly 
ILogger  
<  !#
ResetAuthenticatorModel! 8
>8 9
_logger: A
;A B
public #
ResetAuthenticatorModel &
(& '
UserManager 
< #
UniversityMVCWebAppUser /
>/ 0
userManager1 <
,< =
SignInManager 
< #
UniversityMVCWebAppUser 1
>1 2
signInManager3 @
,@ A
ILogger 
< #
ResetAuthenticatorModel +
>+ ,
logger- 3
)3 4
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[## 	
TempData##	 
]## 
public$$ 
string$$ 
StatusMessage$$ #
{$$$ %
get$$& )
;$$) *
set$$+ .
;$$. /
}$$0 1
public&& 
async&& 
Task&& 
<&& 
IActionResult&& '
>&&' (
OnGet&&) .
(&&. /
)&&/ 0
{'' 	
var(( 
user(( 
=(( 
await(( 
_userManager(( )
.(() *
GetUserAsync((* 6
(((6 7
User((7 ;
)((; <
;((< =
if)) 
()) 
user)) 
==)) 
null)) 
))) 
{** 
return++ 
NotFound++ 
(++  
$"++  "
$str++" ?
{++? @
_userManager++@ L
.++L M
	GetUserId++M V
(++V W
User++W [
)++[ \
}++\ ]
$str++] _
"++_ `
)++` a
;++a b
},, 
return.. 
Page.. 
(.. 
).. 
;.. 
}// 	
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
OnPostAsync11) 4
(114 5
)115 6
{22 	
var33 
user33 
=33 
await33 
_userManager33 )
.33) *
GetUserAsync33* 6
(336 7
User337 ;
)33; <
;33< =
if44 
(44 
user44 
==44 
null44 
)44 
{55 
return66 
NotFound66 
(66  
$"66  "
$str66" ?
{66? @
_userManager66@ L
.66L M
	GetUserId66M V
(66V W
User66W [
)66[ \
}66\ ]
$str66] _
"66_ `
)66` a
;66a b
}77 
await99 
_userManager99 
.99 $
SetTwoFactorEnabledAsync99 7
(997 8
user998 <
,99< =
false99> C
)99C D
;99D E
await:: 
_userManager:: 
.:: &
ResetAuthenticatorKeyAsync:: 9
(::9 :
user::: >
)::> ?
;::? @
var;; 
userId;; 
=;; 
await;; 
_userManager;; +
.;;+ ,
GetUserIdAsync;;, :
(;;: ;
user;;; ?
);;? @
;;;@ A
_logger<< 
.<< 
LogInformation<< "
(<<" #
$str<<# d
,<<d e
user<<f j
.<<j k
Id<<k m
)<<m n
;<<n o
await>> 
_signInManager>>  
.>>  !
RefreshSignInAsync>>! 3
(>>3 4
user>>4 8
)>>8 9
;>>9 :
StatusMessage?? 
=?? 
$str	?? ç
;
??ç é
returnAA 
RedirectToPageAA !
(AA! "
$strAA" 9
)AA9 :
;AA: ;
}BB 	
}CC 
}DD ¢6
xD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Manage\SetPassword.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
.: ;
Manage; A
{ 
public 

class 
SetPasswordModel !
:" #
	PageModel$ -
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
SignInManager &
<& '#
UniversityMVCWebAppUser' >
>> ?
_signInManager@ N
;N O
public 
SetPasswordModel 
(  
UserManager 
< #
UniversityMVCWebAppUser /
>/ 0
userManager1 <
,< =
SignInManager 
< #
UniversityMVCWebAppUser 1
>1 2
signInManager3 @
)@ A
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
[   	
BindProperty  	 
]   
public!! 

InputModel!! 
Input!! 
{!!  !
get!!" %
;!!% &
set!!' *
;!!* +
}!!, -
['' 	
TempData''	 
]'' 
public(( 
string(( 
StatusMessage(( #
{(($ %
get((& )
;(() *
set((+ .
;((. /
}((0 1
public.. 
class.. 

InputModel.. 
{// 	
[44 
Required44 
]44 
[55 
StringLength55 
(55 
$num55 
,55 
ErrorMessage55 +
=55, -
$str55. l
,55l m
MinimumLength55n {
=55| }
$num55~ 
)	55 Ä
]
55Ä Å
[66 
DataType66 
(66 
DataType66 
.66 
Password66 '
)66' (
]66( )
[77 
Display77 
(77 
Name77 
=77 
$str77 *
)77* +
]77+ ,
public88 
string88 
NewPassword88 %
{88& '
get88( +
;88+ ,
set88- 0
;880 1
}882 3
[>> 
DataType>> 
(>> 
DataType>> 
.>> 
Password>> '
)>>' (
]>>( )
[?? 
Display?? 
(?? 
Name?? 
=?? 
$str?? 2
)??2 3
]??3 4
[@@ 
Compare@@ 
(@@ 
$str@@ "
,@@" #
ErrorMessage@@$ 0
=@@1 2
$str@@3 m
)@@m n
]@@n o
publicAA 
stringAA 
ConfirmPasswordAA )
{AA* +
getAA, /
;AA/ 0
setAA1 4
;AA4 5
}AA6 7
}BB 	
publicDD 
asyncDD 
TaskDD 
<DD 
IActionResultDD '
>DD' (

OnGetAsyncDD) 3
(DD3 4
)DD4 5
{EE 	
varFF 
userFF 
=FF 
awaitFF 
_userManagerFF )
.FF) *
GetUserAsyncFF* 6
(FF6 7
UserFF7 ;
)FF; <
;FF< =
ifGG 
(GG 
userGG 
==GG 
nullGG 
)GG 
{HH 
returnII 
NotFoundII 
(II  
$"II  "
$strII" ?
{II? @
_userManagerII@ L
.IIL M
	GetUserIdIIM V
(IIV W
UserIIW [
)II[ \
}II\ ]
$strII] _
"II_ `
)II` a
;IIa b
}JJ 
varLL 
hasPasswordLL 
=LL 
awaitLL #
_userManagerLL$ 0
.LL0 1
HasPasswordAsyncLL1 A
(LLA B
userLLB F
)LLF G
;LLG H
ifNN 
(NN 
hasPasswordNN 
)NN 
{OO 
returnPP 
RedirectToPagePP %
(PP% &
$strPP& 8
)PP8 9
;PP9 :
}QQ 
returnSS 
PageSS 
(SS 
)SS 
;SS 
}TT 	
publicVV 
asyncVV 
TaskVV 
<VV 
IActionResultVV '
>VV' (
OnPostAsyncVV) 4
(VV4 5
)VV5 6
{WW 	
ifXX 
(XX 
!XX 

ModelStateXX 
.XX 
IsValidXX #
)XX# $
{YY 
returnZZ 
PageZZ 
(ZZ 
)ZZ 
;ZZ 
}[[ 
var]] 
user]] 
=]] 
await]] 
_userManager]] )
.]]) *
GetUserAsync]]* 6
(]]6 7
User]]7 ;
)]]; <
;]]< =
if^^ 
(^^ 
user^^ 
==^^ 
null^^ 
)^^ 
{__ 
return`` 
NotFound`` 
(``  
$"``  "
$str``" ?
{``? @
_userManager``@ L
.``L M
	GetUserId``M V
(``V W
User``W [
)``[ \
}``\ ]
$str``] _
"``_ `
)``` a
;``a b
}aa 
varcc 
addPasswordResultcc !
=cc" #
awaitcc$ )
_userManagercc* 6
.cc6 7
AddPasswordAsynccc7 G
(ccG H
userccH L
,ccL M
InputccN S
.ccS T
NewPasswordccT _
)cc_ `
;cc` a
ifdd 
(dd 
!dd 
addPasswordResultdd "
.dd" #
	Succeededdd# ,
)dd, -
{ee 
foreachff 
(ff 
varff 
errorff "
inff# %
addPasswordResultff& 7
.ff7 8
Errorsff8 >
)ff> ?
{gg 

ModelStatehh 
.hh 
AddModelErrorhh ,
(hh, -
stringhh- 3
.hh3 4
Emptyhh4 9
,hh9 :
errorhh; @
.hh@ A
DescriptionhhA L
)hhL M
;hhM N
}ii 
returnjj 
Pagejj 
(jj 
)jj 
;jj 
}kk 
awaitmm 
_signInManagermm  
.mm  !
RefreshSignInAsyncmm! 3
(mm3 4
usermm4 8
)mm8 9
;mm9 :
StatusMessagenn 
=nn 
$strnn 9
;nn9 :
returnpp 
RedirectToPagepp !
(pp! "
)pp" #
;pp# $
}qq 	
}rr 
}ss ê
~D:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Manage\ShowRecoveryCodes.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
.: ;
Manage; A
{ 
public 

class "
ShowRecoveryCodesModel '
:( )
	PageModel* 3
{ 
[ 	
TempData	 
] 
public 
string 
[ 
] 
RecoveryCodes %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public%% 
IActionResult%% 
OnGet%% "
(%%" #
)%%# $
{&& 	
if'' 
('' 
RecoveryCodes'' 
==''  
null''! %
||''& (
RecoveryCodes'') 6
.''6 7
Length''7 =
==''> @
$num''A B
)''B C
{(( 
return)) 
RedirectToPage)) %
())% &
$str))& A
)))A B
;))B C
}** 
return,, 
Page,, 
(,, 
),, 
;,, 
}-- 	
}.. 
}// ä,
ÑD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Manage\TwoFactorAuthentication.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
.: ;
Manage; A
{ 
public 

class (
TwoFactorAuthenticationModel -
:. /
	PageModel0 9
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
SignInManager &
<& '#
UniversityMVCWebAppUser' >
>> ?
_signInManager@ N
;N O
private 
readonly 
ILogger  
<  !(
TwoFactorAuthenticationModel! =
>= >
_logger? F
;F G
public (
TwoFactorAuthenticationModel +
(+ ,
UserManager 
< #
UniversityMVCWebAppUser /
>/ 0
userManager1 <
,< =
SignInManager> K
<K L#
UniversityMVCWebAppUserL c
>c d
signInManagere r
,r s
ILoggert {
<{ |)
TwoFactorAuthenticationModel	| ò
>
ò ô
logger
ö †
)
† °
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public!! 
bool!! 
HasAuthenticator!! $
{!!% &
get!!' *
;!!* +
set!!, /
;!!/ 0
}!!1 2
public'' 
int'' 
RecoveryCodesLeft'' $
{''% &
get''' *
;''* +
set'', /
;''/ 0
}''1 2
[-- 	
BindProperty--	 
]-- 
public.. 
bool.. 
Is2faEnabled..  
{..! "
get..# &
;..& '
set..( +
;..+ ,
}..- .
public44 
bool44 
IsMachineRemembered44 '
{44( )
get44* -
;44- .
set44/ 2
;442 3
}444 5
[:: 	
TempData::	 
]:: 
public;; 
string;; 
StatusMessage;; #
{;;$ %
get;;& )
;;;) *
set;;+ .
;;;. /
};;0 1
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (

OnGetAsync==) 3
(==3 4
)==4 5
{>> 	
var?? 
user?? 
=?? 
await?? 
_userManager?? )
.??) *
GetUserAsync??* 6
(??6 7
User??7 ;
)??; <
;??< =
if@@ 
(@@ 
user@@ 
==@@ 
null@@ 
)@@ 
{AA 
returnBB 
NotFoundBB 
(BB  
$"BB  "
$strBB" ?
{BB? @
_userManagerBB@ L
.BBL M
	GetUserIdBBM V
(BBV W
UserBBW [
)BB[ \
}BB\ ]
$strBB] _
"BB_ `
)BB` a
;BBa b
}CC 
HasAuthenticatorEE 
=EE 
awaitEE $
_userManagerEE% 1
.EE1 2$
GetAuthenticatorKeyAsyncEE2 J
(EEJ K
userEEK O
)EEO P
!=EEQ S
nullEET X
;EEX Y
Is2faEnabledFF 
=FF 
awaitFF  
_userManagerFF! -
.FF- .$
GetTwoFactorEnabledAsyncFF. F
(FFF G
userFFG K
)FFK L
;FFL M
IsMachineRememberedGG 
=GG  !
awaitGG" '
_signInManagerGG( 6
.GG6 7,
 IsTwoFactorClientRememberedAsyncGG7 W
(GGW X
userGGX \
)GG\ ]
;GG] ^
RecoveryCodesLeftHH 
=HH 
awaitHH  %
_userManagerHH& 2
.HH2 3#
CountRecoveryCodesAsyncHH3 J
(HHJ K
userHHK O
)HHO P
;HHP Q
returnJJ 
PageJJ 
(JJ 
)JJ 
;JJ 
}KK 	
publicMM 
asyncMM 
TaskMM 
<MM 
IActionResultMM '
>MM' (
OnPostAsyncMM) 4
(MM4 5
)MM5 6
{NN 	
varOO 
userOO 
=OO 
awaitOO 
_userManagerOO )
.OO) *
GetUserAsyncOO* 6
(OO6 7
UserOO7 ;
)OO; <
;OO< =
ifPP 
(PP 
userPP 
==PP 
nullPP 
)PP 
{QQ 
returnRR 
NotFoundRR 
(RR  
$"RR  "
$strRR" ?
{RR? @
_userManagerRR@ L
.RRL M
	GetUserIdRRM V
(RRV W
UserRRW [
)RR[ \
}RR\ ]
$strRR] _
"RR_ `
)RR` a
;RRa b
}SS 
awaitUU 
_signInManagerUU  
.UU  !&
ForgetTwoFactorClientAsyncUU! ;
(UU; <
)UU< =
;UU= >
StatusMessageVV 
=VV 
$str	VV î
;
VVî ï
returnWW 
RedirectToPageWW !
(WW! "
)WW" #
;WW# $
}XX 	
}YY 
}ZZ àô
nD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\Register.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
{ 
public 

class 
RegisterModel 
:  
	PageModel! *
{ 
private 
readonly 
SignInManager &
<& '#
UniversityMVCWebAppUser' >
>> ?
_signInManager@ N
;N O
private   
readonly   
UserManager   $
<  $ %#
UniversityMVCWebAppUser  % <
>  < =
_userManager  > J
;  J K
private!! 
readonly!! 

IUserStore!! #
<!!# $#
UniversityMVCWebAppUser!!$ ;
>!!; <

_userStore!!= G
;!!G H
private"" 
readonly"" 
IUserEmailStore"" (
<""( )#
UniversityMVCWebAppUser"") @
>""@ A
_emailStore""B M
;""M N
private## 
readonly## 
ILogger##  
<##  !
RegisterModel##! .
>##. /
_logger##0 7
;##7 8
private$$ 
readonly$$ 
IEmailSender$$ %
_emailSender$$& 2
;$$2 3
private%% 
readonly%% 
RoleManager%% $
<%%$ %
IdentityRole%%% 1
>%%1 2
_roleManager%%3 ?
;%%? @
private&& 
readonly&& &
UniversityMVCWebAppContext&& 3'
_universityMVCWebAppContext&&4 O
;&&O P
public)) 
RegisterModel)) 
()) 
UserManager** 
<** #
UniversityMVCWebAppUser** /
>**/ 0
userManager**1 <
,**< =

IUserStore++ 
<++ #
UniversityMVCWebAppUser++ .
>++. /
	userStore++0 9
,++9 :
SignInManager,, 
<,, #
UniversityMVCWebAppUser,, 1
>,,1 2
signInManager,,3 @
,,,@ A
ILogger-- 
<-- 
RegisterModel-- !
>--! "
logger--# )
,--) *
RoleManager--+ 6
<--6 7
IdentityRole--7 C
>--C D
roleManager--E P
,--P Q
IEmailSender.. 
emailSender.. $
,..$ %&
UniversityMVCWebAppContext..& @&
universityMVCWebAppContext..A [
)..[ \
{// 	
_userManager00 
=00 
userManager00 &
;00& '

_userStore11 
=11 
	userStore11 "
;11" #
_emailStore22 
=22 
GetEmailStore22 '
(22' (
)22( )
;22) *
_signInManager33 
=33 
signInManager33 *
;33* +
_logger44 
=44 
logger44 
;44 
_emailSender55 
=55 
emailSender55 &
;55& '
_roleManager66 
=66 
roleManager66 &
;66& ''
_universityMVCWebAppContext77 '
=77' (&
universityMVCWebAppContext77( B
;77B C
}88 	
[>> 	
BindProperty>>	 
]>> 
public?? 

InputModel?? 
Input?? 
{??  !
get??" %
;??% &
set??' *
;??* +
}??, -
publicEE 
stringEE 
	ReturnUrlEE 
{EE  !
getEE" %
;EE% &
setEE' *
;EE* +
}EE, -
publicKK 
IListKK 
<KK  
AuthenticationSchemeKK )
>KK) *
ExternalLoginsKK+ 9
{KK: ;
getKK< ?
;KK? @
setKKA D
;KKD E
}KKF G
publicQQ 
classQQ 

InputModelQQ 
{RR 	
[YY 
RequiredYY 
]YY 
[ZZ 
EmailAddressZZ 
]ZZ 
[[[ 
Display[[ 
([[ 
Name[[ 
=[[ 
$str[[ #
)[[# $
][[$ %
public\\ 
string\\ 
Email\\ 
{\\  !
get\\" %
;\\% &
set\\' *
;\\* +
}\\, -
[]] 
Required]] 
]]] 
[^^ 
StringLength^^ 
(^^ 
$num^^ 
,^^ 
ErrorMessage^^ *
=^^+ ,
$str^^- E
)^^E F
]^^F G
public`` 
string`` 
	PanNumber`` #
{``$ %
get``& )
;``) *
set``+ .
;``. /
}``0 1
publicaa 
stringaa 
Statusaa  
{aa! "
getaa# &
;aa& '
setaa( +
;aa+ ,
}aa- .
publicbb 
stringbb 
RoleNamebb "
{bb# $
getbb% (
;bb( )
setbb* -
;bb- .
}bb/ 0
[jj 
Requiredjj 
]jj 
[kk 
StringLengthkk 
(kk 
$numkk 
,kk 
ErrorMessagekk +
=kk, -
$strkk. l
,kkl m
MinimumLengthkkn {
=kk| }
$numkk~ 
)	kk Ä
]
kkÄ Å
[ll 
DataTypell 
(ll 
DataTypell 
.ll 
Passwordll '
)ll' (
]ll( )
[mm 
Displaymm 
(mm 
Namemm 
=mm 
$strmm &
)mm& '
]mm' (
publicnn 
stringnn 
Passwordnn "
{nn# $
getnn% (
;nn( )
setnn* -
;nn- .
}nn/ 0
[tt 
DataTypett 
(tt 
DataTypett 
.tt 
Passwordtt '
)tt' (
]tt( )
[uu 
Displayuu 
(uu 
Nameuu 
=uu 
$struu .
)uu. /
]uu/ 0
[vv 
Comparevv 
(vv 
$strvv 
,vv  
ErrorMessagevv! -
=vv. /
$strvv0 f
)vvf g
]vvg h
publicww 
stringww 
ConfirmPasswordww )
{ww* +
getww, /
;ww/ 0
setww1 4
;ww4 5
}ww6 7
}xx 	
public{{ 
async{{ 
Task{{ 

OnGetAsync{{ $
({{$ %
string{{% +
	returnUrl{{, 5
={{6 7
null{{8 <
){{< =
{|| 	
ViewData}} 
[}} 
$str}} 
]}} 
=}} 
_roleManager}}  ,
.}}, -
Roles}}- 2
.}}2 3
ToList}}3 9
(}}9 :
)}}: ;
;}}; <
	ReturnUrl~~ 
=~~ 
	returnUrl~~ !
;~~! "
ExternalLogins 
= 
( 
await #
_signInManager$ 2
.2 31
%GetExternalAuthenticationSchemesAsync3 X
(X Y
)Y Z
)Z [
.[ \
ToList\ b
(b c
)c d
;d e
}
ÄÄ 	
public
ÇÇ 
async
ÇÇ 
Task
ÇÇ 
<
ÇÇ 
IActionResult
ÇÇ '
>
ÇÇ' (
OnPostAsync
ÇÇ) 4
(
ÇÇ4 5
string
ÇÇ5 ;
	returnUrl
ÇÇ< E
=
ÇÇF G
null
ÇÇH L
)
ÇÇL M
{
ÉÉ 	
	returnUrl
ÖÖ 
??=
ÖÖ 
Url
ÖÖ 
.
ÖÖ 
Content
ÖÖ %
(
ÖÖ% &
$str
ÖÖ& *
)
ÖÖ* +
;
ÖÖ+ ,
var
ÜÜ 
role
ÜÜ 
=
ÜÜ 
_roleManager
ÜÜ !
.
ÜÜ! "
FindByIdAsync
ÜÜ" /
(
ÜÜ/ 0
Input
ÜÜ0 5
.
ÜÜ5 6
RoleName
ÜÜ6 >
)
ÜÜ> ?
.
ÜÜ? @
Result
ÜÜ@ F
;
ÜÜF G
ExternalLogins
áá 
=
áá 
(
áá 
await
áá #
_signInManager
áá$ 2
.
áá2 33
%GetExternalAuthenticationSchemesAsync
áá3 X
(
ááX Y
)
ááY Z
)
ááZ [
.
áá[ \
ToList
áá\ b
(
ááb c
)
áác d
;
áád e
if
ââ 
(
ââ 

ModelState
ââ 
.
ââ 
IsValid
ââ "
)
ââ" #
{
ää 
var
åå 
user
åå 
=
åå 

CreateUser
åå %
(
åå% &
)
åå& '
;
åå' (
user
çç 
.
çç 
	PanNumber
çç 
=
çç  
Input
çç! &
.
çç& '
	PanNumber
çç' 0
;
çç0 1
var
éé 
data
éé 
=
éé 
new
éé 
AdminViewModel
éé -
(
éé- .
)
éé. /
{
èè 
Email
êê 
=
êê 
Input
êê !
.
êê! "
Email
êê" '
,
êê' (
	PanNumber
ëë 
=
ëë 
Input
ëë  %
.
ëë% &
	PanNumber
ëë& /
,
ëë/ 0
Password
íí 
=
íí 
Input
íí $
.
íí$ %
Password
íí% -
,
íí- .
ConfirmPassword
ìì #
=
ìì$ %
Input
ìì& +
.
ìì+ ,
ConfirmPassword
ìì, ;
,
ìì; <
RoleName
îî 
=
îî 
$str
îî (
}
óó 
;
óó )
_universityMVCWebAppContext
òò +
.
òò+ ,
Approval
òò, 4
.
òò4 5
Add
òò5 8
(
òò8 9
data
òò9 =
)
òò= >
;
òò> ?)
_universityMVCWebAppContext
ôô +
.
ôô+ ,
SaveChanges
ôô, 7
(
ôô7 8
)
ôô8 9
;
ôô9 :
	SendEmail
öö 
(
öö 
)
öö 
;
öö 
return
õõ 
RedirectToAction
õõ '
(
õõ' (
$str
õõ( 6
,
õõ6 7
$str
õõ8 ?
)
õõ? @
;
õõ@ A
var
ùù 
data1
ùù 
=
ùù 
await
ùù !)
_universityMVCWebAppContext
ùù" =
.
ùù= >
Approval
ùù> F
.
ùùF G
AddAsync
ùùG O
(
ùùO P
data
ùùP T
)
ùùT U
;
ùùU V
await
ûû 

_userStore
ûû  
.
ûû  !
SetUserNameAsync
ûû! 1
(
ûû1 2
user
ûû2 6
,
ûû6 7
Input
ûû8 =
.
ûû= >
Email
ûû> C
,
ûûC D
CancellationToken
ûûE V
.
ûûV W
None
ûûW [
)
ûû[ \
;
ûû\ ]
await
üü 
_emailStore
üü !
.
üü! "
SetEmailAsync
üü" /
(
üü/ 0
user
üü0 4
,
üü4 5
Input
üü6 ;
.
üü; <
Email
üü< A
,
üüA B
CancellationToken
üüC T
.
üüT U
None
üüU Y
)
üüY Z
;
üüZ [
var
†† 
result
†† 
=
†† 
await
†† "
_userManager
††# /
.
††/ 0
CreateAsync
††0 ;
(
††; <
user
††< @
,
††@ A
Input
††B G
.
††G H
Password
††H P
)
††P Q
;
††Q R
if
¢¢ 
(
¢¢ 
result
¢¢ 
.
¢¢ 
	Succeeded
¢¢ $
)
¢¢$ %
{
££ 
	SendEmail
§§ 
(
§§ 
)
§§ 
;
§§  
_logger
•• 
.
•• 
LogInformation
•• *
(
••* +
$str
••+ V
)
••V W
;
••W X
await
¶¶ 
_userManager
¶¶ &
.
¶¶& '
AddToRoleAsync
¶¶' 5
(
¶¶5 6
user
¶¶6 :
,
¶¶: ;
role
¶¶< @
.
¶¶@ A
ToString
¶¶A I
(
¶¶I J
)
¶¶J K
)
¶¶K L
;
¶¶L M
var
ßß 
userId
ßß 
=
ßß  
await
ßß! &
_userManager
ßß' 3
.
ßß3 4
GetUserIdAsync
ßß4 B
(
ßßB C
user
ßßC G
)
ßßG H
;
ßßH I
var
®® 
code
®® 
=
®® 
await
®® $
_userManager
®®% 1
.
®®1 21
#GenerateEmailConfirmationTokenAsync
®®2 U
(
®®U V
user
®®V Z
)
®®Z [
;
®®[ \
code
©© 
=
©© 
WebEncoders
©© &
.
©©& '
Base64UrlEncode
©©' 6
(
©©6 7
Encoding
©©7 ?
.
©©? @
UTF8
©©@ D
.
©©D E
GetBytes
©©E M
(
©©M N
code
©©N R
)
©©R S
)
©©S T
;
©©T U
var
™™ 
callbackUrl
™™ #
=
™™$ %
Url
™™& )
.
™™) *
Page
™™* .
(
™™. /
$str
™™/ F
,
™™F G
pageHandler
´´ #
:
´´# $
null
´´% )
,
´´) *
values
¨¨ 
:
¨¨ 
new
¨¨  #
{
¨¨$ %
area
¨¨& *
=
¨¨+ ,
$str
¨¨- 7
,
¨¨7 8
userId
¨¨9 ?
=
¨¨@ A
userId
¨¨B H
,
¨¨H I
code
¨¨J N
,
¨¨N O
	returnUrl
¨¨P Y
=
¨¨Z [
	returnUrl
¨¨\ e
}
¨¨f g
)
¨¨g h
;
¨¨h i
await
≠≠ 
_emailSender
≠≠ &
.
≠≠& '
SendEmailAsync
≠≠' 5
(
≠≠5 6
Input
≠≠6 ;
.
≠≠; <
Email
≠≠< A
,
≠≠A B
$str
≠≠C W
,
≠≠W X
$"
ÆÆ 
$str
ÆÆ B
{
ÆÆB C
HtmlEncoder
ÆÆC N
.
ÆÆN O
Default
ÆÆO V
.
ÆÆV W
Encode
ÆÆW ]
(
ÆÆ] ^
callbackUrl
ÆÆ^ i
)
ÆÆi j
}
ÆÆj k
$str
ÆÆk 
"ÆÆ Ä
)ÆÆÄ Å
;ÆÆÅ Ç
if
ØØ 
(
ØØ 
_userManager
ØØ $
.
ØØ$ %
Options
ØØ% ,
.
ØØ, -
SignIn
ØØ- 3
.
ØØ3 4%
RequireConfirmedAccount
ØØ4 K
)
ØØK L
{
∞∞ 
return
±± 
RedirectToPage
±± -
(
±±- .
$str
±±. D
,
±±D E
new
±±F I
{
±±J K
email
±±L Q
=
±±R S
Input
±±T Y
.
±±Y Z
Email
±±Z _
,
±±_ `
	returnUrl
±±a j
=
±±k l
	returnUrl
±±m v
}
±±w x
)
±±x y
;
±±y z
}
≤≤ 
else
≥≥ 
{
¥¥ 
await
µµ 
_signInManager
µµ ,
.
µµ, -
SignInAsync
µµ- 8
(
µµ8 9
user
µµ9 =
,
µµ= >
isPersistent
µµ? K
:
µµK L
false
µµM R
)
µµR S
;
µµS T
return
∂∂ 
LocalRedirect
∂∂ ,
(
∂∂, -
	returnUrl
∂∂- 6
)
∂∂6 7
;
∂∂7 8
}
∑∑ 
}
∏∏ 
foreach
ππ 
(
ππ 
var
ππ 
error
ππ "
in
ππ# %
result
ππ& ,
.
ππ, -
Errors
ππ- 3
)
ππ3 4
{
∫∫ 

ModelState
ªª 
.
ªª 
AddModelError
ªª ,
(
ªª, -
string
ªª- 3
.
ªª3 4
Empty
ªª4 9
,
ªª9 :
error
ªª; @
.
ªª@ A
Description
ªªA L
)
ªªL M
;
ªªM N
}
ºº 
}
ΩΩ 
return
¿¿ 
Page
¿¿ 
(
¿¿ 
)
¿¿ 
;
¿¿ 
}
¬¬ 	
public
√√ 
void
√√ 
	SendEmail
√√ 
(
√√ 
)
√√ 
{
ƒƒ 	

SmtpClient
∆∆ 
email
∆∆ 
=
∆∆ 
new
∆∆ "

SmtpClient
∆∆# -
{
«« 
DeliveryMethod
»» 
=
»»   
SmtpDeliveryMethod
»»! 3
.
»»3 4
Network
»»4 ;
,
»»; <#
UseDefaultCredentials
…… %
=
……& '
false
……( -
,
……- .
	EnableSsl
   
=
   
true
    
,
    !
Host
ÀÀ 
=
ÀÀ 
$str
ÀÀ '
,
ÀÀ' (
Port
ÃÃ 
=
ÃÃ 
$num
ÃÃ 
,
ÃÃ 
Credentials
ÕÕ 
=
ÕÕ 
new
ÕÕ !
NetworkCredential
ÕÕ" 3
(
ÕÕ3 4
$str
ÕÕ4 N
,
ÕÕN O
$str
ÕÕP b
)
ÕÕb c
}
ŒŒ 
;
ŒŒ 
string
œœ 
subject
œœ 
=
œœ 
$str
œœ &
;
œœ& '
string
–– 
body
–– 
=
–– 
$"
–– 
$str
–– !
{
––! "
Input
––" '
.
––' (
Email
––( -
}
––- .
$str
––. N
"
––N O
+
––P Q
$"
—— 
$str
—— S
"
——S T
;
——T U
try
”” 
{
‘‘ 
email
÷÷ 
.
÷÷ 
	EnableSsl
÷÷ 
=
÷÷  !
true
÷÷" &
;
÷÷& '
email
◊◊ 
.
◊◊ 
Send
◊◊ 
(
◊◊ 
$str
◊◊ 5
,
◊◊5 6
$"
◊◊7 9
{
◊◊9 :
Input
◊◊: ?
.
◊◊? @
Email
◊◊@ E
}
◊◊E F
"
◊◊F G
,
◊◊G H
subject
◊◊I P
,
◊◊P Q
body
◊◊R V
)
◊◊V W
;
◊◊W X
}
ŸŸ 
catch
⁄⁄ 
(
⁄⁄ 
SmtpException
⁄⁄  
e
⁄⁄! "
)
⁄⁄" #
{
€€ 
Console
‹‹ 
.
‹‹ 
	WriteLine
‹‹ !
(
‹‹! "
e
‹‹" #
)
‹‹# $
;
‹‹$ %
}
›› 
}
ﬂﬂ 	
private
·· %
UniversityMVCWebAppUser
·· '

CreateUser
··( 2
(
··2 3
)
··3 4
{
‚‚ 	
try
„„ 
{
‰‰ 
return
ÂÂ 
	Activator
ÂÂ  
.
ÂÂ  !
CreateInstance
ÂÂ! /
<
ÂÂ/ 0%
UniversityMVCWebAppUser
ÂÂ0 G
>
ÂÂG H
(
ÂÂH I
)
ÂÂI J
;
ÂÂJ K
}
ÊÊ 
catch
ÁÁ 
{
ËË 
throw
ÈÈ 
new
ÈÈ '
InvalidOperationException
ÈÈ 3
(
ÈÈ3 4
$"
ÈÈ4 6
$str
ÈÈ6 S
{
ÈÈS T
nameof
ÈÈT Z
(
ÈÈZ [%
UniversityMVCWebAppUser
ÈÈ[ r
)
ÈÈr s
}
ÈÈs t
$str
ÈÈt w
"
ÈÈw x
+
ÈÈy z
$"
ÍÍ 
$str
ÍÍ #
{
ÍÍ# $
nameof
ÍÍ$ *
(
ÍÍ* +%
UniversityMVCWebAppUser
ÍÍ+ B
)
ÍÍB C
}
ÍÍC D
$strÍÍD ï
"ÍÍï ñ
+ÍÍó ò
$"
ÎÎ 
$str
ÎÎ a
"
ÎÎa b
)
ÎÎb c
;
ÎÎc d
}
ÏÏ 
}
ÌÌ 	
private
ÔÔ 
IUserEmailStore
ÔÔ 
<
ÔÔ  %
UniversityMVCWebAppUser
ÔÔ  7
>
ÔÔ7 8
GetEmailStore
ÔÔ9 F
(
ÔÔF G
)
ÔÔG H
{
 	
if
ÒÒ 
(
ÒÒ 
!
ÒÒ 
_userManager
ÒÒ 
.
ÒÒ 
SupportsUserEmail
ÒÒ /
)
ÒÒ/ 0
{
ÚÚ 
throw
ÛÛ 
new
ÛÛ #
NotSupportedException
ÛÛ /
(
ÛÛ/ 0
$str
ÛÛ0 j
)
ÛÛj k
;
ÛÛk l
}
ÙÙ 
return
ıı 
(
ıı 
IUserEmailStore
ıı #
<
ıı# $%
UniversityMVCWebAppUser
ıı$ ;
>
ıı; <
)
ıı< =

_userStore
ıı= G
;
ııG H
}
ˆˆ 	
}
˜˜ 
}¯¯ „%
zD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\RegisterConfirmation.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
{ 
[ 
AllowAnonymous 
] 
public 

class %
RegisterConfirmationModel *
:+ ,
	PageModel- 6
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
IEmailSender %
_sender& -
;- .
public %
RegisterConfirmationModel (
(( )
UserManager) 4
<4 5#
UniversityMVCWebAppUser5 L
>L M
userManagerN Y
,Y Z
IEmailSender[ g
senderh n
)n o
{ 	
_userManager 
= 
userManager &
;& '
_sender 
= 
sender 
; 
} 	
public"" 
string"" 
Email"" 
{"" 
get"" !
;""! "
set""# &
;""& '
}""( )
public(( 
bool(( %
DisplayConfirmAccountLink(( -
{((. /
get((0 3
;((3 4
set((5 8
;((8 9
}((: ;
public.. 
string..  
EmailConfirmationUrl.. *
{..+ ,
get..- 0
;..0 1
set..2 5
;..5 6
}..7 8
public00 
async00 
Task00 
<00 
IActionResult00 '
>00' (

OnGetAsync00) 3
(003 4
string004 :
email00; @
,00@ A
string00B H
	returnUrl00I R
=00S T
null00U Y
)00Y Z
{11 	
if22 
(22 
email22 
==22 
null22 
)22 
{33 
return44 
RedirectToPage44 %
(44% &
$str44& .
)44. /
;44/ 0
}55 
	returnUrl66 
=66 
	returnUrl66 !
??66" $
Url66% (
.66( )
Content66) 0
(660 1
$str661 5
)665 6
;666 7
var88 
user88 
=88 
await88 
_userManager88 )
.88) *
FindByEmailAsync88* :
(88: ;
email88; @
)88@ A
;88A B
if99 
(99 
user99 
==99 
null99 
)99 
{:: 
return;; 
NotFound;; 
(;;  
$";;  "
$str;;" B
{;;B C
email;;C H
};;H I
$str;;I K
";;K L
);;L M
;;;M N
}<< 
Email>> 
=>> 
email>> 
;>> %
DisplayConfirmAccountLink@@ %
=@@& '
true@@( ,
;@@, -
ifAA 
(AA %
DisplayConfirmAccountLinkAA )
)AA) *
{BB 
varCC 
userIdCC 
=CC 
awaitCC "
_userManagerCC# /
.CC/ 0
GetUserIdAsyncCC0 >
(CC> ?
userCC? C
)CCC D
;CCD E
varDD 
codeDD 
=DD 
awaitDD  
_userManagerDD! -
.DD- ./
#GenerateEmailConfirmationTokenAsyncDD. Q
(DDQ R
userDDR V
)DDV W
;DDW X
codeEE 
=EE 
WebEncodersEE "
.EE" #
Base64UrlEncodeEE# 2
(EE2 3
EncodingEE3 ;
.EE; <
UTF8EE< @
.EE@ A
GetBytesEEA I
(EEI J
codeEEJ N
)EEN O
)EEO P
;EEP Q 
EmailConfirmationUrlFF $
=FF% &
UrlFF' *
.FF* +
PageFF+ /
(FF/ 0
$strGG +
,GG+ ,
pageHandlerHH 
:HH  
nullHH! %
,HH% &
valuesII 
:II 
newII 
{II  !
areaII" &
=II' (
$strII) 3
,II3 4
userIdII5 ;
=II< =
userIdII> D
,IID E
codeIIF J
=IIK L
codeIIM Q
,IIQ R
	returnUrlIIS \
=II] ^
	returnUrlII_ h
}IIi j
,IIj k
protocolJJ 
:JJ 
RequestJJ %
.JJ% &
SchemeJJ& ,
)JJ, -
;JJ- .
}KK 
returnMM 
PageMM 
(MM 
)MM 
;MM 
}NN 	
}OO 
}PP ¸'
}D:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\ResendEmailConfirmation.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
{ 
[ 
AllowAnonymous 
] 
public 

class (
ResendEmailConfirmationModel -
:. /
	PageModel0 9
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public (
ResendEmailConfirmationModel +
(+ ,
UserManager, 7
<7 8#
UniversityMVCWebAppUser8 O
>O P
userManagerQ \
,\ ]
IEmailSender^ j
emailSenderk v
)v w
{ 	
_userManager 
= 
userManager &
;& '
_emailSender 
= 
emailSender &
;& '
} 	
[$$ 	
BindProperty$$	 
]$$ 
public%% 

InputModel%% 
Input%% 
{%%  !
get%%" %
;%%% &
set%%' *
;%%* +
}%%, -
public++ 
class++ 

InputModel++ 
{,, 	
[11 
Required11 
]11 
[22 
EmailAddress22 
]22 
public33 
string33 
Email33 
{33  !
get33" %
;33% &
set33' *
;33* +
}33, -
}44 	
public66 
void66 
OnGet66 
(66 
)66 
{77 	
}88 	
public:: 
async:: 
Task:: 
<:: 
IActionResult:: '
>::' (
OnPostAsync::) 4
(::4 5
)::5 6
{;; 	
if<< 
(<< 
!<< 

ModelState<< 
.<< 
IsValid<< #
)<<# $
{== 
return>> 
Page>> 
(>> 
)>> 
;>> 
}?? 
varAA 
userAA 
=AA 
awaitAA 
_userManagerAA )
.AA) *
FindByEmailAsyncAA* :
(AA: ;
InputAA; @
.AA@ A
EmailAAA F
)AAF G
;AAG H
ifBB 
(BB 
userBB 
==BB 
nullBB 
)BB 
{CC 

ModelStateDD 
.DD 
AddModelErrorDD (
(DD( )
stringDD) /
.DD/ 0
EmptyDD0 5
,DD5 6
$strDD7 j
)DDj k
;DDk l
returnEE 
PageEE 
(EE 
)EE 
;EE 
}FF 
varHH 
userIdHH 
=HH 
awaitHH 
_userManagerHH +
.HH+ ,
GetUserIdAsyncHH, :
(HH: ;
userHH; ?
)HH? @
;HH@ A
varII 
codeII 
=II 
awaitII 
_userManagerII )
.II) */
#GenerateEmailConfirmationTokenAsyncII* M
(IIM N
userIIN R
)IIR S
;IIS T
codeJJ 
=JJ 
WebEncodersJJ 
.JJ 
Base64UrlEncodeJJ .
(JJ. /
EncodingJJ/ 7
.JJ7 8
UTF8JJ8 <
.JJ< =
GetBytesJJ= E
(JJE F
codeJJF J
)JJJ K
)JJK L
;JJL M
varKK 
callbackUrlKK 
=KK 
UrlKK !
.KK! "
PageKK" &
(KK& '
$strLL '
,LL' (
pageHandlerMM 
:MM 
nullMM !
,MM! "
valuesNN 
:NN 
newNN 
{NN 
userIdNN $
=NN% &
userIdNN' -
,NN- .
codeNN/ 3
=NN4 5
codeNN6 :
}NN; <
,NN< =
protocolOO 
:OO 
RequestOO !
.OO! "
SchemeOO" (
)OO( )
;OO) *
awaitPP 
_emailSenderPP 
.PP 
SendEmailAsyncPP -
(PP- .
InputQQ 
.QQ 
EmailQQ 
,QQ 
$strRR $
,RR$ %
$"SS 
$strSS :
{SS: ;
HtmlEncoderSS; F
.SSF G
DefaultSSG N
.SSN O
EncodeSSO U
(SSU V
callbackUrlSSV a
)SSa b
}SSb c
$strSSc w
"SSw x
)SSx y
;SSy z

ModelStateUU 
.UU 
AddModelErrorUU $
(UU$ %
stringUU% +
.UU+ ,
EmptyUU, 1
,UU1 2
$strUU3 f
)UUf g
;UUg h
returnVV 
PageVV 
(VV 
)VV 
;VV 
}WW 	
}XX 
}YY ö.
sD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\ResetPassword.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
{ 
public 

class 
ResetPasswordModel #
:$ %
	PageModel& /
{ 
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
public 
ResetPasswordModel !
(! "
UserManager" -
<- .#
UniversityMVCWebAppUser. E
>E F
userManagerG R
)R S
{ 	
_userManager 
= 
userManager &
;& '
} 	
[ 	
BindProperty	 
] 
public   

InputModel   
Input   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
public&& 
class&& 

InputModel&& 
{'' 	
[,, 
Required,, 
],, 
[-- 
EmailAddress-- 
]-- 
public.. 
string.. 
Email.. 
{..  !
get.." %
;..% &
set..' *
;..* +
}.., -
[44 
Required44 
]44 
[55 
StringLength55 
(55 
$num55 
,55 
ErrorMessage55 +
=55, -
$str55. l
,55l m
MinimumLength55n {
=55| }
$num55~ 
)	55 Ä
]
55Ä Å
[66 
DataType66 
(66 
DataType66 
.66 
Password66 '
)66' (
]66( )
public77 
string77 
Password77 "
{77# $
get77% (
;77( )
set77* -
;77- .
}77/ 0
[== 
DataType== 
(== 
DataType== 
.== 
Password== '
)==' (
]==( )
[>> 
Display>> 
(>> 
Name>> 
=>> 
$str>> .
)>>. /
]>>/ 0
[?? 
Compare?? 
(?? 
$str?? 
,??  
ErrorMessage??! -
=??. /
$str??0 f
)??f g
]??g h
public@@ 
string@@ 
ConfirmPassword@@ )
{@@* +
get@@, /
;@@/ 0
set@@1 4
;@@4 5
}@@6 7
[FF 
RequiredFF 
]FF 
publicGG 
stringGG 
CodeGG 
{GG  
getGG! $
;GG$ %
setGG& )
;GG) *
}GG+ ,
}II 	
publicKK 
IActionResultKK 
OnGetKK "
(KK" #
stringKK# )
codeKK* .
=KK/ 0
nullKK1 5
)KK5 6
{LL 	
ifMM 
(MM 
codeMM 
==MM 
nullMM 
)MM 
{NN 
returnOO 

BadRequestOO !
(OO! "
$strOO" O
)OOO P
;OOP Q
}PP 
elseQQ 
{RR 
InputSS 
=SS 
newSS 

InputModelSS &
{TT 
CodeUU 
=UU 
EncodingUU #
.UU# $
UTF8UU$ (
.UU( )
	GetStringUU) 2
(UU2 3
WebEncodersUU3 >
.UU> ?
Base64UrlDecodeUU? N
(UUN O
codeUUO S
)UUS T
)UUT U
}VV 
;VV 
returnWW 
PageWW 
(WW 
)WW 
;WW 
}XX 
}YY 	
public[[ 
async[[ 
Task[[ 
<[[ 
IActionResult[[ '
>[[' (
OnPostAsync[[) 4
([[4 5
)[[5 6
{\\ 	
if]] 
(]] 
!]] 

ModelState]] 
.]] 
IsValid]] #
)]]# $
{^^ 
return__ 
Page__ 
(__ 
)__ 
;__ 
}`` 
varbb 
userbb 
=bb 
awaitbb 
_userManagerbb )
.bb) *
FindByEmailAsyncbb* :
(bb: ;
Inputbb; @
.bb@ A
EmailbbA F
)bbF G
;bbG H
ifcc 
(cc 
usercc 
==cc 
nullcc 
)cc 
{dd 
returnff 
RedirectToPageff %
(ff% &
$strff& C
)ffC D
;ffD E
}gg 
varii 
resultii 
=ii 
awaitii 
_userManagerii +
.ii+ ,
ResetPasswordAsyncii, >
(ii> ?
userii? C
,iiC D
InputiiE J
.iiJ K
CodeiiK O
,iiO P
InputiiQ V
.iiV W
PasswordiiW _
)ii_ `
;ii` a
ifjj 
(jj 
resultjj 
.jj 
	Succeededjj  
)jj  !
{kk 
returnll 
RedirectToPagell %
(ll% &
$strll& C
)llC D
;llD E
}mm 
foreachoo 
(oo 
varoo 
erroroo 
inoo !
resultoo" (
.oo( )
Errorsoo) /
)oo/ 0
{pp 

ModelStateqq 
.qq 
AddModelErrorqq (
(qq( )
stringqq) /
.qq/ 0
Emptyqq0 5
,qq5 6
errorqq7 <
.qq< =
Descriptionqq= H
)qqH I
;qqI J
}rr 
returnss 
Pagess 
(ss 
)ss 
;ss 
}tt 	
}uu 
}vv §
D:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Account\ResetPasswordConfirmation.cshtml.cs
	namespace 	
UniversityMVCWebApp
 
. 
Areas #
.# $
Identity$ ,
., -
Pages- 2
.2 3
Account3 :
{		 
[ 
AllowAnonymous 
] 
public 

class *
ResetPasswordConfirmationModel /
:0 1
	PageModel2 ;
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} å
cD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Areas\Identity\Pages\Error.cshtml.cs
	namespace

 	
UniversityMVCWebApp


 
.

 
Areas

 #
.

# $
Identity

$ ,
.

, -
Pages

- 2
{ 
[ 
AllowAnonymous 
] 
[ 
ResponseCache 
( 
Duration 
= 
$num 
,  
Location! )
=* +!
ResponseCacheLocation, A
.A B
NoneB F
,F G
NoStoreH O
=P Q
trueR V
)V W
]W X
public 

class 

ErrorModel 
: 
	PageModel '
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
public$$ 
void$$ 
OnGet$$ 
($$ 
)$$ 
{%% 	
	RequestId&& 
=&& 
Activity&&  
.&&  !
Current&&! (
?&&( )
.&&) *
Id&&* ,
??&&- /
HttpContext&&0 ;
.&&; <
TraceIdentifier&&< K
;&&K L
}'' 	
}(( 
})) §
SD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\AutoMapper\Mapper.cs
	namespace 	
UniversityMVCWebApp
 
. 

AutoMapper (
{ 
public 

class 
Mapper 
: 
Profile 
{ 
public		 
Mapper		 
(		 
)		 
{

 	
	CreateMap 
< 
UniversityViewModel )
,) *
UniversityModelApi+ =
>= >
(> ?
)? @
.@ A

ReverseMapA K
(K L
)L M
;M N
} 	
} 
} œ<
]D:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Controllers\AdminController.cs
	namespace 	
UniversityMVCWebApp
 
. 
Controllers )
{		 
[

 
	Authorize

 
(

 
policy

 
:

 
$str

 $
)

$ %
]

% &
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly &
UniversityMVCWebAppContext 3'
_universityMVCWebAppContext4 O
;O P
private 
readonly 
UserManager $
<$ %#
UniversityMVCWebAppUser% <
>< =
_userManager> J
;J K
private 
readonly 
RoleManager $
<$ %
IdentityRole% 1
>1 2
_roleManager3 ?
;? @
public 
AdminController 
( &
UniversityMVCWebAppContext 9&
universityMVCWebAppContext: T
,T U
UserManagerV a
<a b#
UniversityMVCWebAppUserb y
>y z
userManager	{ Ü
,
Ü á
RoleManager
à ì
<
ì î
IdentityRole
î †
>
† °
roleManager
¢ ≠
)
≠ Æ
{ 	'
_universityMVCWebAppContext '
=( )&
universityMVCWebAppContext* D
;D E
_userManager 
= 
userManager &
;& '
_roleManager 
= 
roleManager &
;& '
} 	
public 
ActionResult 
RegisterData (
(( )
)) *
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
if 
( '
_universityMVCWebAppContext +
.+ ,
Approval, 4
==5 7
null8 <
)< =
{ 
return 
NotFound 
(  
)  !
;! "
}   
List!! 
<!! 
AdminViewModel!! 
>!!  
admins!!! '
=!!( )
new!!* -
List!!. 2
<!!2 3
AdminViewModel!!3 A
>!!A B
(!!B C
)!!C D
;!!D E
admins"" 
="" '
_universityMVCWebAppContext"" 0
.""0 1
Approval""1 9
.""9 :
ToList"": @
(""@ A
)""A B
;""B C
if## 
(## 
admins## 
==## 
null## 
)## 
{$$ 
return%% 
NotFound%% 
(%%  
)%%  !
;%%! "
}&& 
return'' 
View'' 
('' 
admins'' 
)'' 
;''  
}(( 	
[)) 	
HttpPost))	 
])) 
public++ 
async++ 
Task++ 
<++ 
IActionResult++ '
>++' (
Approval++) 1
(++1 2
int++2 5
id++7 9
)++9 :
{,, 	
var-- 
data-- 
=-- '
_universityMVCWebAppContext-- 2
.--2 3
Approval--3 ;
.--; <
Find--< @
(--@ A
id--A C
)--C D
;--D E
if.. 
(.. 
data.. 
==.. 
null.. 
).. 
{// 
return00 
	NoContent00  
(00  !
)00! "
;00" #
}11 
var33 
user33 
=33 
new33 #
UniversityMVCWebAppUser33 2
(332 3
)333 4
{44 
Email55 
=55 
data55 
.55 
Email55 
,55  
	PanNumber66 
=66 
data66  
.66  !
	PanNumber66! *
,66* +
UserName77 
=77 
data77 
.77  
Email77  %
}88 
;88 
var99 
approval99 
=99 
new99 
StatusViewModel99 .
(99. /
)99/ 0
{:: 
Email<< 
=<< 
data<< 
.<< 
Email<<  
,<<  !
StatusAA 
=AA 
$strAA "
}BB 
;BB '
_universityMVCWebAppContextCC '
.CC' (
StatusViewModelCC( 7
.CC7 8
AddCC8 ;
(CC; <
approvalCC< D
)CCD E
;CCE F
varDD 
rolesDD 
=DD 
_roleManagerDD $
.DD$ %
FindByNameAsyncDD% 4
(DD4 5
dataDD5 9
.DD9 :
RoleNameDD: B
)DDB C
.DDC D
ResultDDD J
;DDJ K
awaitEE 
_userManagerEE 
.EE 
CreateAsyncEE *
(EE* +
userEE+ /
,EE/ 0
dataEE1 5
.EE5 6
PasswordEE6 >
)EE> ?
;EE? @
awaitFF 
_userManagerFF 
.FF 
AddToRoleAsyncFF -
(FF- .
userFF. 2
,FF2 3
rolesFF4 9
.FF9 :
NameFF: >
)FF> ?
;FF? @'
_universityMVCWebAppContextGG '
.GG' (
ApprovalGG( 0
.GG0 1
RemoveGG1 7
(GG7 8
dataGG8 <
)GG< =
;GG= >'
_universityMVCWebAppContextHH '
.HH' (
SaveChangesHH( 3
(HH3 4
)HH4 5
;HH5 6
returnII 
JsonII 
(II 
$strII !
)II! "
;II" #
}NN 	
publicOO 
asyncOO 
TaskOO 
<OO 
IActionResultOO '
>OO' (
	RejectionOO) 2
(OO2 3
intOO3 6
idOO7 9
)OO9 :
{PP 	
varQQ 
dataQQ 
=QQ '
_universityMVCWebAppContextQQ 2
.QQ2 3
ApprovalQQ3 ;
.QQ; <
FindQQ< @
(QQ@ A
idQQA C
)QQC D
;QQD E
ifRR 
(RR 
dataRR 
==RR 
nullRR 
)RR 
{SS 
returnTT 
NotFoundTT 
(TT  
)TT  !
;TT! "
}UU '
_universityMVCWebAppContextVV '
.VV' (
ApprovalVV( 0
.VV0 1
RemoveVV1 7
(VV7 8
dataVV8 <
)VV< =
;VV= >'
_universityMVCWebAppContextWW '
.WW' (
SaveChangesWW( 3
(WW3 4
)WW4 5
;WW5 6
varXX 
rejectXX 
=XX 
newXX 
StatusViewModelXX ,
(XX, -
)XX- .
{YY 
Email\\ 
=\\ 
data\\ 
.\\ 
Email\\ "
,\\" #
Statusaa 
=aa 
$straa #
}bb 
;bb '
_universityMVCWebAppContextcc '
.cc' (
StatusViewModelcc( 7
.cc7 8
Addcc8 ;
(cc; <
rejectcc< B
)ccB C
;ccC D'
_universityMVCWebAppContextdd '
.dd' (
Approvaldd( 0
.dd0 1
Adddd1 4
(dd4 5
datadd5 9
)dd9 :
;dd: ;'
_universityMVCWebAppContextee '
.ee' (
SaveChangesee( 3
(ee3 4
)ee4 5
;ee5 6
returnff 
Jsonff 
(ff 
$strff "
)ff" #
;ff# $
}ll 	
}mm 
}nn Ä
\D:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Controllers\HomeController.cs
	namespace 	
UniversityMVCWebApp
 
. 
Controllers )
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private		 
readonly		 
ILogger		  
<		  !
HomeController		! /
>		/ 0
_logger		1 8
;		8 9
public 
HomeController 
( 
ILogger %
<% &
HomeController& 4
>4 5
logger6 <
)< =
{ 	
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Privacy $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
ResponseCache	 
( 
Duration 
=  !
$num" #
,# $
Location% -
=. /!
ResponseCacheLocation0 E
.E F
NoneF J
,J K
NoStoreL S
=T U
trueV Z
)Z [
][ \
public 
IActionResult 
Error "
(" #
)# $
{ 	
return 
View 
( 
new 
ErrorViewModel *
{+ ,
	RequestId- 6
=7 8
Activity9 A
.A B
CurrentB I
?I J
.J K
IdK M
??N P
HttpContextQ \
.\ ]
TraceIdentifier] l
}m n
)n o
;o p
} 	
} 
}   ˇ
\D:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Controllers\RoleController.cs
	namespace 	
UniversityMVCWebApp
 
. 
Controllers )
{ 
[ 
	Authorize 
( 
policy 
: 
$str $
)$ %
]% &
public 

class 
RoleController 
:  !

Controller" ,
{		 
private

 
RoleManager

 
<

 
IdentityRole

 (
>

( )
_roleManager

* 6
;

6 7
public 
RoleController 
( 
RoleManager )
<) *
IdentityRole* 6
>6 7
roleManager8 C
)C D
{ 	
_roleManager 
= 
roleManager &
;& '
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
var 
role 
= 
_roleManager #
.# $
Roles$ )
.) *
ToList* 0
(0 1
)1 2
;2 3
return 
View 
( 
role 
) 
; 
} 	
public 
IActionResult 
Create #
(# $
)$ %
{ 	
return 
View 
( 
new 
IdentityRole (
(( )
)) *
)* +
;+ ,
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Create) /
(/ 0
IdentityRole0 <
role= A
)A B
{ 	
await 
_roleManager 
. 
CreateAsync *
(* +
role+ /
)/ 0
;0 1
return 
RedirectToAction #
(# $
$str$ +
)+ ,
;, -
}   	
}!! 
}"" œQ
dD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Controllers\UniversitiesController.cs
	namespace 	
UniversityMVCWebApp
 
. 
Controllers )
{		 
public 
class "
UniversitiesController +
:, -

Controller. 8
{ 	
Uri 
baseUri 
= 
new 
Uri !
(! "
$str" >
)> ?
;? @

HttpClient 
client 
= 
new  #

HttpClient$ .
(. /
)/ 0
;0 1
List 
< 
UniversityViewModel $
>$ %
UniversityList& 4
=5 6
new7 :
List; ?
<? @
UniversityViewModel@ S
>S T
(T U
)U V
;V W
private 
readonly 
IMapper  
_imapper! )
;) *
public "
UniversitiesController %
(% &
IMapper& -
imapper. 5
)5 6
{ 	
_imapper 
= 
imapper 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 
client 
. 
BaseAddress "
=# $
baseUri% ,
;, -
HttpResponseMessage #
response$ ,
=- .
client/ 5
.5 6
GetAsync6 >
(> ?
baseUri? F
+G H
$strI V
)V W
.W X
ResultX ^
;^ _
if 
( 
response 
. 
IsSuccessStatusCode 0
)0 1
{ 
string   
UniversityData   )
=  * +
response  , 4
.  4 5
Content  5 <
.  < =
ReadAsStringAsync  = N
(  N O
)  O P
.  P Q
Result  Q W
;  W X
UniversityList!! "
=!!# $
JsonConvert!!% 0
.!!0 1
DeserializeObject!!1 B
<!!B C
List!!C G
<!!G H
UniversityViewModel!!H [
>!![ \
>!!\ ]
(!!] ^
UniversityData!!^ l
)!!l m
;!!m n
;!!o p
}## 
var$$ 
result$$ 
=$$ 
UniversityList$$ +
.$$+ ,
OrderByDescending$$, =
($$= >
e$$> ?
=>$$@ B
e$$C D
.$$D E
establishedYear$$E T
)$$T U
.$$U V
ThenBy$$V \
($$\ ]
e$$] ^
=>$$_ a
e$$b c
.$$c d
universityName$$d r
)$$r s
;$$s t
_imapper%% 
.%% 
Map%% 
<%% 
UniversityModelApi%% +
>%%+ ,
(%%, -
result%%- 3
)%%3 4
;%%4 5
return&& 
View&& 
(&& 
result&& 
)&& 
;&&  
return(( 
View(( 
((( 
UniversityList(( *
)((* +
;((+ ,
})) 
[++ 	
	Authorize++	 
(++ 
policy++ 
:++ 
$str++ (
)++( )
]++) *
public,, 
IActionResult,, 
Create,, #
(,,# $
),,$ %
{-- 
return.. 
View.. 
(.. 
).. 
;.. 
}// 
[00 
HttpPost00 
]00 
public22 
ActionResult22 
AddUniversity22  -
(22- .
UniversityViewModel22. A

university22B L
)22L M
{33 
using44 
(44 
var44 
client44 !
=44" #
new44$ '

HttpClient44( 2
(442 3
)443 4
)444 5
{55 
client66 
.66 
BaseAddress66 &
=66' (
new66) ,
Uri66- 0
(660 1
$str661 X
)66X Y
;66Y Z
var77 
postTask77  
=77! "
client77# )
.77) *
PostAsJsonAsync77* 9
<779 :
UniversityViewModel77: M
>77M N
(77N O
$str77O [
,77[ \

university77] g
)77g h
;77h i
postTask88 
.88 
Wait88 !
(88! "
)88" #
;88# $
var99 
result99 
=99  
postTask99! )
.99) *
Result99* 0
;990 1
if:: 
(:: 
result:: 
.:: 
IsSuccessStatusCode:: 2
)::2 3
{;; 
return<< 
RedirectToAction<< /
(<</ 0
$str<<0 7
)<<7 8
;<<8 9
_imapper== 
.== 
Map==  
<==  !
UniversityModelApi==! 3
>==3 4
(==4 5

university==5 ?
)==? @
;==@ A
}>> 
return?? 
View?? 
(??  
)??  !
;??! "
}@@ 
}BB 
[DD 	
	AuthorizeDD	 
(DD 
policyDD 
:DD 
$strDD (
)DD( )
]DD) *
publicEE 
ActionResultEE 
EditEE  
(EE  !
intEE! $
idEE% '
)EE' (
{FF 
clientGG 
.GG 
BaseAddressGG "
=GG# $
baseUriGG% ,
;GG, -
HttpResponseMessageHH #
responseHH$ ,
=HH- .
clientHH/ 5
.HH5 6
GetAsyncHH6 >
(HH> ?
baseUriHH? F
+HHG H
$strHHI V
)HHV W
.HHW X
ResultHHX ^
;HH^ _
stringII 
dataII 
=II 
responseII &
.II& '
ContentII' .
.II. /
ReadAsStringAsyncII/ @
(II@ A
)IIA B
.IIB C
ResultIIC I
;III J
UniversityListJJ 
=JJ  
JsonConvertJJ! ,
.JJ, -
DeserializeObjectJJ- >
<JJ> ?
ListJJ? C
<JJC D
UniversityViewModelJJD W
>JJW X
>JJX Y
(JJY Z
dataJJZ ^
)JJ^ _
;JJ_ `
varKK 

universityKK 
=KK  
UniversityListKK! /
.KK/ 0
WhereKK0 5
(KK5 6
eKK6 7
=>KK8 :
eKK; <
.KK< =
idKK= ?
==KK@ B
idKKC E
)KKE F
.KKF G
FirstOrDefaultKKG U
(KKU V
)KKV W
;KKW X
_imapperLL 
.LL 
MapLL 
<LL 
UniversityModelApiLL +
>LL+ ,
(LL, -

universityLL- 7
)LL7 8
;LL8 9
returnMM 
ViewMM 
(MM 

universityMM "
)MM" #
;MM# $
}NN 
[OO 
HttpPostOO 
]OO 
publicPP 
IActionResultPP 
SavePP !
(PP! "
UniversityViewModelPP" 5

universityPP6 @
)PP@ A
{QQ 
usingRR 
(RR 
varRR 
clientRR !
=RR" #
newRR$ '

HttpClientRR( 2
(RR2 3
)RR3 4
)RR4 5
{SS 
clientTT 
.TT 
BaseAddressTT &
=TT' (
newTT) ,
UriTT- 0
(TT0 1
$strTT1 N
)TTN O
;TTO P
varUU 
putUU 
=UU 
clientUU $
.UU$ %
PutAsJsonAsyncUU% 3
(UU3 4
$"UU4 6
$strUU6 D
{UUD E

universityUUE O
.UUO P
idUUP R
}UUR S
"UUS T
,UUT U

universityUUV `
)UU` a
;UUa b
putVV 
.VV 
WaitVV 
(VV 
)VV 
;VV 
varWW 
resultWW 
=WW  
putWW! $
.WW$ %
ResultWW% +
;WW+ ,
ifXX 
(XX 
resultXX 
.XX 
IsSuccessStatusCodeXX 2
)XX2 3
{YY 
returnZZ 
RedirectToActionZZ /
(ZZ/ 0
$strZZ0 7
)ZZ7 8
;ZZ8 9
}[[ 
}]] 

ModelState^^ 
.^^ 
AddModelError^^ (
(^^( )
string^^) /
.^^/ 0
Empty^^0 5
,^^5 6
$str^^7 E
)^^E F
;^^F G
return`` 
View`` 
(`` 
)`` 
;`` 
}bb 
[cc 	
	Authorizecc	 
(cc 
policycc 
:cc 
$strcc (
)cc( )
]cc) *
publicdd 
IActionResultdd 
Deletedd #
(dd# $
intdd$ '
iddd( *
)dd* +
{ee 
usingff 
(ff 
varff 
clientff !
=ff" #
newff$ '

HttpClientff( 2
(ff2 3
)ff3 4
)ff4 5
{gg 
clienthh 
.hh 
BaseAddresshh &
=hh' (
newhh) ,
Urihh- 0
(hh0 1
$strhh1 Y
)hhY Z
;hhZ [
varii 
deleteii 
=ii  
clientii! '
.ii' (
DeleteAsyncii( 3
(ii3 4
$"ii4 6
{ii6 7
idii7 9
}ii9 :
"ii: ;
)ii; <
;ii< =
deletejj 
.jj 
Waitjj 
(jj  
)jj  !
;jj! "
varkk 
resultkk 
=kk  
deletekk! '
.kk' (
Resultkk( .
;kk. /
ifll 
(ll 
resultll 
.ll 
IsSuccessStatusCodell 2
)ll2 3
{mm 
returnnn 
RedirectToActionnn /
(nn/ 0
$strnn0 7
)nn7 8
;nn8 9
}oo 
}pp 

ModelStateqq 
.qq 
AddModelErrorqq (
(qq( )
stringqq) /
.qq/ 0
Emptyqq0 5
,qq5 6
$strqq7 E
)qqE F
;qqF G
returnss 
Viewss 
(ss 
)ss 
;ss 
}uu 
}yy 	
}zz ¨ˆ
cD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Migrations\20220829015832_initial.cs
	namespace 	
UniversityMVCWebApp
 
. 

Migrations (
{ 
public 

partial 
class 
initial  
:! "
	Migration# ,
{		 
	protected

 
override

 
void

 
Up

  "
(

" #
MigrationBuilder

# 3
migrationBuilder

4 D
)

D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str  
,  !
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 E
,E F
	maxLengthG P
:P Q
$numR T
,T U
nullableV ^
:^ _
false` e
)e f
,f g
	PanNumber 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
type5 9
:9 :
$str; I
,I J
	maxLengthK T
:T U
$numV X
,X Y
nullableZ b
:b c
falsed i
)i j
,j k
Password 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
	maxLengthK T
:T U
$numV Y
,Y Z
nullable[ c
:c d
falsee j
)j k
,k l
ConfirmPassword #
=$ %
table& +
.+ ,
Column, 2
<2 3
string3 9
>9 :
(: ;
type; ?
:? @
$strA P
,P Q
	maxLengthR [
:[ \
$num] `
,` a
nullableb j
:j k
falsel q
)q r
,r s
RoleName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: H
,H I
	maxLengthJ S
:S T
$numU W
,W X
nullableY a
:a b
falsec h
)h i
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 2
,2 3
x4 5
=>6 8
x9 :
.: ;
Id; =
)= >
;> ?
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{   
Id!! 
=!! 
table!! 
.!! 
Column!! %
<!!% &
string!!& ,
>!!, -
(!!- .
type!!. 2
:!!2 3
$str!!4 C
,!!C D
nullable!!E M
:!!M N
false!!O T
)!!T U
,!!U V
Name"" 
="" 
table""  
.""  !
Column""! '
<""' (
string""( .
>"". /
(""/ 0
type""0 4
:""4 5
$str""6 E
,""E F
	maxLength""G P
:""P Q
$num""R U
,""U V
nullable""W _
:""_ `
true""a e
)""e f
,""f g
NormalizedName## "
=### $
table##% *
.##* +
Column##+ 1
<##1 2
string##2 8
>##8 9
(##9 :
type##: >
:##> ?
$str##@ O
,##O P
	maxLength##Q Z
:##Z [
$num##\ _
,##_ `
nullable##a i
:##i j
true##k o
)##o p
,##p q
ConcurrencyStamp$$ $
=$$% &
table$$' ,
.$$, -
Column$$- 3
<$$3 4
string$$4 :
>$$: ;
($$; <
type$$< @
:$$@ A
$str$$B Q
,$$Q R
nullable$$S [
:$$[ \
true$$] a
)$$a b
}%% 
,%% 
constraints&& 
:&& 
table&& "
=>&&# %
{'' 
table(( 
.(( 

PrimaryKey(( $
((($ %
$str((% 5
,((5 6
x((7 8
=>((9 ;
x((< =
.((= >
Id((> @
)((@ A
;((A B
})) 
))) 
;)) 
migrationBuilder++ 
.++ 
CreateTable++ (
(++( )
name,, 
:,, 
$str,, #
,,,# $
columns-- 
:-- 
table-- 
=>-- !
new--" %
{.. 
Id// 
=// 
table// 
.// 
Column// %
<//% &
string//& ,
>//, -
(//- .
type//. 2
://2 3
$str//4 C
,//C D
nullable//E M
://M N
false//O T
)//T U
,//U V
	PanNumber00 
=00 
table00  %
.00% &
Column00& ,
<00, -
string00- 3
>003 4
(004 5
type005 9
:009 :
$str00; I
,00I J
	maxLength00K T
:00T U
$num00V X
,00X Y
nullable00Z b
:00b c
false00d i
)00i j
,00j k
UserName11 
=11 
table11 $
.11$ %
Column11% +
<11+ ,
string11, 2
>112 3
(113 4
type114 8
:118 9
$str11: I
,11I J
	maxLength11K T
:11T U
$num11V Y
,11Y Z
nullable11[ c
:11c d
true11e i
)11i j
,11j k
NormalizedUserName22 &
=22' (
table22) .
.22. /
Column22/ 5
<225 6
string226 <
>22< =
(22= >
type22> B
:22B C
$str22D S
,22S T
	maxLength22U ^
:22^ _
$num22` c
,22c d
nullable22e m
:22m n
true22o s
)22s t
,22t u
Email33 
=33 
table33 !
.33! "
Column33" (
<33( )
string33) /
>33/ 0
(330 1
type331 5
:335 6
$str337 F
,33F G
	maxLength33H Q
:33Q R
$num33S V
,33V W
nullable33X `
:33` a
true33b f
)33f g
,33g h
NormalizedEmail44 #
=44$ %
table44& +
.44+ ,
Column44, 2
<442 3
string443 9
>449 :
(44: ;
type44; ?
:44? @
$str44A P
,44P Q
	maxLength44R [
:44[ \
$num44] `
,44` a
nullable44b j
:44j k
true44l p
)44p q
,44q r
EmailConfirmed55 "
=55# $
table55% *
.55* +
Column55+ 1
<551 2
bool552 6
>556 7
(557 8
type558 <
:55< =
$str55> C
,55C D
nullable55E M
:55M N
false55O T
)55T U
,55U V
PasswordHash66  
=66! "
table66# (
.66( )
Column66) /
<66/ 0
string660 6
>666 7
(667 8
type668 <
:66< =
$str66> M
,66M N
nullable66O W
:66W X
true66Y ]
)66] ^
,66^ _
SecurityStamp77 !
=77" #
table77$ )
.77) *
Column77* 0
<770 1
string771 7
>777 8
(778 9
type779 =
:77= >
$str77? N
,77N O
nullable77P X
:77X Y
true77Z ^
)77^ _
,77_ `
ConcurrencyStamp88 $
=88% &
table88' ,
.88, -
Column88- 3
<883 4
string884 :
>88: ;
(88; <
type88< @
:88@ A
$str88B Q
,88Q R
nullable88S [
:88[ \
true88] a
)88a b
,88b c
PhoneNumber99 
=99  !
table99" '
.99' (
Column99( .
<99. /
string99/ 5
>995 6
(996 7
type997 ;
:99; <
$str99= L
,99L M
nullable99N V
:99V W
true99X \
)99\ ]
,99] ^ 
PhoneNumberConfirmed:: (
=::) *
table::+ 0
.::0 1
Column::1 7
<::7 8
bool::8 <
>::< =
(::= >
type::> B
:::B C
$str::D I
,::I J
nullable::K S
:::S T
false::U Z
)::Z [
,::[ \
TwoFactorEnabled;; $
=;;% &
table;;' ,
.;;, -
Column;;- 3
<;;3 4
bool;;4 8
>;;8 9
(;;9 :
type;;: >
:;;> ?
$str;;@ E
,;;E F
nullable;;G O
:;;O P
false;;Q V
);;V W
,;;W X

LockoutEnd<< 
=<<  
table<<! &
.<<& '
Column<<' -
<<<- .
DateTimeOffset<<. <
><<< =
(<<= >
type<<> B
:<<B C
$str<<D T
,<<T U
nullable<<V ^
:<<^ _
true<<` d
)<<d e
,<<e f
LockoutEnabled== "
===# $
table==% *
.==* +
Column==+ 1
<==1 2
bool==2 6
>==6 7
(==7 8
type==8 <
:==< =
$str==> C
,==C D
nullable==E M
:==M N
false==O T
)==T U
,==U V
AccessFailedCount>> %
=>>& '
table>>( -
.>>- .
Column>>. 4
<>>4 5
int>>5 8
>>>8 9
(>>9 :
type>>: >
:>>> ?
$str>>@ E
,>>E F
nullable>>G O
:>>O P
false>>Q V
)>>V W
}?? 
,?? 
constraints@@ 
:@@ 
table@@ "
=>@@# %
{AA 
tableBB 
.BB 

PrimaryKeyBB $
(BB$ %
$strBB% 5
,BB5 6
xBB7 8
=>BB9 ;
xBB< =
.BB= >
IdBB> @
)BB@ A
;BBA B
}CC 
)CC 
;CC 
migrationBuilderEE 
.EE 
CreateTableEE (
(EE( )
nameFF 
:FF 
$strFF '
,FF' (
columnsGG 
:GG 
tableGG 
=>GG !
newGG" %
{HH 
EmailII 
=II 
tableII !
.II! "
ColumnII" (
<II( )
stringII) /
>II/ 0
(II0 1
typeII1 5
:II5 6
$strII7 E
,IIE F
	maxLengthIIG P
:IIP Q
$numIIR T
,IIT U
nullableIIV ^
:II^ _
falseII` e
)IIe f
,IIf g
StatusJJ 
=JJ 
tableJJ "
.JJ" #
ColumnJJ# )
<JJ) *
stringJJ* 0
>JJ0 1
(JJ1 2
typeJJ2 6
:JJ6 7
$strJJ8 G
,JJG H
nullableJJI Q
:JJQ R
falseJJS X
)JJX Y
}KK 
,KK 
constraintsLL 
:LL 
tableLL "
=>LL# %
{MM 
tableNN 
.NN 

PrimaryKeyNN $
(NN$ %
$strNN% 9
,NN9 :
xNN; <
=>NN= ?
xNN@ A
.NNA B
EmailNNB G
)NNG H
;NNH I
}OO 
)OO 
;OO 
migrationBuilderQQ 
.QQ 
CreateTableQQ (
(QQ( )
nameRR 
:RR 
$strRR (
,RR( )
columnsSS 
:SS 
tableSS 
=>SS !
newSS" %
{TT 
IdUU 
=UU 
tableUU 
.UU 
ColumnUU %
<UU% &
intUU& )
>UU) *
(UU* +
typeUU+ /
:UU/ 0
$strUU1 6
,UU6 7
nullableUU8 @
:UU@ A
falseUUB G
)UUG H
.VV 

AnnotationVV #
(VV# $
$strVV$ 8
,VV8 9
$strVV: @
)VV@ A
,VVA B
RoleIdWW 
=WW 
tableWW "
.WW" #
ColumnWW# )
<WW) *
stringWW* 0
>WW0 1
(WW1 2
typeWW2 6
:WW6 7
$strWW8 G
,WWG H
nullableWWI Q
:WWQ R
falseWWS X
)WWX Y
,WWY Z
	ClaimTypeXX 
=XX 
tableXX  %
.XX% &
ColumnXX& ,
<XX, -
stringXX- 3
>XX3 4
(XX4 5
typeXX5 9
:XX9 :
$strXX; J
,XXJ K
nullableXXL T
:XXT U
trueXXV Z
)XXZ [
,XX[ \

ClaimValueYY 
=YY  
tableYY! &
.YY& '
ColumnYY' -
<YY- .
stringYY. 4
>YY4 5
(YY5 6
typeYY6 :
:YY: ;
$strYY< K
,YYK L
nullableYYM U
:YYU V
trueYYW [
)YY[ \
}ZZ 
,ZZ 
constraints[[ 
:[[ 
table[[ "
=>[[# %
{\\ 
table]] 
.]] 

PrimaryKey]] $
(]]$ %
$str]]% :
,]]: ;
x]]< =
=>]]> @
x]]A B
.]]B C
Id]]C E
)]]E F
;]]F G
table^^ 
.^^ 

ForeignKey^^ $
(^^$ %
name__ 
:__ 
$str__ F
,__F G
column`` 
:`` 
x``  !
=>``" $
x``% &
.``& '
RoleId``' -
,``- .
principalTableaa &
:aa& '
$straa( 5
,aa5 6
principalColumnbb '
:bb' (
$strbb) -
,bb- .
onDeletecc  
:cc  !
ReferentialActioncc" 3
.cc3 4
Cascadecc4 ;
)cc; <
;cc< =
}dd 
)dd 
;dd 
migrationBuilderff 
.ff 
CreateTableff (
(ff( )
namegg 
:gg 
$strgg (
,gg( )
columnshh 
:hh 
tablehh 
=>hh !
newhh" %
{ii 
Idjj 
=jj 
tablejj 
.jj 
Columnjj %
<jj% &
intjj& )
>jj) *
(jj* +
typejj+ /
:jj/ 0
$strjj1 6
,jj6 7
nullablejj8 @
:jj@ A
falsejjB G
)jjG H
.kk 

Annotationkk #
(kk# $
$strkk$ 8
,kk8 9
$strkk: @
)kk@ A
,kkA B
UserIdll 
=ll 
tablell "
.ll" #
Columnll# )
<ll) *
stringll* 0
>ll0 1
(ll1 2
typell2 6
:ll6 7
$strll8 G
,llG H
nullablellI Q
:llQ R
falsellS X
)llX Y
,llY Z
	ClaimTypemm 
=mm 
tablemm  %
.mm% &
Columnmm& ,
<mm, -
stringmm- 3
>mm3 4
(mm4 5
typemm5 9
:mm9 :
$strmm; J
,mmJ K
nullablemmL T
:mmT U
truemmV Z
)mmZ [
,mm[ \

ClaimValuenn 
=nn  
tablenn! &
.nn& '
Columnnn' -
<nn- .
stringnn. 4
>nn4 5
(nn5 6
typenn6 :
:nn: ;
$strnn< K
,nnK L
nullablennM U
:nnU V
truennW [
)nn[ \
}oo 
,oo 
constraintspp 
:pp 
tablepp "
=>pp# %
{qq 
tablerr 
.rr 

PrimaryKeyrr $
(rr$ %
$strrr% :
,rr: ;
xrr< =
=>rr> @
xrrA B
.rrB C
IdrrC E
)rrE F
;rrF G
tabless 
.ss 

ForeignKeyss $
(ss$ %
namett 
:tt 
$strtt F
,ttF G
columnuu 
:uu 
xuu  !
=>uu" $
xuu% &
.uu& '
UserIduu' -
,uu- .
principalTablevv &
:vv& '
$strvv( 5
,vv5 6
principalColumnww '
:ww' (
$strww) -
,ww- .
onDeletexx  
:xx  !
ReferentialActionxx" 3
.xx3 4
Cascadexx4 ;
)xx; <
;xx< =
}yy 
)yy 
;yy 
migrationBuilder{{ 
.{{ 
CreateTable{{ (
({{( )
name|| 
:|| 
$str|| (
,||( )
columns}} 
:}} 
table}} 
=>}} !
new}}" %
{~~ 
LoginProvider !
=" #
table$ )
.) *
Column* 0
<0 1
string1 7
>7 8
(8 9
type9 =
:= >
$str? N
,N O
nullableP X
:X Y
falseZ _
)_ `
,` a
ProviderKey
ÄÄ 
=
ÄÄ  !
table
ÄÄ" '
.
ÄÄ' (
Column
ÄÄ( .
<
ÄÄ. /
string
ÄÄ/ 5
>
ÄÄ5 6
(
ÄÄ6 7
type
ÄÄ7 ;
:
ÄÄ; <
$str
ÄÄ= L
,
ÄÄL M
nullable
ÄÄN V
:
ÄÄV W
false
ÄÄX ]
)
ÄÄ] ^
,
ÄÄ^ _!
ProviderDisplayName
ÅÅ '
=
ÅÅ( )
table
ÅÅ* /
.
ÅÅ/ 0
Column
ÅÅ0 6
<
ÅÅ6 7
string
ÅÅ7 =
>
ÅÅ= >
(
ÅÅ> ?
type
ÅÅ? C
:
ÅÅC D
$str
ÅÅE T
,
ÅÅT U
nullable
ÅÅV ^
:
ÅÅ^ _
true
ÅÅ` d
)
ÅÅd e
,
ÅÅe f
UserId
ÇÇ 
=
ÇÇ 
table
ÇÇ "
.
ÇÇ" #
Column
ÇÇ# )
<
ÇÇ) *
string
ÇÇ* 0
>
ÇÇ0 1
(
ÇÇ1 2
type
ÇÇ2 6
:
ÇÇ6 7
$str
ÇÇ8 G
,
ÇÇG H
nullable
ÇÇI Q
:
ÇÇQ R
false
ÇÇS X
)
ÇÇX Y
}
ÉÉ 
,
ÉÉ 
constraints
ÑÑ 
:
ÑÑ 
table
ÑÑ "
=>
ÑÑ# %
{
ÖÖ 
table
ÜÜ 
.
ÜÜ 

PrimaryKey
ÜÜ $
(
ÜÜ$ %
$str
ÜÜ% :
,
ÜÜ: ;
x
ÜÜ< =
=>
ÜÜ> @
new
ÜÜA D
{
ÜÜE F
x
ÜÜG H
.
ÜÜH I
LoginProvider
ÜÜI V
,
ÜÜV W
x
ÜÜX Y
.
ÜÜY Z
ProviderKey
ÜÜZ e
}
ÜÜf g
)
ÜÜg h
;
ÜÜh i
table
áá 
.
áá 

ForeignKey
áá $
(
áá$ %
name
àà 
:
àà 
$str
àà F
,
ààF G
column
ââ 
:
ââ 
x
ââ  !
=>
ââ" $
x
ââ% &
.
ââ& '
UserId
ââ' -
,
ââ- .
principalTable
ää &
:
ää& '
$str
ää( 5
,
ää5 6
principalColumn
ãã '
:
ãã' (
$str
ãã) -
,
ãã- .
onDelete
åå  
:
åå  !
ReferentialAction
åå" 3
.
åå3 4
Cascade
åå4 ;
)
åå; <
;
åå< =
}
çç 
)
çç 
;
çç 
migrationBuilder
èè 
.
èè 
CreateTable
èè (
(
èè( )
name
êê 
:
êê 
$str
êê '
,
êê' (
columns
ëë 
:
ëë 
table
ëë 
=>
ëë !
new
ëë" %
{
íí 
UserId
ìì 
=
ìì 
table
ìì "
.
ìì" #
Column
ìì# )
<
ìì) *
string
ìì* 0
>
ìì0 1
(
ìì1 2
type
ìì2 6
:
ìì6 7
$str
ìì8 G
,
ììG H
nullable
ììI Q
:
ììQ R
false
ììS X
)
ììX Y
,
ììY Z
RoleId
îî 
=
îî 
table
îî "
.
îî" #
Column
îî# )
<
îî) *
string
îî* 0
>
îî0 1
(
îî1 2
type
îî2 6
:
îî6 7
$str
îî8 G
,
îîG H
nullable
îîI Q
:
îîQ R
false
îîS X
)
îîX Y
}
ïï 
,
ïï 
constraints
ññ 
:
ññ 
table
ññ "
=>
ññ# %
{
óó 
table
òò 
.
òò 

PrimaryKey
òò $
(
òò$ %
$str
òò% 9
,
òò9 :
x
òò; <
=>
òò= ?
new
òò@ C
{
òòD E
x
òòF G
.
òòG H
UserId
òòH N
,
òòN O
x
òòP Q
.
òòQ R
RoleId
òòR X
}
òòY Z
)
òòZ [
;
òò[ \
table
ôô 
.
ôô 

ForeignKey
ôô $
(
ôô$ %
name
öö 
:
öö 
$str
öö E
,
ööE F
column
õõ 
:
õõ 
x
õõ  !
=>
õõ" $
x
õõ% &
.
õõ& '
RoleId
õõ' -
,
õõ- .
principalTable
úú &
:
úú& '
$str
úú( 5
,
úú5 6
principalColumn
ùù '
:
ùù' (
$str
ùù) -
,
ùù- .
onDelete
ûû  
:
ûû  !
ReferentialAction
ûû" 3
.
ûû3 4
Cascade
ûû4 ;
)
ûû; <
;
ûû< =
table
üü 
.
üü 

ForeignKey
üü $
(
üü$ %
name
†† 
:
†† 
$str
†† E
,
††E F
column
°° 
:
°° 
x
°°  !
=>
°°" $
x
°°% &
.
°°& '
UserId
°°' -
,
°°- .
principalTable
¢¢ &
:
¢¢& '
$str
¢¢( 5
,
¢¢5 6
principalColumn
££ '
:
££' (
$str
££) -
,
££- .
onDelete
§§  
:
§§  !
ReferentialAction
§§" 3
.
§§3 4
Cascade
§§4 ;
)
§§; <
;
§§< =
}
•• 
)
•• 
;
•• 
migrationBuilder
ßß 
.
ßß 
CreateTable
ßß (
(
ßß( )
name
®® 
:
®® 
$str
®® (
,
®®( )
columns
©© 
:
©© 
table
©© 
=>
©© !
new
©©" %
{
™™ 
UserId
´´ 
=
´´ 
table
´´ "
.
´´" #
Column
´´# )
<
´´) *
string
´´* 0
>
´´0 1
(
´´1 2
type
´´2 6
:
´´6 7
$str
´´8 G
,
´´G H
nullable
´´I Q
:
´´Q R
false
´´S X
)
´´X Y
,
´´Y Z
LoginProvider
¨¨ !
=
¨¨" #
table
¨¨$ )
.
¨¨) *
Column
¨¨* 0
<
¨¨0 1
string
¨¨1 7
>
¨¨7 8
(
¨¨8 9
type
¨¨9 =
:
¨¨= >
$str
¨¨? N
,
¨¨N O
nullable
¨¨P X
:
¨¨X Y
false
¨¨Z _
)
¨¨_ `
,
¨¨` a
Name
≠≠ 
=
≠≠ 
table
≠≠  
.
≠≠  !
Column
≠≠! '
<
≠≠' (
string
≠≠( .
>
≠≠. /
(
≠≠/ 0
type
≠≠0 4
:
≠≠4 5
$str
≠≠6 E
,
≠≠E F
nullable
≠≠G O
:
≠≠O P
false
≠≠Q V
)
≠≠V W
,
≠≠W X
Value
ÆÆ 
=
ÆÆ 
table
ÆÆ !
.
ÆÆ! "
Column
ÆÆ" (
<
ÆÆ( )
string
ÆÆ) /
>
ÆÆ/ 0
(
ÆÆ0 1
type
ÆÆ1 5
:
ÆÆ5 6
$str
ÆÆ7 F
,
ÆÆF G
nullable
ÆÆH P
:
ÆÆP Q
true
ÆÆR V
)
ÆÆV W
}
ØØ 
,
ØØ 
constraints
∞∞ 
:
∞∞ 
table
∞∞ "
=>
∞∞# %
{
±± 
table
≤≤ 
.
≤≤ 

PrimaryKey
≤≤ $
(
≤≤$ %
$str
≤≤% :
,
≤≤: ;
x
≤≤< =
=>
≤≤> @
new
≤≤A D
{
≤≤E F
x
≤≤G H
.
≤≤H I
UserId
≤≤I O
,
≤≤O P
x
≤≤Q R
.
≤≤R S
LoginProvider
≤≤S `
,
≤≤` a
x
≤≤b c
.
≤≤c d
Name
≤≤d h
}
≤≤i j
)
≤≤j k
;
≤≤k l
table
≥≥ 
.
≥≥ 

ForeignKey
≥≥ $
(
≥≥$ %
name
¥¥ 
:
¥¥ 
$str
¥¥ F
,
¥¥F G
column
µµ 
:
µµ 
x
µµ  !
=>
µµ" $
x
µµ% &
.
µµ& '
UserId
µµ' -
,
µµ- .
principalTable
∂∂ &
:
∂∂& '
$str
∂∂( 5
,
∂∂5 6
principalColumn
∑∑ '
:
∑∑' (
$str
∑∑) -
,
∑∑- .
onDelete
∏∏  
:
∏∏  !
ReferentialAction
∏∏" 3
.
∏∏3 4
Cascade
∏∏4 ;
)
∏∏; <
;
∏∏< =
}
ππ 
)
ππ 
;
ππ 
migrationBuilder
ªª 
.
ªª 
CreateIndex
ªª (
(
ªª( )
name
ºº 
:
ºº 
$str
ºº )
,
ºº) *
table
ΩΩ 
:
ΩΩ 
$str
ΩΩ !
,
ΩΩ! "
column
ææ 
:
ææ 
$str
ææ 
,
ææ  
unique
øø 
:
øø 
true
øø 
)
øø 
;
øø 
migrationBuilder
¡¡ 
.
¡¡ 
CreateIndex
¡¡ (
(
¡¡( )
name
¬¬ 
:
¬¬ 
$str
¬¬ 2
,
¬¬2 3
table
√√ 
:
√√ 
$str
√√ )
,
√√) *
column
ƒƒ 
:
ƒƒ 
$str
ƒƒ  
)
ƒƒ  !
;
ƒƒ! "
migrationBuilder
∆∆ 
.
∆∆ 
CreateIndex
∆∆ (
(
∆∆( )
name
«« 
:
«« 
$str
«« %
,
««% &
table
»» 
:
»» 
$str
»» $
,
»»$ %
column
…… 
:
…… 
$str
…… (
,
……( )
unique
   
:
   
true
   
,
   
filter
ÀÀ 
:
ÀÀ 
$str
ÀÀ 6
)
ÀÀ6 7
;
ÀÀ7 8
migrationBuilder
ÕÕ 
.
ÕÕ 
CreateIndex
ÕÕ (
(
ÕÕ( )
name
ŒŒ 
:
ŒŒ 
$str
ŒŒ 2
,
ŒŒ2 3
table
œœ 
:
œœ 
$str
œœ )
,
œœ) *
column
–– 
:
–– 
$str
––  
)
––  !
;
––! "
migrationBuilder
““ 
.
““ 
CreateIndex
““ (
(
““( )
name
”” 
:
”” 
$str
”” 2
,
””2 3
table
‘‘ 
:
‘‘ 
$str
‘‘ )
,
‘‘) *
column
’’ 
:
’’ 
$str
’’  
)
’’  !
;
’’! "
migrationBuilder
◊◊ 
.
◊◊ 
CreateIndex
◊◊ (
(
◊◊( )
name
ÿÿ 
:
ÿÿ 
$str
ÿÿ 1
,
ÿÿ1 2
table
ŸŸ 
:
ŸŸ 
$str
ŸŸ (
,
ŸŸ( )
column
⁄⁄ 
:
⁄⁄ 
$str
⁄⁄  
)
⁄⁄  !
;
⁄⁄! "
migrationBuilder
‹‹ 
.
‹‹ 
CreateIndex
‹‹ (
(
‹‹( )
name
›› 
:
›› 
$str
›› "
,
››" #
table
ﬁﬁ 
:
ﬁﬁ 
$str
ﬁﬁ $
,
ﬁﬁ$ %
column
ﬂﬂ 
:
ﬂﬂ 
$str
ﬂﬂ )
)
ﬂﬂ) *
;
ﬂﬂ* +
migrationBuilder
·· 
.
·· 
CreateIndex
·· (
(
··( )
name
‚‚ 
:
‚‚ 
$str
‚‚ %
,
‚‚% &
table
„„ 
:
„„ 
$str
„„ $
,
„„$ %
column
‰‰ 
:
‰‰ 
$str
‰‰ ,
,
‰‰, -
unique
ÂÂ 
:
ÂÂ 
true
ÂÂ 
,
ÂÂ 
filter
ÊÊ 
:
ÊÊ 
$str
ÊÊ :
)
ÊÊ: ;
;
ÊÊ; <
migrationBuilder
ËË 
.
ËË 
CreateIndex
ËË (
(
ËË( )
name
ÈÈ 
:
ÈÈ 
$str
ÈÈ 0
,
ÈÈ0 1
table
ÍÍ 
:
ÍÍ 
$str
ÍÍ (
,
ÍÍ( )
column
ÎÎ 
:
ÎÎ 
$str
ÎÎ 
,
ÎÎ  
unique
ÏÏ 
:
ÏÏ 
true
ÏÏ 
)
ÏÏ 
;
ÏÏ 
}
ÌÌ 	
	protected
ÔÔ 
override
ÔÔ 
void
ÔÔ 
Down
ÔÔ  $
(
ÔÔ$ %
MigrationBuilder
ÔÔ% 5
migrationBuilder
ÔÔ6 F
)
ÔÔF G
{
 	
migrationBuilder
ÒÒ 
.
ÒÒ 
	DropTable
ÒÒ &
(
ÒÒ& '
name
ÚÚ 
:
ÚÚ 
$str
ÚÚ  
)
ÚÚ  !
;
ÚÚ! "
migrationBuilder
ÙÙ 
.
ÙÙ 
	DropTable
ÙÙ &
(
ÙÙ& '
name
ıı 
:
ıı 
$str
ıı (
)
ıı( )
;
ıı) *
migrationBuilder
˜˜ 
.
˜˜ 
	DropTable
˜˜ &
(
˜˜& '
name
¯¯ 
:
¯¯ 
$str
¯¯ (
)
¯¯( )
;
¯¯) *
migrationBuilder
˙˙ 
.
˙˙ 
	DropTable
˙˙ &
(
˙˙& '
name
˚˚ 
:
˚˚ 
$str
˚˚ (
)
˚˚( )
;
˚˚) *
migrationBuilder
˝˝ 
.
˝˝ 
	DropTable
˝˝ &
(
˝˝& '
name
˛˛ 
:
˛˛ 
$str
˛˛ '
)
˛˛' (
;
˛˛( )
migrationBuilder
ÄÄ 
.
ÄÄ 
	DropTable
ÄÄ &
(
ÄÄ& '
name
ÅÅ 
:
ÅÅ 
$str
ÅÅ (
)
ÅÅ( )
;
ÅÅ) *
migrationBuilder
ÉÉ 
.
ÉÉ 
	DropTable
ÉÉ &
(
ÉÉ& '
name
ÑÑ 
:
ÑÑ 
$str
ÑÑ '
)
ÑÑ' (
;
ÑÑ( )
migrationBuilder
ÜÜ 
.
ÜÜ 
	DropTable
ÜÜ &
(
ÜÜ& '
name
áá 
:
áá 
$str
áá #
)
áá# $
;
áá$ %
migrationBuilder
ââ 
.
ââ 
	DropTable
ââ &
(
ââ& '
name
ää 
:
ää 
$str
ää #
)
ää# $
;
ää$ %
}
ãã 	
}
åå 
}çç ◊
bD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Migrations\20220829021845_second.cs
	namespace 	
UniversityMVCWebApp
 
. 

Migrations (
{ 
public 

partial 
class 
second 
:  !
	Migration" +
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
AlterColumn (
<( )
string) /
>/ 0
(0 1
name 
: 
$str  
,  !
table 
: 
$str !
,! "
type 
: 
$str $
,$ %
	maxLength 
: 
$num 
, 
nullable 
: 
false 
,  

oldClrType 
: 
typeof "
(" #
string# )
)) *
,* +
oldType 
: 
$str (
,( )
oldMaxLength 
: 
$num !
)! "
;" #
migrationBuilder 
. 
AlterColumn (
<( )
string) /
>/ 0
(0 1
name 
: 
$str '
,' (
table 
: 
$str !
,! "
type 
: 
$str $
,$ %
	maxLength 
: 
$num 
, 
nullable 
: 
false 
,  

oldClrType 
: 
typeof "
(" #
string# )
)) *
,* +
oldType 
: 
$str (
,( )
oldMaxLength 
: 
$num !
)! "
;" #
} 	
	protected   
override   
void   
Down    $
(  $ %
MigrationBuilder  % 5
migrationBuilder  6 F
)  F G
{!! 	
migrationBuilder"" 
."" 
AlterColumn"" (
<""( )
string"") /
>""/ 0
(""0 1
name## 
:## 
$str##  
,##  !
table$$ 
:$$ 
$str$$ !
,$$! "
type%% 
:%% 
$str%% %
,%%% &
	maxLength&& 
:&& 
$num&& 
,&& 
nullable'' 
:'' 
false'' 
,''  

oldClrType(( 
:(( 
typeof(( "
(((" #
string((# )
)(() *
,((* +
oldType)) 
:)) 
$str)) '
,))' (
oldMaxLength** 
:** 
$num**  
)**  !
;**! "
migrationBuilder,, 
.,, 
AlterColumn,, (
<,,( )
string,,) /
>,,/ 0
(,,0 1
name-- 
:-- 
$str-- '
,--' (
table.. 
:.. 
$str.. !
,..! "
type// 
:// 
$str// %
,//% &
	maxLength00 
:00 
$num00 
,00 
nullable11 
:11 
false11 
,11  

oldClrType22 
:22 
typeof22 "
(22" #
string22# )
)22) *
,22* +
oldType33 
:33 
$str33 '
,33' (
oldMaxLength44 
:44 
$num44  
)44  !
;44! "
}55 	
}66 
}77  
WD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Models\AdminViewModel.cs
	namespace 	
UniversityMVCWebApp
 
. 
Models $
{ 
public 

class 
AdminViewModel 
{ 
internal 
string 
UserName  
;  !
[ 	
Key	 
] 
[		 	
Required			 
]		 
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
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
	PanNumber 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
) 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[ 	
	MinLength	 
( 
$num 
) 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public   
string   
RoleName   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
}## 
}$$ ª
WD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Models\ErrorViewModel.cs
	namespace 	
UniversityMVCWebApp
 
. 
Models $
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
? 
	RequestId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
} 
}		 ™
XD:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Models\StatusViewModel.cs
	namespace 	
UniversityMVCWebApp
 
. 
Models $
{ 
public 

class 
StatusViewModel  
{ 
[ 	
Key	 
] 
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public"" 
string"" 
Status"" 
{"" 
get"" "
;""" #
set""$ '
;""' (
}"") *
}## 
}$$ À
\D:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Models\UniversityViewModel.cs
	namespace 	
UniversityMVCWebApp
 
. 
Models $
{ 
public 

class 
UniversityViewModel $
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
string 
universityName $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
location 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
affiliatedUnder %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public		 
int		 
establishedYear		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
} 
} —#
ID:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
var 
connectionString 
= 
builder 
. 
Configuration ,
., -
GetConnectionString- @
(@ A
$strA g
)g h
??i k
throwl q
newr u&
InvalidOperationException	v è
(
è ê
$str
ê ’
)
’ ÷
;
÷ ◊
builder 
. 
Services 
. 
AddDbContext 
< &
UniversityMVCWebAppContext 8
>8 9
(9 :
options: A
=>B D
options		 
.		 
UseSqlServer		 
(		 
connectionString		 )
)		) *
)		* +
;		+ ,
builder 
. 
Services 
. 
AddIdentity 
< #
UniversityMVCWebAppUser 4
,4 5
IdentityRole5 A
>A B
(B C
optionsC J
=>K M
optionsN U
.U V
SignInV \
.\ ]#
RequireConfirmedAccount] t
=u v
falsew |
)| }
. 
AddDefaultUI 
( 
) 
. $
AddEntityFrameworkStores ,
<, -&
UniversityMVCWebAppContext- G
>G H
(H I
)I J
;J K
builder 
. 
Services 
. 
	AddScoped 
< &
UniversityMVCWebAppContext 5
>5 6
(6 7
)7 8
;8 9
builder 
. 
Services 
. 
AddAuthorization !
(! "
options" )
=>* ,
{- .
options 
. 
	AddPolicy 
( 
$str &
,& '
builder 
=> 
builder 
. 
RequireRole &
(& '
$str' 1
)1 2
)2 3
;3 4
options 
. 
	AddPolicy 
( 
$str #
,# $
builder 
=> 
builder 
. 
RequireRole &
(& '
$str' .
). /
)/ 0
;0 1
} 
) 
; 
builder 
. 
Services 
. #
AddControllersWithViews (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddAutoMapper 
( 
typeof %
(% &
Program& -
)- .
). /
;/ 0
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if   
(   
!   
app   
.   	
Environment  	 
.   
IsDevelopment   "
(  " #
)  # $
)  $ %
{!! 
app"" 
."" 
UseExceptionHandler"" 
("" 
$str"" )
)"") *
;""* +
app$$ 
.$$ 
UseHsts$$ 
($$ 
)$$ 
;$$ 
}%% 
app'' 
.'' 
UseHttpsRedirection'' 
('' 
)'' 
;'' 
app(( 
.(( 
UseStaticFiles(( 
((( 
)(( 
;(( 
app** 
.** 

UseRouting** 
(** 
)** 
;** 
app++ 
.++ 
UseAuthentication++ 
(++ 
)++ 
;++ 
;++ 
app-- 
.-- 
UseAuthorization-- 
(-- 
)-- 
;-- 
app// 
.// 
MapControllerRoute// 
(// 
name00 
:00 	
$str00
 
,00 
pattern11 
:11 
$str11 5
)115 6
;116 7
app22 
.22 
MapRazorPages22 
(22 
)22 
;22 
app33 
.33 
Run33 
(33 
)33 	
;33	 
Í
_D:\Final_Assignments_Repo\UniversityWebAPI\UniversityMVCWebApp\Repository\IDataRepositoryMvc.cs
	namespace 	
UniversityMVCWebApp
 
. 

Repository (
{ 
public 

class 
IDataRepositoryMvc #
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