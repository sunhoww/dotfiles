" Vundle section
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

Plugin 'NLKNguyen/papercolor-theme'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'raimondi/delimitmate'
Plugin 'chaoren/vim-wordmotion'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-syntastic/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'SirVer/ultisnips'
Plugin 'ryanoasis/vim-devicons'
Plugin 'yggdroot/indentline'
Plugin 'moll/vim-bbye'

call vundle#end()
filetype plugin indent on
" end Vundle section

let mapleader=","

" Airline
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
	let g:airline_symbols={}
endif
let g:airline_symbols.space="\ua0"
let g:airline_mode_map = {
  \ '__' : '-',
  \ 'n'  : 'N',
  \ 'i'  : 'I',
  \ 'R'  : 'R',
  \ 'c'  : 'C',
  \ 'v'  : 'V',
  \ 'V'  : 'V',
  \ '' : 'V',
  \ 's'  : 'S',
  \ 'S'  : 'S',
  \ '' : 'S',
  \ }
let g:airline#extensions#bufferline#enabled=1
let g:airline#extensions#ctrlp#show_adjacent_modes = 1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>a <Plug>AirlineSelectPrevTab
nmap <leader>d <Plug>AirlineSelectNextTab

" NERDTree
map <C-\> :NERDTreeToggle<CR>

" CtrlP
let g:ctrlp_match_window='bottom,order:ttb'
let g:ctrlp_switch_buffer=0
let g:ctrlp_working_path_mode=0
if executable('ag')
  " Use The Silver Searcher
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast, respects .gitignore
  " and .agignore. Ignores hidden files by default.
  let g:ctrlp_user_command='ag %s -l --nocolor -f -g ""'
else
  "ctrl+p ignore files in .gitignore
  let g:ctrlp_user_command=['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
endif

" DelimiMate
let g:delimitMate_jump_expansion=1
let g:delimitMate_expand_space=1
let g:delimitMate_expand_cr=1

" Fugitive
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']

" Vim JSX
let g:jsx_ext_required=0 " Allow JSX in normal JS files

" JavaScript Libraries Syntax
let g:used_javascript_libs = 'react,underscore'

" Ultisnips
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snips"]
let g:UltiSnipsExpandTrigger = "<c-l>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"

" DevIcons
let g:WebDevIconsUnicodeDecorateFolderNodes=1
let g:DevIconsEnableFoldersOpenClose=1

" backup directories
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Colors
syntax enable
" let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme PaperColor

" UI
set laststatus=2
set mouse=a
set number
set cursorline
set wildmenu            " visual autocomplete for command menu

" Spaces
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set sw=2

" Remaps
inoremap jk <esc>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" save session
nnoremap <leader>s :mksession<CR>
nnoremap <leader>ss :mksession!<CR>

" IndentLines and EOL
let g:indentLine_char='│'
let g:indentLine_enabled=0
function! ToggleSetList()
  if(&list == 1)
    :IndentLinesDisable
    set nolist
  else
    :IndentLinesEnable
    set list lcs=eol:¬
  endif
endfunc
nnoremap <leader>l :call ToggleSetList()<CR>

" Bbye
nnoremap <Leader>q :Bdelete<CR>
nnoremap <Leader>qa :bufdo :Bdelete

