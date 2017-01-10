"{{{Misc Settings

" Set the python interpreter -- Neovim specific
let g:python_host_prog = '/usr/bin/python2.7'

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

" Set auto indent
set autoindent

" Use spaces instead of tabs
set expandtab
set smarttab

" Set 4 character tabs/spaces
set shiftwidth=4
set softtabstop=4

au BufRead,BufNewFile *.coffee set filetype=coffee
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Enable mouse support in console
set mouse=a

" Fix backspaces to delete over linebreaks, automatic inserted indentation, etc
set backspace=2

" Line Numbers on
set number

" Set cases for when searching
set ignorecase
set smartcase

" Incremental searching 
set incsearch

" Highlight things that we find with the search
set hlsearch

set hidden

" Set off the other paren
highlight MatchParen ctermbg=4

"Scrolling starts 5 lines before window border 
set scrolloff=5

"History stuff
set history=500
set undolevels=500

set nostartofline

" Disable some bottom UI stuff since lightline already shows it
set noshowmode

" Disable jedi-vim from opening the help doc every time autocomplete is used
autocmd FileType python setlocal completeopt-=preview

" Type // in visual mode to search for selected text
vnoremap // y/<C-R>"<CR>

" F5 to insert current time
inoremap <F5> <C-R>=strftime("%c")<CR>
inoremap <F5> <C-R>=strftime("%c")<CR>

" }}}

"{{{Filetype specific Settings

" Make Python in Vim awesomer
"autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py set nocindent
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
"}}}

"{{{Look and Feel

"Status line
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" }}}

"{{{Theme Rotating
" This is kind of useless, but is handy sometimes for testing new colour themes
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

" Leader
"let mapleader="\<SPACE>"

" Next Tab
nnoremap <silent> <C-l> :tabnext<CR>

" Previous Tab
nnoremap <silent> <C-h> :tabprev<CR>

" Open Vimrc in split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>


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


" Colour the current line you're on - is the : needed?
set cursorline

"{{{ Vundle Code
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/')

Plugin 'gmarik/Vundle.vim'

Plugin 'posva/vim-vue'


"Github bundles:
Plugin 'xolox/vim-misc'

Plugin 'Lokaltog/vim-easymotion'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'justinmk/vim-sneak'
    let g:sneak#s_next = 1

Plugin 'kien/ctrlp.vim'
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o,*.d,*.pyc     " MacOSX/Linux
    set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/](node_modules|vendor|target|dist|_build_cache|_dist)|(\.(swp|ico|git|svn))$', 
      \ 'file': '\v\.(exe|so|dll|pyc|patch)$',
      \ }


"Plugin 'klen/python-mode'
    "let g:pymode_rope = 0

Plugin 'marijnh/tern_for_vim'

Plugin 'davidhalter/jedi-vim'
    let g:jedi#popup_select_first = 1

Plugin 'Valloric/YouCompleteMe'
    let g:ycm_autoclose_preview_window_after_completion=1

"Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
    " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
    " better key bindings for UltiSnipsExpandTrigger
    "let g:UltiSnipsExpandTrigger = "<tab>"
    let g:UltiSnipsExpandTrigger = "<Leader>s"
    let g:UltiSnipsJumpForwardTrigger = "<tab>"
    let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'



Plugin 'majutsushi/tagbar'
    nnoremap <F3> :TagbarToggle<CR>

Plugin 'scrooloose/nerdcommenter'
    let NERDSpaceDelims=1
Plugin 'scrooloose/syntastic'
    let g:syntastic_python_checkers=['pylint']
    "let g:syntastic_mode_map={ 'mode': 'active',
    "                     \ 'active_filetypes': [],
    "                     \ 'passive_filetypes': ['cpp'] }
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

    let g:syntastic_javascript_checkers = ['eslint']

Plugin 'The-NERD-tree'
    let g:NERDTreeWinSize = 30

Plugin 'jistr/vim-nerdtree-tabs'
    nnoremap <F2> :NERDTreeTabsToggle<CR>
    let g:nerdtree_tabs_open_on_console_startup = 0

Plugin 'mhinz/vim-startify'
Plugin 'rking/ag.vim'
Plugin 'Townk/vim-autoclose'

" TODO: Include when powerline has Neovim support
"Plugin 'powerline/powerline'
set guifont=Inconsolata\ for\ Powerline\ 9
"    set laststatus=2

Plugin 'itchyny/lightline.vim'
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }


Plugin 'tmhedberg/SimpylFold'

Plugin 'kchmck/vim-coffee-script'

Plugin 'vimwiki/vimwiki.git'

"}}}

call vundle#end()
filetype on
filetype plugin indent on

" This may cause a weird blinking VIM bug on certain terminals
:let &t_Co=256
colorscheme herald_JeffCustom
