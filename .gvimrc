colorscheme carbonized-dark

" Copy
nnoremap <c-S-c> "+y  " Normal (must follow with an operator)
xnoremap <c-S-c> "+y  " Visual

" Paste
nnoremap <c-S-v> "+p  " Normal
noremap! <c-S-v> <C-r>+  " Insert and Command line
inoremap <c-S-v> <C-r>+  " Insert

" Hide GUI elements
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
