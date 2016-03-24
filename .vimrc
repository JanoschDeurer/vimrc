" Enable Vim to work with solarized colors
set t_Co=16
hi clear SpellBad
" Change this if you want to work with the
" light solarized color sheme
hi SpellBad cterm=underline ctermbg=7
hi SpellCap cterm=underline ctermbg=7

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Keep Plugin commands between vundle#begin/end.

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add supertab to make Vunde and ultisnips work together
Plugin 'ervandew/supertab'

" Track the Ultisnips engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Autocompletion
Plugin 'Valloric/YouCompleteMe'

" This makes per directory configurations possible
Plugin 'embear/vim-localvimrc'

" File browsing
Plugin 'scrooloose/nerdtree'

" Multiple cursers
Plugin 'terryma/vim-multiple-cursors'

" Markdown live preview with Livedown
Plugin 'shime/vim-livedown'

" Better status line with vim-airline
Plugin 'bling/vim-airline'

" Theme Repository for airline
Plugin 'vim-airline/vim-airline-themes'

" Working witch git with fugitive
Plugin 'tpope/vim-fugitive'

" Syntax checking
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"let g:vim_markdown_folding_disabled=1
"
" " make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"
" " better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"
let g:UltiSnipsListSnippets = "<f5>"
"
"
" If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" associate *.md with markdown filetype
au BufRead,BufNewFile *.md set filetype=markdown
" associate *.tex with tex filetype
au BufRead,BufNewFile *.tex set filetype=tex

" Open Nerdtreen with F1
map <F1> :NERDTreeToggle<CR>

" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 1

" configure vim-airline
"
" appear all the time
set laststatus=2
" Use powerline fonts
let g:airline_powerline_fonts = 1
" Only show bufferline if needed
set noshowmode
" Show buffers if no tabs are open
let g:airline#extensions#tabline#enabled = 1
" Choose solarized theme
let g:airline_theme='solarized'

"" Keep the horizontal cursor position when moving vertically.
set nostartofline

" Configure Syntastics
"
" Remove the following 2 lines to work with python2
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_pylint_exec = 'pylint3'

" Enable this to get cpplint
" let g:ycm_register_as_syntastic_checker = 0
" let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
" Configure tidy to work with angular html code
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]



set smartindent
set incsearch
set backupdir=~/.vim/tmpFiles
set directory=~/.vim/tmpFiles
set expandtab
set shiftwidth=2
set softtabstop=2

" Configure tab behaviour
set switchbuf=usetab
nnoremap <F2> :tabNext<CR>
nnoremap <F3> :tabprevious<CR>
