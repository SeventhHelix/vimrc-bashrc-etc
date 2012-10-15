"{{{Misc Settings

" Necesary  for lots of cool vim things
set nocompatible

" This shows what you are typing as a command.
set showcmd

" Folding Stuffs
set foldmethod=marker
set foldmarker={,}
set foldlevelstart=10

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
filetype plugin indent on
syntax enable
syntax on
set grepprg=grep\ -nH\ $*

" Who doesn't like autoindent?
set autoindent

" Spaces are better than a tab character
set expandtab
set smarttab

" Who wants an 8 character tab?  Not me!
set shiftwidth=4
set softtabstop=4

" Real men use gcc
compiler gcc

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Enable mouse support in console
set mouse=a

" Got backspace?
set backspace=2

" Line Numbers on
set number

" Ignoring case is a fun trick
set ignorecase

" And so is Artificial Intellegence!
set smartcase

" Remap j and k mashing to escape 
inoremap jj <Esc>
inoremap kj <Esc>
inoremap JJ <Esc>
inoremap KJ <Esc>

" Typing [i] has always annoyed me...
inoremap ii [i]

" Incremental searching is sexy
set incsearch

" Highlight things that we find with the search
set hlsearch

" When I close a tab, remove the buffer
set nohidden

" Set off the other paren
highlight MatchParen ctermbg=4

"Scrolling starts 5 lines before window border 
set scrolloff=5

"History stuff
set history=500
set undolevels=500

" }}}

"{{{Filetype specific Settings
autocmd FileType tex setlocal shiftwidth=4 tabstop=4
"}}}

"{{{Look and Feel

"Status line
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" }}}

"{{{Theme Rotating
let themeindex=0
function! RotateColorTheme()
   let y = -1
   while y == -1
      "let colorstring = "inkpot#ron#blue#elflord#evening#koehler#murphy#pablo#desert#torte#"
      let colorstring = "herald_JeffCustom#inkpot#elflord#koehler#wombat256#desert#"
      let x = match( colorstring, "#", g:themeindex )
      let y = match( colorstring, "#", x + 1 )
      let g:themeindex = x + 1
      if y == -1
         let g:themeindex = 0
      else
         let themestring = strpart(colorstring, x + 1, y - x - 1)
         return ":colorscheme ".themestring
      endif
   endwhile
endfunction
" }}}


"{{{ Mappings

" Next Tab
nnoremap <silent> <C-l> :tabnext<CR>

" Previous Tab
nnoremap <silent> <C-h> :tabprev<CR>

" New Tab
" nnoremap <silent> <C-t> :tabnew<CR>
" Conflicts with ctags


" Split stuff
set winminheight=0


" Rotate Color Scheme <F7>
nnoremap <silent> <F7> :execute RotateColorTheme()<CR>

" Up and down are more logical with g..
nnoremap <silent> k gk
nnoremap <silent> j gj

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

" Space will toggle folds!
nnoremap <space> za

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz

" Swap ; and :  Convenient.
nnoremap ; :
"nnoremap : ;

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Make Y behave like other capitals
map Y y$


"}}}

"{{{ Old Tags Stuff
" configure tags - add additional tags here or comment out not-used ones
"set tags+=~/.vimtags
"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
"set tags+=~/.vim/tags/qt4

" build tags of your own project with Ctrl-F12
" map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
"let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"}}}


" automatically open and close the popup menu / preview window
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"set completeopt=menuone,menu,longest,preview



"{{{Scroll Color stuff
map <silent><F5> :NEXTCOLOR<cr>
map <silent><F4> :PREVCOLOR<cr>
"}}}

:set cursorline

" Switched to vundle
"call pathogen#infect()

"{{{ Vundle Code
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

"Github bundles:
Bundle 'xolox/vim-easytags'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
    set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

    let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'



" vim-scripts repos
Bundle 'a.vim'
    " CTRL-A Switches between .h and .{c,C,cpp}
    nnoremap <C-a> :A<CR> 

Bundle 'c.vim'
Bundle 'ScrollColors'
Bundle 'snipMate'
Bundle 'taglist.vim'
    "{{{Taglist configuration
    nnoremap <F2> :TlistToggle<CR>
        let Tlist_Use_Right_Window = 1 " Open taglist on the right side
        let Tlist_Exit_OnlyWindow = 1 "if taglist window is the only window left, exit vim
        let Tlist_Show_Menu = 1 "show Tags menu in gvim
        let Tlist_GainFocus_On_ToggleOpen = 1 "automatically switch to taglist window
        let Tlist_Highlight_Tag_On_BufEnter = 1 "highlight current tag in taglist window
        let Tlist_Display_Prototype = 1 "display full prototype instead of just function name
    "}}}

Bundle 'The-NERD-tree'
    nnoremap <F3> :NERDTreeToggle<CR>
    let g:NERDTreeWinSize = 20

Bundle 'LaTeX-Suite-aka-Vim-LaTeX'
    "{{{Vim LaTeX stuff
    set grepprg="grep \ -nH\ $*" "Set for latex-vim
    " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
    " " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
    " " The following changes the default filetype back to 'tex':
    let g:tex_flavor='latex'
    "
    let g:Tex_DefaultTargetFormat = "pdf"
    let g:Tex_ViewRule_pdf = "kpdf"
    "}}}


"}}}

filetype on

" This may cause a weird blinking VIM bug on certain terminals
:let &t_Co=256
colorscheme herald_JeffCustom
