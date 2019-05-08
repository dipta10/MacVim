set runtimepath+=~/.vim_runtime

"auto-reloading-a-file-in-vim-as-soon-as-it-changes-on-disk
set autoread | au CursorHold * checktime | call feedkeys("lh")

"nmap <CR> :w<CR>
"nmap <C-s> :w<CR>

"inoremap <C-x> <Esc>O<Esc>jA
"inoremap <Backspace-C> <Esc>ldge
"nnoremap <Backspace-C> <Esc>ldge
"CR = Enter Key
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

"Map Ctrl-Backspace to delete the previous word in insert mode.
":imap <C-BS> <C-W>
"inoremap <C-BS> <C-W>
:set backspace=indent,eol,start
"nnoremap <C-w> i<C-\><C-o>dB
"inoremap <C-w> <C-\><C-o>dB
"inoremap <C-BS> <C-\><C-o>db


let macvim_skip_colorscheme = 1
"set background=dark
let g:airline_powerline_fonts = 1
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ Bold:h20
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"vundle starts
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
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
"Plugin 'Valloric/YouCompleteMe'
Plugin 'edkolev/tmuxline.vim'

"./ultisnips snippet starts here
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Vundle
Plugin 'jacoborus/tender.vim'


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.

let g:UltiSnipsExpandTrigger = "<nop>"
inoremap <expr> <CR> pumvisible() ? "<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>" : "\<CR>"


"let g:UltiSnipsJumpForwardTrigger="<>"
"let g:UltiSnipsJumpBackwardTrigger="<>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"./ultisnips snippet ends here

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"vundle ends

set number
set relativenumber
syntax enable

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

let g:go_version_warning = 0
"set spell spelllang=en_us

"ctrl-backspace
"noremap <BS> <Esc>db
" this allows you to copy from vim to the system clipboard. 
set clipboard=unnamed

"don't know what it does
set mouse=a
"inoremap <C-space> <C-n>
"
" Theme
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

syntax enable
colorscheme tender
" ./End Theme


"using ctrl-space for autocomplete
if has("gui_running")
    " C-Space seems to work under gVim on both Linux and win32
"    inoremap <C-Space> <C-n>
else " no gui
  if has("unix")
"    inoremap <Nul> <C-n>
  else
  " I have no idea of the name of Ctrl-Space elsewhere
  endif
endif
"Pathogen
execute pathogen#infect()

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
