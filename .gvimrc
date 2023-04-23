colorscheme carbonized-dark



" Copy remaps (Making the keystrokes identical to terminal Vim)

" Normal (must follow with an operator)
nnoremap <c-S-c> "+y

" Visual mode
xnoremap <c-S-c> "+y



" Paste remaps (Making the keystrokes identical to terminal Vim)

" Normal mode
nnoremap <c-S-v> "+p  

" Insert and Command line
noremap! <c-S-v> <C-r>+  




" Hide GUI elements
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar






" Set the global `terminal_ansi_colors` to prevent bleeding eyes
let g:terminal_ansi_colors = [
      \'#282828', '#CC241D', '#98971A', '#D79921',
  \'#458588', '#B16286', '#689D6A', '#D65D0E',
  \'#fb4934', '#b8bb26', '#fabd2f', '#83a598',
  \'#d3869b', '#8ec07c', '#fe8019', '#FBF1C7' ]

highlight Terminal guibg='#282828'
highlight Terminal guifg='#ebdbb2'  " Insert
