syntax on
set number

set expandtab
set shiftwidth=2
set tabstop=2
filetype plugin indent on 

autocmd Filetype php setlocal shiftwidth=4 tabstop=4

let mapleader = "," 
let NERDTreeHijackNetrw = 0 
let g:airline#extensions#tabline#enabled = 1  
let g:airline#extensions#tabline#fnamemod = ':t'

nmap <Leader>c :tabedit $MYVIMRC<cr>     
nmap <Leader>t :NERDTreeToggle<cr>     
nmap <Leader>n :NERDTreeFind<cr>

nmap <Leader>f :bn<cr>
nmap <Leader>d :bp<cr>
nmap <Leader>s :bd<cr>

nmap <Leader><space> :nohlsearch<cr>
nmap <C-h> <C-w><C-h>
nmap <C-j> <C-w><C-j> 
nmap <C-k> <C-w><C-k>  
nmap <C-l> <C-w><C-l>

set t_CO=256
let g:airline_theme = 'badwolf' 

set grepprg=ag 
let g:grep_cmd_opts = '--line-numbers --noheading'

autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% ' 
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" ' 
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' 
Plugin 'tpope/vim-vinegar' 
Plugin 'scrooloose/nerdtree' 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ervandew/supertab'
Plugin 'qpkorr/vim-bufkill' 
Plugin 'ctrlpvim/ctrlp.vim' 
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim' 
Plugin 'airblade/vim-gitgutter' 
Plugin 'auto-pairs-gentle'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'ruanyl/vim-fixmyjs'
Plugin 'jelera/vim-javascript-syntax'

call vundle#end() 
