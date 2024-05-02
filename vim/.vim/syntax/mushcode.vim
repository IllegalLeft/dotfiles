" Vim syntax file
" Language:     8bitMUSHcode
" Maintainer:   Samuel Volk <samivolk16@gmail.com>
" Last Change:  May 1, 2024
" Credits:      Luigi for maintaining the help files.
"               Based on MUSHcode syntax file by Rick Bird.
"

if exists("b:current_syntax")
    finish
endif

syn case ignore


" Commands
"
" Communication
syn keyword mushcodeCommand     whisper page say pose semipose teach
" Exploration
syn keyword mushcodeCommand     move go home follow unfollow desert
syn keyword mushcodeCommand     dismiss
" Senses
syn keyword mushcodeCommand     listen look smell taste touch
" User Info
syn keyword mushcodeCommand     who where face score
" Misc.
syn keyword mushcodeCommand     battle outputprefix outputsuffix idle view


" AtCommands
"
" Building
syn keyword mushcodeAtCmd contained @DIG @LINK @UNLINK @OPEN @DESC
syn keyword mushcodeAtCmd contained @LOCK @UNLOCK
syn keyword mushcodeAtCmd contained @FAIL @OFAIL @AFAIL @SUCC @OSUCC @ASUCC
syn keyword mushcodeAtCmd contained @NAMEFORMAT @CONFORMAT @EXITFORMAT
syn keyword mushcodeAtCmd contained @FIRSTEXIT
" Creating Objects
syn keyword mushcodeAtCmd contained @CREATE
syn keyword mushcodeAtCmd contained @SCENT @SOUND @TOUCH @TASTE
syn keyword mushcodeAtCmd contained @OSCENT @OSOUND @OTOUCH @OTASTE
syn keyword mushcodeAtCmd contained @ASCENT @ASOUND @ATOUCH @ATASTE
syn keyword mushcodeAtCmd contained @DROP @ODROP @ADROP
syn keyword mushcodeAtCmd contained @DROPFAIL @ADROPFAIL @ODROPFAIL
syn keyword mushcodeAtCmd contained @CLONE @PARENT
" Listening
syn keyword mushcodeAtCmd contained @LISTEN @AHEAR @AAHEAR @AMHEAR
" Attributes
syn keyword mushcodeAtCmd contained @SET @WIPE @APPEND @PREPEND @MVATTR @CPATTR
syn keyword mushcodeAtCmd contained @EDIT @EXFILTER @INCREMENT @DECREMENT
syn keyword mushcodeAtCmd contained @VERB @SETVERB @TRIGGER @TR
syn keyword mushcodeAtCmd contained @ATRCHOWN @ATRLOCK @BREAKGROUP
" Puppets/Vehicles/Containers
syn keyword mushcodeAtCmd contained @IDESCRIBE
syn keyword mushcodeAtCmd contained @PREFIX @INPREFIX @FILTER @INFILTER @FORWARDLIST
syn keyword mushcodeAtCmd contained @ENTER @OENTER @AENTER @OXENTER
syn keyword mushcodeAtCmd contained @LEAVE @OLEAVE @ALEAVE @OXLEAVE
syn keyword mushcodeAtCmd contained @EALIAS @LEALIAS
syn keyword mushcodeAtCmd contained @EFAIL @LFAIL @OEFAIL @OLFAIL @AEFAIL @ALFAIL
syn keyword mushcodeAtCmd contained @ISCENT @ISOUND @ITOUCH @ITASTE
syn keyword mushcodeAtCmd contained @OISCENT @OISOUND @OITOUCH @OITASTE
syn keyword mushcodeAtCmd contained @AISCENT @AISOUND @AITOUCH @AITASTE
" Vendors
syn keyword mushcodeAtCmd contained @COST @CHARGES @RUNOUT
syn keyword mushcodeAtCmd contained @PAY @OPAY @APAY @PAYFAIL @OPAYFAIL @APAYFAIL
syn keyword mushcodeAtCmd contained @RECEIVEFAIL @ORECEIVEFAIL @ARECEIVEFAIL
syn keyword mushcodeAtCmd contained @GIVEFAIL @OGIVEFAIL @AGIVEFAIL
" Clothing
syn keyword mushcodeAtCmd contained @HOLD @OHOLD @AHOLD @UNHOLD @AUNHOLD
syn keyword mushcodeAtCmd contained @WEAR @OWEAR @AWEAR
syn keyword mushcodeAtCmd contained @UNWEAR @OUNWEAR @AUNWEAR
syn keyword mushcodeAtCmd contained @WEARFAIL @OWEARFAIL @AWEARFAIL
syn keyword mushcodeAtCmd contained @UNWEARFAIL @OUNWEARFAIL @AUNWEARFAIL
syn keyword mushcodeAtCmd contained @HOLDFAIL @OHOLDFAIL @AHOLDFAIL
syn keyword mushcodeAtCmd contained @UNHOLDFAIL @OUNHOLDFAIL @AUNHOLDFAIL
" Motion
syn keyword mushcodeAtCmd contained @MOVE @OMOVE @AMOVE @ALMOVE @OXMOVE
syn keyword mushcodeAtCmd contained @TPORT @OTPORT @ATPORT @OXTPORT
syn keyword mushcodeAtCmd contained @FOLLOW @UNFOLLOW
" Scheduling
syn keyword mushcodeAtCmd contained @WAIT @NOTIFY @DRAIN @KILL @HALT
syn keyword mushcodeAtCmd contained @PS @STARTUP
syn keyword mushcodeAtCmd contained @MINUTELY @OMINUTELY @AMINUTELY
syn keyword mushcodeAtCmd contained @HOURLY @OHOURLY @AHOURLY
syn keyword mushcodeAtCmd contained @DAILY @ODAILY @ADAILY
syn keyword mushcodeAtCmd contained @WEEKLY @OWEEKLY @AWEEKLY
syn keyword mushcodeAtCmd contained @MONTHLY @OMONTHLY @AMONTHLY
" Sending Messages
syn keyword mushcodeAtCmd contained @EMIT @PEMIT @REMIT @LEMIT @OEMIT
" Zones
syn keyword mushcodeAtCmd contained @ZLEAVE @ZENTER @CHZONE @ZEMIT
" Iterators
syn keyword mushcodeAtCmd contained @DOLIST @MAP
" Loops & Conditionals
syn keyword mushcodeAtCmd contained @SWITCH @SELECT @IF @WHILE @UNTIL
" User-Defined Functions
syn keyword mushcodeAtCmd contained @FUNCTIONS @FUNCTIONFORMAT
" Food
syn keyword mushcodeAtCmd contained @EAT @OEAT
syn keyword mushcodeAtCmd contained @EATFAIL @OEATFAIL
syn keyword mushcodeAtCmd contained @EATSERVING @OEATSERVING @AEATSERVING
syn keyword mushcodeAtCmd contained @COOK @SERVINGSIZE

" Bathrooms
syn keyword mushcodeAtCmd contained @BATHROOM @OBATHROOM @ABATHROOM
" Misc.
syn keyword mushcodeAtCmd contained @@ @ACONNECT @ADISCONNECT @SPEECHFORMAT
syn keyword mushcodeAtCmd contained @NAME @ALIAS @SEX @DOING @AWAY @IDLE
syn keyword mushcodeAtCmd contained @DEATH @ODEATH @ADEATH @APLAYERDESTROY
syn keyword mushcodeAtCmd contained @USE @OUSE @AUSE @USEFAIL
syn keyword mushcodeAtCmd contained @ACLONE @BREAK @ASSERT
syn keyword mushcodeAtCmd contained @PAGELOCK @PAGEFAIL @MAILFAIL @SPEECHFAIL

syntax match mushcodeCommand "@\i\I*" contains=mushcodeAtCmd


" Flags
syn keyword mushcodeFlag    ABODE ANSI BATHROOM CHOWN_OK COLOR
syn keyword mushcodeFlag    DARK EXIT FLOATING FIXED
syn keyword mushcodeFlag    GOING HAVEN TRUST INHERIT
syn keyword mushcodeFlag    JUMP_OK LINK_OK MONITOR
syn keyword mushcodeFlag    NOSPOOF NO_TEL NO_LEAVE PLAYER
syn keyword mushcodeFlag    QUIET ROOM STICKY
syn keyword mushcodeFlag    TINTED_WINDOWS EDIBLE VISUAL
syn keyword mushcodeFlag    WIZARD SAFE DRINKABLE ZONE Z_TEL

syn keyword mushcodeFlag    AUDIBLE DEBUG CONNECTED
syn keyword mushcodeFlag    DESTROY_OK ENTER_OK FUNCTIONS
syn keyword mushcodeFlag    GAGGED HALT FORCE_WHITE
syn keyword mushcodeFlag    LIGHT MYOPIC NO_COMMAND
syn keyword mushcodeFlag    ON-VACATION PUPPET PARANOID OPAQUE
syn keyword mushcodeFlag    ROYALTY SUSPECT TRANSPARENT
syn keyword mushcodeFlag    UNTAMPERED VERBOSE TERSE CLOUDY
syn keyword mushcodeFlag    SMOKEY LISTEN_PARENT HUNGRY
syn keyword mushcodeFlag    COINLOSS


" Functions
"
" sorted alphabetically,
" including function obj. #10, #25 & #99
syn keyword mushcodeFunction contained @@
syn keyword mushcodeFunction contained abs acos add after alphamax alphamin
syn keyword mushcodeFunction contained and andflags ansi aposs art asc asin
syn keyword mushcodeFunction contained atan atrlock
syn keyword mushcodeFunction contained bakerdays band bargraph
syn keyword mushcodeFunction contained bargraphbottomlabel bargraphleftlabel
syn keyword mushcodeFunction contained baseconv before bnand bnot bodybuild bor
syn keyword mushcodeFunction contained boughtproduct bound box brackets bxor
syn keyword mushcodeFunction contained c cand capall capstr carried case caseall
syn keyword mushcodeFunction contained cat catalog ceil center cflags channels
syn keyword mushcodeFunction contained children clock clone commandssent comp
syn keyword mushcodeFunction contained companyabb companyicon companylist
syn keyword mushcodeFunction contained companyname companyowners companyvalue
syn keyword mushcodeFunction contained con config conn containsfansi controls convsecs
syn keyword mushcodeFunction contained convtime convutcsecs cook cor cos create
syn keyword mushcodeFunction contained createmaze ctime ctitle ctrailer cwho
syn keyword mushcodeFunction contained darttime debt dec decompose decrypt
syn keyword mushcodeFunction contained default delete deletepicture detailbar
syn keyword mushcodeFunction contained dist2d dist3d die dig div doing drawmaze
syn keyword mushcodeFunction contained drawwireframe
syn keyword mushcodeFunction contained e edefault edit element elements
syn keyword mushcodeFunction contained ellipsecoords elock emit employees
syn keyword mushcodeFunction contained encrypt entrances eq escape etimefmt
syn keyword mushcodeFunction contained eval exit exp exploredroom extract
syn keyword mushcodeFunction contained fansitoansi fansitoxansi fbclear fbclip
syn keyword mushcodeFunction contained fbcopy fbcopyto fbcreate fbdestroy fbdump
syn keyword mushcodeFunction contained fbflush fbhget fbhset fblist fbsave
syn keyword mushcodeFunction contained fbscaleto fbstats fbwrite fdiv filter
syn keyword mushcodeFunction contained filterbool findable first flags floor
syn keyword mushcodeFunction contained floordiv fmod fold followers foreach
syn keyword mushcodeFunction contained fullbar fullname
syn keyword mushcodeFunction contained get get_eval getaddressroom
syn keyword mushcodeFunction contained getpicturesecurity grab graball gradient
syn keyword mushcodeFunction contained grep grepi gt gte
syn keyword mushcodeFunction contained halfbar hasattr hasattrp hasattrpval
syn keyword mushcodeFunction contained hasattrval hasflag haspicture haspower
syn keyword mushcodeFunction contained hastype held hidden home
syn keyword mushcodeFunction contained ibreak idle if ilev inc index insert
syn keyword mushcodeFunction contained inum invested investors isbaker isdarted
syn keyword mushcodeFunction contained isdaylight isdbref isint isletters
syn keyword mushcodeFunction contained isnewbie isnum isword itemize items iter
syn keyword mushcodeFunction contained itext
syn keyword mushcodeFunction contained lambda last latestproductssold lattr
syn keyword mushcodeFunction contained lcon lcstr ldelete left lemit lerp lerpi
syn keyword mushcodeFunction contained lexits linecoords link listpictures
syn keyword mushcodeFunction contained listpropertycomm listpropertyres lit
syn keyword mushcodeFunction contained ljust lmath ln lnum lobjects loc localize
syn keyword mushcodeFunction contained locate lock log lotowner lotrating
syn keyword mushcodeFunction contained lotratingcount lotvalue lparent lplayers
syn keyword mushcodeFunction contained lsearch lsearchr lstats lt lte lthings
syn keyword mushcodeFunction contained lvexits lvobjects lvplayers lvthings
syn keyword mushcodeFunction contained map match
syn keyword mushcodeFunction contained matchall max mean median member merge
syn keyword mushcodeFunction contained mid min mix mod modulo money msecs mtime
syn keyword mushcodeFunction contained mul munge
syn keyword mushcodeFunction contained name nameshort nand nattr nearby neq
syn keyword mushcodeFunction contained newswrap next nlsearch noise nor not
syn keyword mushcodeFunction contained null num numsuffix
syn keyword mushcodeFunction contained obj objeval oemit open or orflags
syn keyword mushcodeFunction contained ostrlen owner
syn keyword mushcodeFunction contained parent pemit pendingtext percent photo
syn keyword mushcodeFunction contained pi pick picturesize piechart
syn keyword mushcodeFunction contained piechartlabel play playerson
syn keyword mushcodeFunction contained playersthisweek pmatch poll pos poss
syn keyword mushcodeFunction contained power powers previewnoise productcompany
syn keyword mushcodeFunction contained productdescription productlist
syn keyword mushcodeFunction contained productname productowners productrating
syn keyword mushcodeFunction contained productratingcount productsoldat
syn keyword mushcodeFunction contained producttype
syn keyword mushcodeFunction contained qentriesqentry
syn keyword mushcodeFunction contained r rand randomad randword ratedproduct
syn keyword mushcodeFunction contained realrandword receivedtext regedit
syn keyword mushcodeFunction contained regeditall regeditalli regediti regmatch
syn keyword mushcodeFunction contained regmatchi regrab regraball regraballi
syn keyword mushcodeFunction contained regrabi regrep regrepi remainder remit
syn keyword mushcodeFunction contained remove repeat replace replacechr
syn keyword mushcodeFunction contained replacecolor rest restarts restarttime
syn keyword mushcodeFunction contained reverse revwords rgbtocolor right rjust
syn keyword mushcodeFunction contained rloc rnum room round
syn keyword mushcodeFunction contained s savepicture scramble second secs
syn keyword mushcodeFunction contained secure set setdiff setinter
syn keyword mushcodeFunction contained setpicturesecurity setq setr setunion
syn keyword mushcodeFunction contained shl shortestpath showpicture shr shuffle
syn keyword mushcodeFunction contained sign sin soldproduct sort sortby soundex
syn keyword mushcodeFunction contained soundslike space spellnum splice
syn keyword mushcodeFunction contained splitamount sqrt squish starttime stddev
syn keyword mushcodeFunction contained step strcat strinsert stripansi
syn keyword mushcodeFunction contained stripfansi strlen strlenall strmatch sub
syn keyword mushcodeFunction contained subj switch switchall
syn keyword mushcodeFunction contained t table tan tel text third time timefmt
syn keyword mushcodeFunction contained timestring tmoney tofansi topproducts
syn keyword mushcodeFunction contained totalac totalspentonproduct totalstock
syn keyword mushcodeFunction contained tr transfermoney trim type
syn keyword mushcodeFunction contained ucstr udefault ufun uldefault ulocal
syn keyword mushcodeFunction contained unique uniquebuyercount
syn keyword mushcodeFunction contained uniqueproductsbought unsafe utctime
syn keyword mushcodeFunction contained v vadd val valid validcompany
syn keyword mushcodeFunction contained vdim vdot visible vmag vmax vmin vmul
syn keyword mushcodeFunction contained vsub vunit
syn keyword mushcodeFunction contained where who wipe wordpos words worn wrap
syn keyword mushcodeFunction contained xget xor
syn keyword mushcodeFunction contained zemit zfun zone

syntax match mushFunctionBrackets   "\i*(" contains=mushcodeFunction



" Numbers
syntax match mushcodeNumber     +[0-9]\++

" Substitutions
syn match mushcodeSubstitution  /%[0-9]/
syn match mushcodeSubstitution  /%[brtn#]/
syn match mushcodeSubstitution  /%[sopa]/
syn match mushcodeSubstitution  /%[vwx][a-z]/
syn match mushcodeSubstitution  /%[@!LcC?i]/
syn match mushcodeSubstitution  /%i[0-9]/
syn match mushcodeSubstitution  /##/

" Dbrefs
syn match mushcodeDbref         /#[0-9]/


" Globals
" User Info
syn keyword mushcodeGlobal +who +where +finger +face +score
" Statistics
syn keyword mushcodeGlobal +company +con +portfolio +poll +age +eq +events
syn keyword mushcodeGlobal +pon +exp +medals +awards +today +past +fitness
syn keyword mushcodeGlobal +timeline +who2 +who3 +who4 +who5
" Lots
syn keyword mushcodeGlobal +property +lots +clots +map
" Misc.
syn keyword mushcodeGlobal +pairs +palette +namedcolors +c +photo +idphoto
syn keyword mushcodeGlobal +time +jobs +setup

syn match mushcodeGlobal "+\i\I*" contains=mushcodeGlobal


" Highlights
highlight default link mushcodeCommand      Keyword
highlight default link mushcodeAtCmd        Keyword
highlight default link mushcodeFlag         Special
highlight default link mushcodeFunction     Function
highlight default link mushcodeNumber       Number
highlight default link mushcodeSubstitution Identifier
