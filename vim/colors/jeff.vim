set background=dark
highlight clear
if exists("syntax on")
	syntax reset
endif
let g:colors_name="jeff"
hi Normal guifg=#b0bfbf guibg=#303030
hi Comment guifg=#80a0ff guibg=NONE
hi Constant guifg=#00c414 guibg=NONE
hi String guifg=#d90000 guibg=NONE
hi htmlTagName guifg=#0098cf guibg=NONE
hi Identifier guifg=#40ffff guibg=NONE
hi Statement guifg=#d0ff00 guibg=NONE
hi PreProc guifg=#fa2afa guibg=NONE
hi Type guifg=#60ff60 guibg=NONE
hi Function guifg=#90a6e8 guibg=NONE
hi Repeat guifg=#3fd100 guibg=NONE
hi Operator guifg=#a15900 guibg=NONE
hi Error guibg=#ff0000 guifg=#ffffff
hi TODO guibg=#0011ff guifg=#ffffff
hi link character	constant
hi link number	constant
hi link boolean	constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link htmlTag	Special
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special