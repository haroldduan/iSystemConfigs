set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" My plugins
" *****************************************************************************
Plugin 'gmarik/Vundle.vim'
" A tree explorer plugin for vim
Bundle 'scrooloose/nerdtree'
" The ultimate vim statusline utility. DEPRECATED in favor of Lokaltog/powerline
Bundle 'Lokaltog/vim-powerline'
" Syntax checking hacks for vim
Bundle 'vim-syntastic/syntastic'
" A code-completion engine for Vim
Bundle 'Valloric/YouCompleteMe'
" Vim plugin that displays tags in a window, ordered by scope
Bundle 'majutsushi/tagbar'
" precision colorscheme for the vim text editor
Bundle 'altercation/vim-colors-solarized'
" Fuzzy file, buffer, mru, tag, etc finder
Bundle 'kien/ctrlp.vim'

call vundle#end()
filetype indent plugin on
" *****************************************************************************


" My plugins configurations
" *****************************************************************************
nmap <F5> :NERDTreeToggle<cr>


" *****************************************************************************
