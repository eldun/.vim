" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Set default theme
colorscheme slate

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor horizontally
" set cursorline
" highlight CursorColumn ctermbg=Black ctermfg=DarkGray

" Highlight cursor vertically 
set cursorcolumn
highlight CursorColumn ctermbg=Black "ctermfg=DarkGray


" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set search highlight colors
hi Search ctermbg=White
hi Search ctermfg=Black

" Set the commands to save in history default number is 20.
set history=1000





" wildmenu options
" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx




" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Set '\' as the leader key.
let mapleader = '\'

" Double-tap '\' to turn off search highlighting
nnoremap <leader><leader> :nohlsearch<CR>

" Tap \s to toggle status bar 
nnoremap <leader>s :call ToggleStatusLine()<CR>

" Remap "jj" to escape while in insert mode
inoremap jj <esc>

" Press the space bar to type the : character in normal  mode.
nnoremap <space> :

" Control-/ clears last search (and therefore, the highlighting)
noremap <silent> <c-_> :let @/ = ""<CR>

" Triple-tap leader key to toggle line numbers
:nmap <leader><leader><leader> :set invnumber<CR>

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><



" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" You can split a window into sections by typing `:split` or `:vsplit`.
" Display cursorline and cursorcolumn ONLY in active window.
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END

function ToggleStatusLine()
    if &laststatus==?0
        set laststatus=2
    else
        set laststatus=0
    endif
endfunction

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

"    %F – Display the full path of the current file.
"
"    %M – Modified flag shows if file is unsaved.    
"
"    %Y – Type of file in the buffer.
"
"    %R – Displays the read-only flag.
"
"    %b – Shows the ASCII/Unicode character under     cursor.
"
"    0x%B – Shows the hexadecimal character under     cursor.
"
"    %l – Display the row number.
"
"    %c – Display the column number.
"
"    %p%% – Show the cursor percentage from the t    op of the file.




" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side. (Filepath truncated, if necessary)
set statusline+=\ .20%F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ row:%l\ col:%c\ %p%% 

" Show the status on the second to last line.
set laststatus=2


" }}}

" ABBREVIATIONS {{{
iab teh the
iab Teh The

" BLOG POST ABBREVIATIONS {{{
iab lw LWJGL"
iab lws LWJGL's"

"}}}

"}}}
