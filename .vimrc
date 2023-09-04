"---------Basic---------"
so ~/.vim/plugins.vim

syntax enable
set nocompatible                                        " We want the latest vim settings/options
set tabstop=4                                           " Show existing tab with 4 spaces width
set shiftwidth=4                                        " When indenting with '>', use 4 spaces width
set expandtab                                           " On pressing tab, insert 4 spaces
set backspace=indent,eol,start                          " Make backspace behave like every other editor
let mapleader=','                                       " The default leader is \, but a comma is much better
set number relativenumber                               " Activate line numbers
set linespace=15                                        " Macvim specific line height, in terminal vim you need to adjust terminal linespacing
set showtabline=2                                       " Always show tabs





"---------Visuals---------"
colorscheme atom-dark-256
set t_CO=256                                            " Use 256 colors, this is useful for terminal vim
set guifont=Fira_Code                                   " Macvim specific fonts, in terminal vim you need to adjust terminal font
set guioptions-=l                                       " Remove scrollbars
set guioptions-=L                                       " Remove scrollbars
set guioptions-=r                                       " Remove scrollbars
set guioptions-=R                                       " Remove scrollbars
set guioptions-=e                                       " We dont want gui tabs





"---------Split management---------"
" move to below split
nmap <C-J> <C-W><C-J>
" move to above split
nmap <C-K> <C-W><C-K>
" move to left split
nmap <C-H> <C-W><C-H>
" move to right split
nmap <C-L> <C-W><C-L>
" make split take whole area
nmap <C-M> <C-W>\|<C-W>_
" make equal splits
nmap <C-E> <C-W>=
" open new vertical split below current one
set splitbelow
" open new horizontal split to the right of current one
set splitright





"---------Searching---------"
set hlsearch
set incsearch





"---------Mappings---------"
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <C-N> :tabnew<cr>
nmap <C-C> :tabclose<cr>
nmap <Leader>f :tag<space>
nmap gtd <C-]>



"---------Plugins---------"
"/ 
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
nmap <C-R> :CtrlPBufTag<cr>
nmap <Leader>lf :CtrlPMRUFiles<cr>





"/ 
"/ NERDTree
"/
let NERDTreeHijackNetrw=0
nmap <Leader>1 :NERDTreeToggle<cr>





"/ 
"/ GitGutter
"/
set updatetime=250





"/ 
"/ Greplace.vim 
"/
set grepprg=ag                                          " We want to use Ag for the search
let g:grep_cmd_opts = '--line-numbers --noheading'





"--------Auto-Commands-------"
augroup autosourcing                                    " Automatically source the .vimrc file on save
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

augroup numbertoggle                                    " Switch between absolute and relative line numbering
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set number relativenumber   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set number norelativenumber | endif
augroup END





"---------Notes & Tips----------"
" Ctrl ] go to definition
" Ctrl 6 last buffer
" di}, di', di" ... delete in <selector>
" vi... ci... same as above (v = visual,select, c=change)
" zt, zb, zz - top/bottom/center position the line with cursor
" v - visual mode, V - line visual mode
" V, y or yy - copy lines
" u undo
" :Ag 'string_to_search' is used for searching the project files
" :! is used to execute a shell command
" vinegar - when opened:
" . - to append file to the end of vim command
" ! - to append file at the end of shell command
" y. - to copy file path
" ~ - to go to the home folder
" gg - go to start of file
" / search, n - next occurance
