set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
" let path = '~/some/path/here'
" call vundle#rc(path)

" Generic 
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'altercation/vim-colors-solarized'

" Go
Bundle 'fatih/vim-go'

" Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'

" JavaScript
Bundle "pangloss/vim-javascript"

syntax enable         " For Solarized
set background=dark   " ... 
colorscheme solarized " ...
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
  " filetype off
  filetype plugin indent off
  " set runtimepath+=$GOROOT/misc/vim
  filetype plugin indent on
  syntax on

" A popular configuration is to gofmt Go source files when they are saved.
" To do that, add this line to the end of your $HOME/.vimrc.
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" Show line numbers
set number

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" How can I map a specific key or shortcut to open NERDTree?
map <C-n> :NERDTreeToggle<CR>

" For indentation purely with hard tabs, the principle is to set 'tabstop'
" and 'shiftwidth' to the same value, and to leave 'expandtab' at its
" default value ('noexpandtab'), and leave 'softtabstop' unset:
set shiftwidth=4
set tabstop=4

" Smaller indentation for ruby
" au FileType ruby set softtabstop=2 shiftwidth=2 expandtab 

" FuzzyFinder: Map Ctrl+T to :FufFile **/
nnoremap <C-t> :<C-u>FufFile **/<CR>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
