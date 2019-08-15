set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
"
" You need this for some reason
Plugin 'tpope/vim-sensible'     " sensible config starting point
Plugin 'tpope/vim-endwise'      " automatically and wisely close environments
Plugin 'tpope/vim-repeat'       " improve `.'
Plugin 'tpope/vim-surround'     " play with brackets, quotes etc.
Plugin 'tpope/vim-eunuch'       " integrate shell commands like mv, rm etc.
Plugin 'tpope/vim-unimpaired'   " nifty keymappings, learn to use!

" Theme
Plugin 'dracula/vim', { 'as': 'dracula' }

" Snippet DOES NOT WORK
Plugin 'sirver/ultisnips'
let g:UltiSnipsSnippetDirectories=["/home/martinlu/.vim/UltiSnips"]
let g:UltiSnipsExpandTrigger = '<c-u>'
let g:UltiSnipsJumpForwardTrigger = '<c-k>'
let g:UltiSnipsJumpBackwardTrigger = '<c-j>'
nnoremap <space>es :UltiSnipsEdit!<cr>


" Dunno if this is needed
"Plugin 'Valloric/YouCompleteMe'

" GDB 
Plugin 'vim-scripts/Conque-GDB'

" Latex
Plugin 'lervag/vimtex'  " complete, compile, view output, parse errors
let g:vimtex_imaps_leader = ';'
let g:vimtex_fold_enabled=1
"let g:vimtex_view_general_viewer = 'okular'
"let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
"let g:vimtex_view_general_options_latexmk = '--unique'
let g:vimtex_view_method = 'zathura'

"Plugin 'matze/vim-tex-fold'

" CtrlP
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Other settings
:imap jk <Esc>
set number
set tabstop=2
set shiftwidth=2
set expandtab
set showmatch
set encoding=utf-8
set mouse=a                               " Enable mouse in terminal (all modes).
set hidden

if exists('*remote_startserver')
 call remote_startserver('vim')
endif

set foldmethod=syntax
" Fortran specific
let fortran_free_source=1
let fortran_dialect='f90'
let fortran_fold=1
let fortran_fold_conditionals=1
let fortran_do_enddo=1
"" Options
"setlocal textwidth=79
"setlocal foldmethod=syntax
"setlocal comments=:!
"setlocal commentstring=!%s
"setlocal expandtab
"setlocal formatoptions-+=t
"setlocal include=^\\c#\\=\\s*include\\s\\+
"setlocal suffixesadd+=.f08,.f03,.f95,.f90,.for,.f,.F,.f77,.ftn,.fpp
" Theme"

augroup my_vimrc_autocmds
 autocmd!
 autocmd BufNewFile,BufRead *.pf set filetype=fortran
augroup END

color dracula
