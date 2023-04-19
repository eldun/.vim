" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Load an indent file for the detected file type.
filetype indent on

" Use GUI colors
" set termguicolors

" Turn syntax highlighting on.
if has('syntax')
  syntax on
endif


" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" Set default theme
" colorscheme slate

" Hide line numbers by default (toggle with '\n')
set nonumber

" Highlight cursor horizontally and turn off underline
set cursorline
highlight CursorLine ctermbg=Black cterm=none

" Highlight cursor vertically 
set cursorcolumn
highlight CursorColumn ctermbg=Black

"------------------------------------------------------------
" Indentation options {{{
"
" Indentation settings according to personal preference.

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4

" }}}

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=15

" Wrap lines by default. Toggle with \z.
set wrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch
" hi IncSearch cterm=NONE ctermfg=Black ctermbg=DarkYellow


" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
" set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm


" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
if has('mouse')
  set mouse=a
endif

" Set the command window height to 2 lines, to avoid many cases of having to
" 'press <Enter> to continue'
set cmdheight=2

" Use <F11> to toggle between 'paste'(no auto-indent) and 'nopaste'(auto-indent)
set pastetoggle=<F11>

" Show matching words during a search.
set showmatch

" Highlight searches (Use '\\' to toggle)
set hlsearch

" Set search highlight colors
highlight Search ctermfg=Black ctermbg=DarkYellow

" Set Fold highlighting
highlight Folded ctermfg=White ctermbg=Black 

" Set Parentheses highlighting
highlight MatchParen cterm=bold ctermbg=White ctermfg=Black

" wildmenu options
" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx



" PLUGINS ---------------------------------------------------------------- {{{

" YouCompleteMe
" Autocompletion (https://github.com/ycm-core/YouCompleteMe)
packadd YouCompleteMe

" Clear the YCM filetype blacklist (Mostly for enabling completion in markdown files)
let g:ycm_filetype_blacklist = {}

" surround.vim
" Quoting and parenthesizing made simple
packadd surround

" scvim
" A vim plugin for supercollider
au BufEnter,BufWinEnter,BufNewFile,BufRead *.sc,*.scd set filetype=supercollider
au Filetype supercollider packadd scvim

" vim-airline
" Custom statusline
" packadd vim-airline
" 
" let g:airline_powerline_fonts = 1
" 
" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif

" }}}

" MAPPINGS --------------------------------------------------------------- {{{

" Set '\' as the leader key.
let mapleader = '\'

" Double-tap '\' to turn off search highlighting
nnoremap <leader><leader> :nohlsearch<CR>

" '\b' to list buffers and leave the cursor at an auto-completable position
nnoremap <Leader>b :buffers<CR>:buffer<Space>

" Tap \s to toggle status bar 
nnoremap <leader>s :call ToggleStatusLine()<CR>

" Remap "jk" to escape while in insert mode
inoremap jk <esc>

" Press the space bar to type the : character in normal mode.
nnoremap <space> :

" Open the help window in a new tab.
:cabbrev help tab help

" Leader+n to toggle line numbers
nmap <leader>n :set invnumber<CR>

" Toggle word-wrap
noremap <leader>z :set wrap!<CR>

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

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
" (VIM can't differentiate between c-f and c-F (https://vi.stackexchange.com/questions/4290/can-i-map-a-ctrl-upper-case-letter-separately-from-ctrl-lower-case-letter). This command was interfering with my ability to navigate windows, so I took it out. Double tapping '\' will remove search highlighting.)
" nnoremap <C-L> :nohl<CR><C-L>


" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$


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
" augroup cursor_off
"     autocmd!
"     autocmd WinLeave * set nocursorline nocursorcolumn
"     autocmd WinEnter * set cursorline cursorcolumn
" augroup END

" Enable DoMatchParen
autocmd VimEnter * DoMatchParen

function ToggleStatusLine()
    if &laststatus!=2
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
"    %b – Shows the ASCII/Unicode character under cursor.
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
set statusline+=%.20F\ Modified?[%M]\ readonly?[%R]

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ line:%l:%c\ %p%% 

" }}}

" ABBREVIATIONS {{{



    " ENGLISH ABBREVIATIONS{{{
        iab teh the
        iab Teh The
    "}}}
    
    
    "CODE ABBREVIATIONS {{{
        " BASH {{{
            iab shebang #!/bin/bash
        "}}}

        " C++ {{{
            iab helloc++ #include <iostream>
                        \<CR>
                        \<CR>int main() {
                        \<CR>
                        \<CR>std::cout << "Hello World!";
                        \<CR>return 0;
                        \<CR>
                        \<CR>}

        "}}}
        
        " JAVA {{{
            iab psvm public static void main(String[] args)
        "}}}

        " JAVASCRIPT {{{
        "}}}
        
        " PYTHON {{{
        "}}}

        "MARKDOWN/HTML ABBREVIATIONS {{{
            iab mdsnippet <pre><code class="language-xxx"><CR><CR></code></pre>
            iab mdimg ![alt](/assets/images/blog-images/xxxx/xxxx.png)
            iab mdlink  [name](link)
            iab lt &lt;
            iab gt &gt;
            iab amp &amp;
            iab apos &apos;
            iab quot &quot;
            iab ast &#42;
        "}}}
    "}}}



    
    " BLOG POST ABBREVIATIONS {{{
    iab lw LWJGL
    iab lws LWJGL's

    "}}}

"}}}
