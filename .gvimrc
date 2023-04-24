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
      \'#000000', '#da4839', '#509f50', '#ffd249',
  \'#6d9cbd', '#cfcfff', '#6d9cdb', '#ffffff',
  \'#323232', '#ff7b6a', '#83d082', '#ffff7b',
  \'#9fcef0', '#ffffff', '#a0cef0', '#ffffff' ]

highlight Terminal guibg='#2b2b2b'
highlight Terminal guifg='#e5e1db'
