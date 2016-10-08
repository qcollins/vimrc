" vundle setup
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'freeo/vim-kalisi'
"Plugin 'ervandew/supertab'
"call vundle#end()
"filetype plugin indent on



colorscheme desert
set background=dark
"set t_Co=256
syntax on
set number
set cursorline
"set cursorcolumn

" tabs and indenting
set ai
set si
set smarttab
set tw=80
set formatoptions+=t
" set tabs to 8 spaces
set expandtab
set tabstop=4
set shiftwidth=4

" backpace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set switchbuf=usetab
nnoremap <C-h><C-h> :tabprevious<CR>
nnoremap <C-l><C-l> :tabnext<CR>
nnoremap <silent><A-h> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent><A-l> :execute 'silent! tabmove ' . tabpagenr()<CR>
set splitright
map <C-h>h <C-W>h
map <C-l>l <C-W>l
map <C-j>j <C-W>j
map <C-k>k <C-W>k

"Text width and wrapping configuration

set textwidth=80
set tw=80
set wrap "set wrap
set wrapmargin=80
"highlight lines above 80 chars
highlight OverLength ctermbg=red ctermfg=white guibg=#fc322f
match OverLength /\%80v.\+/

"Make files
if filereadable("compile")
        set makeprg=sh\ compile
endif
:command -nargs=* Mk :make -link "<args>"
:nmap mm :w <CR> :Mk 

"Misc
set autoread
imap jj <Esc>

" clears search highlighting
nnoremap <Esc><Esc> :noh<Return><Esc>

"DISABLE ARROWKEYS
"noremap <Left> <NOP>
"noremap <Right> <NOP>
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"imap <Left> <NOP>
"imap <Right> <NOP>
"imap <Up> <NOP>
"imap <Down> <NOP>

