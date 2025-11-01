set number                  " Show line numbers
syntax enable               " Enable syntax highlighting
filetype plugin indent on   " Shorthand for: filetype on, plugin on, indent on
set expandtab               " Convert tabs to spaces (The key to consistency)
set tabstop=4               " A real tab character is displayed as 4 spaces
set shiftwidth=4            " Auto-indent commands use 4 spaces
set softtabstop=4           " Tab key inserts 4 spaces, backspace deletes 4 spaces
set smarttab                " Smartly insert tab stops at start of line
set background=dark " Set backround to dark

" Custom Function
function! TogglePaste()
  if &paste
    set nopaste
    echo "Paste mode: OFF"
  else
    set paste
    echo "Paste mode: ON"
  endif
endfunction

function! ToggleNumber()
  if &number
     set nonumber
     echo "Show number: OFF"
  else
     set number
     echo "Show number: ON"
  endif
endfunction

" Maps Shift+Tab in Insert Mode to the 'decrease indent' command (<C-D>)
imap <S-Tab> <C-D>

" Leader key (often mapped to \ or ,)
let mapleader = ','
" Press ",+q" to exit without saving
nnoremap <Leader>q :q!<CR>
" Press ",+e" to exit 
nnoremap <Leader>e :q<CR>
" Press ",+w" to save editing
nnoremap <Leader>w :w<CR>
" Press ",+w+q" to save and exit
nnoremap <Leader>wq :wq<CR>
" Press ",+v" to enable-disable paste in normal and visual mode
nnoremap <Leader>v :call TogglePaste()<CR>
vnoremap <Leader>v :call TogglePaste()<CR>
" Press ",+n" to enable-disable number
nnoremap <Leader>n :call ToggleNumber()<CR>
