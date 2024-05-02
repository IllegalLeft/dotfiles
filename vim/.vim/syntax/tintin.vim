" Vim Syntax File
" Language: TinTin++
" Maintainer: Samuel Volk
" Latest Revision: 1 May 2024

if exists("b:current_syntax")
    finish
endif

syntax case ignore

" Keywords
syntax keyword ttCommand #action #alias #all
syntax keyword ttCommand #bell #break #buffer
syntax keyword ttCommand #case #cat #chat #class #commands #config
syntax keyword ttCommand #conttue #cr #cursor
syntax keyword ttCommand #daemon #debug #default #delay #draw
syntax keyword ttCommand #echo #edit #else #elseif #end #event
syntax keyword ttCommand #foreach #format #function
syntax keyword ttCommand #gag #grep
syntax keyword ttCommand #help #highlight #history
syntax keyword ttCommand #if #ignore #info
syntax keyword ttCommand #kill
syntax keyword ttCommand #line #list #local #log #loop
syntax keyword ttCommand #macro #map #math #message
syntax keyword ttCommand #nop
syntax keyword ttCommand #parse #path #pathdir #port #prompt
syntax keyword ttCommand #read #regexp #replace #return #run
syntax keyword ttCommand #scan #screen #script #send #session #show #snoop
syntax keyword ttCommand #split #ssl #sub #substitute #switch #system
syntax keyword ttCommand #tab #textt #ticker
syntax keyword ttCommand #var #variable
syntax keyword ttCommand #while #write
syntax keyword ttCommand #zap

syntax match ttCommand "#\i\I*" contains=ttCommand


syntax keyword ttTodo      TODO XXX FIXME NOTE


" Matches
syntax match    ttNumber   /[0-9]+/
syntax match    ttValue    /{.*}/
syntax match    ttComment  /\/\*.*\*\//


" Highlight Links
highlight def link ttCommand  Keyword
highlight def link ttTodo     Todo

highlight def link ttNumber   Number
highlight def link ttValue    Number
highlight def link ttComment  Comment



