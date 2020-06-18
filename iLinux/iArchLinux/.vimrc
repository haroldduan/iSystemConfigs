set nocompatible              " be iMproved, required
filetype off                  " required
    
" Show whitespace and tab
" set listchars=tab:'>'
set listchars=trail:·
set listchars=space:·
set list
" Change tab to sorttab,4 pics whitespace
set shiftwidth=4 softtabstop=4 expandtab

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#rc()
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Dracula theme
" Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'dracula/vim'

" Plugin Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes' 

" Plugin NERDTree
Plugin 'preservim/nerdtree'

" Plugin NERDTree-Git
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Plugin YouCompleteMe
" Plugin 'Valloric/YouCompleteMe’

" Plugin Syntastic
Plugin 'vim-syntastic/syntastic'

" Plugin Powerline
" Plugin 'Lokaltog/vim-powerline'

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

" Plugin configuration
" Dracula theme settings
syntax enable
colorscheme dracula

" Show mode
set showmode
" Show command
set showcmd
" Use mouse
set mouse=a
" Set line number show
set number
" Set encoding
set encoding=utf-8
" Set color 256
set t_Co=256
" Set Autoindent
set autoindent
" Show current line
set cursorline
" Set Showmatch
set showmatch
set incsearch

" Plugin [Airline]'s configurations
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1 
set laststatus=2    " Show status bar
let g:airline#extensions#tabline#enabled=1    " Activated tab bar
let g:airline#extensions#whitespace#enabled=1 " Whitespace

" NERDTree
" Plugin [NerdTree]'s configurations
nmap <F5> :NERDTreeToggle<cr>
map <C-n> :NERDTreeToggle<cr>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" Windows position
let g:NERDTreeWinPos='left'
" Windows size
let g:NERDTreeSize=30
" Windows show line number
let g:NERDTreeShowLineNumbers=1
" Not show hidden files
"let g:NERDTreeHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
autocmd vimenter * NERDTree

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
let g:NERDTreeShowIgnoredStatus = 1

" Plugin [YouCompleteMe]'s configurations
"let g:ycm_global_ycm_extra_conf =
"'~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
""let g:ycm_collect_identifiers_from_tags_files = 1
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
inoremap <expr> <space>       pumvisible() ? "\<C-y>" : "\<space>"  
"按空格键即选中当前项
"let g:ycm_cache_omnifunc=0 " 禁止缓存匹配项,每次都重新生成匹配项
"let g:ycm_seed_identifiers_with_syntax = 1
"let g:ycm_confirm_extra_conf = 0
""在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
"let g:ycm_complete_in_strings = 1
""注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Plugin [Syntastic];s configurations
let g:syntastic_check_on_open = 1
let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
"set error or warning signs
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
""whether to show balloons
let g:syntastic_enable_balloons = 1
