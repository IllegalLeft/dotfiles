" Vim syntax file
" Language:     MUSHcode
" Maintainer:   Samuel Volk <samivolk16@gmail.com>
" Last Change:  2014 Mar 21
" Credits:      Luigi for maintaining the help files!
"

if exists("b:current_syntax")
    finish
endif

" Commands
"
" Communication
syn keyword mushcodeCommand     whisper, page, say, pose, semipose, teach
" Exploration
syn keyword mushcodeCommand     move, go, home, follow, unfollow, desert
syn keyword mushcodeCommand     dismiss
" Senses
syn keyword mushcodeCommand     listen, look, smell, taste, touch
" User Info
syn keyword mushcodeCommand     who, where, face, score

" Functions
"
" sorted alphabetically
" dist2d, dist3d
syn keyword mushcodeFunction    @@ abs acos add after alphamax alphamin and
syn keyword mushcodeFunction    andflags ansi aposs art asc asin atan
syn keyword mushcodeFunction    atrlock bakerdays band bargraph
syn keyword mushcodeFunction    bargraphbottomlabel bargraphleftlabel
syn keyword mushcodeFunction    baseconv before bnand bnot bodybuild bor
syn keyword mushcodeFunction    boughtproduct bound box brackets bxor c cand
syn keyword mushcodeFunction    capall capstr carried case caseall cat
syn keyword mushcodeFunction    catalog ceil center cflags channels children
syn keyword mushcodeFunction    clock clone commandssent comp companyabb
syn keyword mushcodeFunction    companyicon companylist companyname
syn keyword mushcodeFunction    companyowners companyvalue con conn
syn keyword mushcodeFunction    containsfansi controls convsecs convtime
syn keyword mushcodeFunction    convutcsecs cook cor cos create createmaze
syn keyword mushcodeFunction    ctime ctitle ctrailer cwho darttime debt dec
syn keyword mushcodeFunction    decompose decrypt default delete deletepicture
syn keyword mushcodeFunction    detailbar die dig div doing drawmaze
syn keyword mushcodeFunction    drawwireframe e edefault edit element
syn keyword mushcodeFunction    elements ellipsecoords elock emit employees
syn keyword mushcodeFunction    encrypt entrances eq escape etimefmt eval
syn keyword mushcodeFunction    exit exp exploredroom extract fansitoansi
syn keyword mushcodeFunction    fansitoxansi fbclear fbclip fbcopy fbcopyto
syn keyword mushcodeFunction    fbcreate fbdestroy fbdump fbflush fbhget
syn keyword mushcodeFunction    fbhset fblist fbsave fbscaleto fbstats
syn keyword mushcodeFunction    fbwrite fdiv filter filterbool findable first
syn keyword mushcodeFunction    flags floor floordiv fmod fold followers
syn keyword mushcodeFunction    foreach fullbar fullname get get_eval
syn keyword mushcodeFunction    getaddressroom getpicturesecurity grab graball
syn keyword mushcodeFunction    gradient grep grepi gt gte halfbar hasattr
syn keyword mushcodeFunction    hasattrp hasattrpval hasattrval hasflag
syn keyword mushcodeFunction    haspicture haspower hastype held hidden home
syn keyword mushcodeFunction    ibreak idle if ilev inc index insert inum
syn keyword mushcodeFunction    invested investors isbaker isdarted
syn keyword mushcodeFunction    isdaylight isdbref isint isletters isnewbie
syn keyword mushcodeFunction    isnum isword itemize items iter itext lambda
syn keyword mushcodeFunction    last latestproductssold lattr lcon lcstr
syn keyword mushcodeFunction    ldelete left lemit lerp lerpi lexits
syn keyword mushcodeFunction    linecoords link listpictures listpropertycomm
syn keyword mushcodeFunction    listpropertyres lit ljust lmath ln lnum
syn keyword mushcodeFunction    lobjects loc localize locate lock log lotowner
syn keyword mushcodeFunction    lotrating lotratingcount lotvalue lparent
syn keyword mushcodeFunction    lplayers lsearch lsearchr lstats lt lte lthings
syn keyword mushcodeFunction    lvexits lvobjects lvplayers lvthings map match
syn keyword mushcodeFunction    matchall max mean median member merge mid min
syn keyword mushcodeFunction    mix mod modulo money msecs mtime mul munge name
syn keyword mushcodeFunction    nameshort nand nattr nearby neq newswrap next
syn keyword mushcodeFunction    nlsearch noise nor not null num numsuffix obj
syn keyword mushcodeFunction    objeval oemit open or orflags ostrlen owner
syn keyword mushcodeFunction    parent pemit pendingtext percent photo pi pick
syn keyword mushcodeFunction    picturesize piechart piechartlabel play
syn keyword mushcodeFunction    playerson playersthisweek pmatch poll pos poss
syn keyword mushcodeFunction    power powers previewnoise productcompany
syn keyword mushcodeFunction    productdescription productlist productname
syn keyword mushcodeFunction    productowners productrating productratingcount
syn keyword mushcodeFunction    productsoldat producttype qentriesqentry r rand
syn keyword mushcodeFunction    randomad randword ratedproduct realrandword
syn keyword mushcodeFunction    receivedtext regedit regeditall regeditalli
syn keyword mushcodeFunction    regediti regmatch regmatchi regrab regraball
syn keyword mushcodeFunction    regraballi regrabi regrep regrepi remainder
syn keyword mushcodeFunction    remit remove repeat replace replacechr
syn keyword mushcodeFunction    replacecolor rest restarts restarttime reverse
syn keyword mushcodeFunction    revwords rgbtocolor right rjust rloc rnum room
syn keyword mushcodeFunction    round s savepicture scramble second secs secure
syn keyword mushcodeFunction    set setdiff setinter setpicturesecurity setq
syn keyword mushcodeFunction    setr setunion shl shortestpath showpicture shr
syn keyword mushcodeFunction    shuffle sign sin soldproduct sort sortby
syn keyword mushcodeFunction    soundex soundslike space spellnum splice
syn keyword mushcodeFunction    splitamount sqrt squish starttime stddev step
syn keyword mushcodeFunction    strcat strinsert stripansi stripfansi strlen
syn keyword mushcodeFunction    strlenall strmatch sub subj switch switchall t
syn keyword mushcodeFunction    table tan tel text third time timefmt
syn keyword mushcodeFunction    timestring tmoney tofansi topproducts totalac
syn keyword mushcodeFunction    totalspentonproduct totalstock tr transfermoney
syn keyword mushcodeFunction    trim type ucstr udefault ufun uldefault ulocal
syn keyword mushcodeFunction    unique uniquebuyercount uniqueproductsbought
syn keyword mushcodeFunction    unsafe utctime v vadd val valid validcompany
syn keyword mushcodeFunction    vdim vdot visible vmag vmax vmin vmul vsub
syn keyword mushcodeFunction    vunit where who wipe wordpos words worn wrap
syn keyword mushcodeFunction    xget xor zemit zfun zone
