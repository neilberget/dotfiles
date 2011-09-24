" Make vim more useful
set nocompatible

" Set syntax highlighting options.
set t_Co=256
set background=dark 
syntax on
" colorscheme molokai

" Local dirs
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
" set undodir=~/.vim/undo

if has('gui_running')
	set background=light
else
	set background=dark
endif

set autoindent " Copy indent from last line when starting new line.
set backspace=indent,eol,start
set cursorline " Highlight current line
set expandtab " Expand tabs to spaces
set foldcolumn=4 " Column to show folds
set foldenable
set foldlevel=2
set foldmethod=syntax " Markers are used to specify folds.
set foldminlines=0 " Allow folding single lines
set foldnestmax=3 " Set max fold nesting level
set formatoptions+=1 " Break before 1-letter words
set formatoptions+=2 " Use indent from 2nd line of a paragraph
set formatoptions+=c " Format comments
set formatoptions+=l " Don't break lines that are already long
set formatoptions+=n " Recognize numbered lists
set formatoptions+=o " Make comment when using o or O from comment line
set formatoptions+=q " Format comments with gq
set formatoptions+=r " Continue comments by default
set formatoptions=
set hidden " When a buffer is brought to foreground, remember undo history and marks.
set history=1000
set hlsearch " Highlight searches
set ignorecase " Ignore case of searches.
set incsearch " Highlight dynamically as pattern is typed.
set laststatus=2 " Always show status line
set nowrap " Do not wrap lines.
set nu " Enable line numbers.
set ofu=syntaxcomplete#Complete " Set omni-completion method.
set report=0 " Show all changes.
set ruler " Show the cursor position
set scrolloff=3 " Start scrolling three lines before horizontal border of window.
set shiftwidth=2 " The # of spaces for indenting.
set showmode " Show the current mode.
set showtabline=2 " Always show tab bar.
set smartcase  " Ignore 'ignorecase' if search patter contains uppercase characters.
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces.
set softtabstop=2 " Tab key results in 2 spaces
set title " Show the filename in the window titlebar.
set visualbell
set wildmenu " Hitting TAB in command mode will show possible completions above command line.
" set undofile " Persistent Undo.

" Status Line
" hi User1 guibg=#455354 guifg=fg      ctermbg=238 ctermfg=fg gui=bold,underline cterm=bold,underline term=bold,underline
" hi User2 guibg=#455354 guifg=#CC4329 ctermbg=238 ctermfg=196 gui=bold cterm=bold           term=bold
set statusline=[%n]\ %1*%<%.99t%*\ %2*%h%w%m%r%*%y[%{&ff}→%{strlen(&fenc)?&fenc:'No\ Encoding'}]%=%-16(\ L%l,C%c\ %)%P

" Speed up viewport scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

syntax on
filetype on
filetype plugin on
filetype indent on

call pathogen#infect() 

" Markdown
augroup mkd
autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
augroup END

" JSON
au BufRead,BufNewFile *.json set ft=json syntax=javascript

" Jade
" u BufRead,BufNewFile *.jade set ft=jade syntax=jade

" Common Ruby files
" au BufRead,BufNewFile
" Rakefile,Capfile,Gemfile,.autotest,.irbrc,*.treetop,*.tt set ft=ruby
" syntax=ruby

" Coffee Script
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent

" Log files
au BufRead,BufNewFile *.log set filetype=log

" Command-T
let g:CommandTMaxFiles=20000
let g:CommandTMatchWindowAtTop=1
let g:CommandTMaxHeight=12
let g:CommandTCancelMap=['<Esc>', '<C-c>']

runtime macros/matchit.vim

" map  <F5> :r! date<cr>

