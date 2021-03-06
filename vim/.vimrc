" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
"set nocompatible

" allow backspacing over everything in insert mode
"set backspace=indent,eol,start

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commandset
set incsearch		" do incremental searching
set guifont=Monaco:h18
set langmenu=zh_CN.UTF-8
set helplang=cn
colorscheme molokai
"set list		"显示特殊字符
set hls		"打开语法高亮

" Don't use Ex mode, use Q for formatting
map Q gq


" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Tabs and indenting
set noexpandtab
set softtabstop=0
set shiftwidth=4
set tabstop=4

" 语法高亮
syntax on

" Do not insert two spaces after a '.', '?' and '!' with a join command
set nojoinspaces

" Disable evaluating mode lines in files
set nomodeline

" Keep backups in one place
"fold mode"
set foldmethod=syntax
set foldlevel=100

"show line number"
set nu

"encoding"
set fileencodings=ucs-bom,utf-8,utf-16,gb18030,big5,latin1

"completion"
set completeopt=menu,longest
inoremap <c-u> <c-x><c-u>
inoremap <c-o> <c-x><c-o>

call pathogen#infect()
call pathogen#helptags()

"显示行尾空格"
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
colorscheme Molokai

" neocomplcache插件的配置
let g:neocomplcache_enable_at_startup = 1
" 自动补全
let g:NeoComplCache_DisableAutoComplete = 1

"显示行尾空格"
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" Disable AutoComplPop.
 let g:acp_enableAtStartup = 0
 " Use neocomplcache.
 let g:neocomplcache_enable_at_startup = 1
 " Use smartcase.
 let g:neocomplcache_enable_smart_case = 1
 " Use camel case completion.
 let g:neocomplcache_enable_camel_case_completion = 1
 " Use underbar completion.
 let g:neocomplcache_enable_underbar_completion = 1
 " Set minimum syntax keyword length.
 let g:neocomplcache_min_syntax_length = 3
 let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
 "不同模式下鼠标不同的形状, 0: Block 1: Vertical bar 2: Underline
let CursorShape=0
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
