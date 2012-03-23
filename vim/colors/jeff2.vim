" Generated by Color Theme Generator at Sweyla
" http://themes.sweyla.com/seed/845148/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "sweyla845148"

if version >= 700
  hi CursorLine     guibg=#070007 ctermbg=232
  hi CursorColumn   guibg=#070007 ctermbg=232
  hi MatchParen     guifg=#70FF99 guibg=#070007 gui=bold ctermfg=84 ctermbg=232 cterm=bold
  hi Pmenu          guifg=#FFFFFF guibg=#323232 ctermfg=255 ctermbg=236
  hi PmenuSel       guifg=#FFFFFF guibg=#8FA6FF ctermfg=255 ctermbg=111
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#FFFFFF ctermbg=255 gui=none
hi Normal           guifg=#FFFFFF guibg=#070007 gui=none ctermfg=255 ctermbg=232 cterm=none
hi NonText          guifg=#FFFFFF guibg=#160F16 gui=none ctermfg=255 ctermbg=233 cterm=none
hi LineNr           guifg=#FFFFFF guibg=#201920 gui=none ctermfg=255 ctermbg=234 cterm=none
hi StatusLine       guifg=#FFFFFF guibg=#222138 gui=italic ctermfg=255 ctermbg=235 cterm=italic
hi StatusLineNC     guifg=#FFFFFF guibg=#2F282F gui=none ctermfg=255 ctermbg=236 cterm=none
hi VertSplit        guifg=#FFFFFF guibg=#201920 gui=none ctermfg=255 ctermbg=234 cterm=none
hi Folded           guifg=#FFFFFF guibg=#070007 gui=none ctermfg=255 ctermbg=232 cterm=none
hi Title            guifg=#8FA6FF guibg=NONE	gui=bold ctermfg=111 ctermbg=NONE cterm=bold
hi Visual           guifg=#E3FFFF guibg=#323232 gui=none ctermfg=195 ctermbg=236 cterm=none
hi SpecialKey       guifg=#FFA08F guibg=#160F16 gui=none ctermfg=216 ctermbg=233 cterm=none
"hi DiffChange       guibg=#514C04 gui=none ctermbg=58 cterm=none
"hi DiffAdd          guibg=#2A2551 gui=none ctermbg=235 cterm=none
"hi DiffText         guibg=#6A326A gui=none ctermbg=242 cterm=none
"hi DiffDelete       guibg=#450005 gui=none ctermbg=52 cterm=none
 
hi DiffChange       guibg=#4C4C09 gui=none ctermbg=234 cterm=none
hi DiffAdd          guibg=#252556 gui=none ctermbg=17 cterm=none
hi DiffText         guibg=#66326E gui=none ctermbg=22 cterm=none
hi DiffDelete       guibg=#3F000A gui=none ctermbg=0 ctermfg=196 cterm=none
hi TabLineFill      guibg=#5E5E5E gui=none ctermbg=235 ctermfg=228 cterm=none
hi TabLineSel       guifg=#FFFFD7 gui=bold ctermfg=230 cterm=bold


" Syntax highlighting
hi Comment guifg=#8FA6FF gui=none ctermfg=111 cterm=none
hi Constant guifg=#FFA08F gui=none ctermfg=216 cterm=none
hi Number guifg=#FFA08F gui=none ctermfg=216 cterm=none
hi Identifier guifg=#9EFF6A gui=none ctermfg=155 cterm=none
hi Statement guifg=#70FF99 gui=none ctermfg=84 cterm=none
hi Function guifg=#95FFC9 gui=none ctermfg=122 cterm=none
hi Special guifg=#04A59B gui=none ctermfg=36 cterm=none
hi PreProc guifg=#04A59B gui=none ctermfg=36 cterm=none
hi Keyword guifg=#70FF99 gui=none ctermfg=84 cterm=none
hi String guifg=#E3FFFF gui=none ctermfg=195 cterm=none
hi Type guifg=#98F4FF gui=none ctermfg=123 cterm=none
hi pythonBuiltin guifg=#9EFF6A gui=none ctermfg=155 cterm=none
hi TabLineFill guifg=#5F666A gui=none ctermfg=241 cterm=none

