set nocompatible              " be iMproved, required
filetype off                  " required

" Show Line Number
set nu!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" My plugins
" *****************************************************************************
Plugin 'gmarik/Vundle.vim'
" A tree explorer plugin for vim
Bundle 'scrooloose/nerdtree'
" Vim Git runtime files
Bundle 'tpope/vim-git'
" A plugin of NERDTree showing git status flags.
Bundle 'Xuyuanp/nerdtree-git-plugin'
" A Git wrapper
Bundle 'tpope/vim-fugitive'
" The ultimate vim statusline utility. DEPRECATED in favor of Lokaltog/powerline
Bundle 'Lokaltog/vim-powerline'
" Syntax checking hacks for vim
Bundle 'vim-syntastic/syntastic'
" A code-completion engine for Vim
" Bundle 'Valloric/YouCompleteMe'
" Vim plugin that displays tags in a window, ordered by scope
Bundle 'majutsushi/tagbar'
" precision colorscheme for the vim text editor
Bundle 'altercation/vim-colors-solarized'
" Fuzzy file, buffer, mru, tag, etc finder
Bundle 'kien/ctrlp.vim'
" Hexo vim plugin
" Bundle 'hiphopcoders/hexo.vim'

call vundle#end()
filetype indent plugin on
" *****************************************************************************


" My plugins configurations
" *****************************************************************************
" Plugin [NerdTree]'s configurations
nmap <F5> :NERDTreeToggle<cr>
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Plugin [nerdtree-git-plugin]'s configurations
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" Plunin [syntastic]'s configurations
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Plugin [tagbar]'s configurations
nmap <F8> :TagbarToggle<CR>

" Plugin [vim-powerline]'s configurations
let g:Powerline_symbols = 'fancy'
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256
let g:Powerline_stl_path_style = 'full'
" let g:Powerline_theme = 'solarized256'
" set nocompatible   " Disable vi-compatibility
" set fillchars+=stl:\ ,stlnc:\
" let g:Powerline_symbols_override = {
"         \ 'BRANCH': [0x2213],
"         \ 'LINE': 'L',
"         \ }
" Insert the charcode segment after the filetype segment
" call Pl#Theme#InsertSegment('charcode', 'after', 'filetype')
" Replace the scrollpercent segment with the charcode segment
" call Pl#Theme#ReplaceSegment('scrollpercent', 'fileinfo')
 
" Plugin [vim-colors-solarized]'s configurations
syntax enable
set background=light
colorscheme solarized

" *****************************************************************************
