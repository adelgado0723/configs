map <F6> :setlocal spell! spelllang=en_us<CR>

set ruler
set nu
"set cursorline
highlight COlorColumn ctermbg=yellow
call matchadd('colorColumn','\%81v',100)

 colorscheme slate


map <F5> :source ~/.vimrc <CR>
map <F2> :bprev<CR>
map <F3> :bnext<CR>

set hlsearch
" <Ctrl-l> redraws the screen and removes the highlighting.
nnoremap <silent> <C-l> :nohl<CR>

set dictionary-=~/Documents/words.txt dictionary+=~/Documents/words.txt


nnoremap tn :tabnew<Space>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

set relativenumber

"setting cursor to block in normal mode and line in insert mode
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

"call plug#begin('~/.vim/bundle')

"Plug 'https://github.com/terryma/vim-multiple-cursors'
"Plug 'https://github.com/vim-syntastic/syntastic'
"Plug 'https://github.com/Chiel92/vim-autoformat'
"Plug 'https://github.com/junegunn/vim-plug'
"Plug 'https://github.com/mattn/emmet-vim'
"Plug 'https://github.com/tpope/vim-sensible'
"Plug 'https://github.com/Valloric/YouCompleteMe'

"call plug#end()
"let g:ycm_global_ycm_extra_conf = '/home/adelgado/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'


