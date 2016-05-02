" Vim syntax file
" Language:     play
" Maintainer:   Samuel Volk <samivolk16@gmail.com>
" Last Change:  2014 Jun 26
" Credits:      Luigi for maintaining the help files!
"

if exists("b:current_syntax")
    finish
endif

syn match   playNumber      /[Nn][0-9]+/hs=s+1,he=e
syn match   playNote        /[a-gA-G]/hs=s,he=e
syn keyword playModifier    # - + < > .

syn match   playPause       /[Pp][0-9]*/hs=s,he=e
syn match   playLength      /[lL][0-9]*/hs=s,he=e
syn match   playOctave      /[Oo][0-9]*/hs=s,he=e

syn match   playTempo       /[tT][0-9]*/hs=s,he=e
syn match   playFunction    /[mM][nNlLsS]/hs=s,he=e
syn match   playChannels    /[mM][fFbBxX]/hs=s,he=e

syn match   playInvalid     /[wW]/hs=s,he=e



hi default link playNumber      Number
hi default link playNote        Identifier
hi default link playModifier    Comment

hi default link playPause       Special
hi default link playLength      Special
hi default link playOctave      Special

hi default link playTempo       TypeDef
hi default link playFunction    TypeDef
hi default link playChannels    TypeDef

hi default link playInvalid     Error
