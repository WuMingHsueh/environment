set nocompatible | filetype off | set rtp+=~/.vim/bundle/Vundle.vim | call vundle#begin() | Plugin 'VundleVim/Vundle.vim'
Plugin 'terryma/vim-multiple-cursors'   " multiple-cursors select
Plugin 'junegunn/vim-easy-align'        " align space tab
Plugin 'Raimondi/delimitMate'           " {} () [] 
Plugin 'scrooloose/nerdtree'            " file tree
Plugin 'jistr/vim-nerdtree-tabs'        " extend nerdtree
Plugin 'scrooloose/nerdcommenter'       " Easily toggle comments
Plugin 'mkitt/tabline.vim'                  " tabline tab
Plugin 'vim-scripts/grep.vim'           " use grep command in command mode
Plugin 'airblade/vim-gitgutter'         " git diff in the gutter (sign column)
Plugin 'tpope/vim-fugitive'             " use git command in command mode
Plugin 'tpope/vim-rhubarb'              " required by fugitive to :GBrowse
"Plugin 'vim-scripts/CSApprox'           " can use gvim theme
Plugin 'vim-airline/vim-airline'        " status tar
Plugin 'vim-airline/vim-airline-themes' " themes of vim airline
Plugin 'sainnhe/vim-color-forest-night' " forest-night theme
Plugin 'ryanoasis/vim-devicons'         " icon theme
Plugin 'Xuyuanp/nerdtree-git-plugin'    " Git status on the NERDtree file explore
"Plugin 'sjl/gundo.vim'                  " todo list
Plugin 'dense-analysis/ale'             " errors line heightline
Plugin 'majutsushi/tagbar'              " Provide an outline based on ctags
Plugin 'sheerun/vim-polyglot'           " check syntax errors
Plugin 'editorconfig/editorconfig-vim'  " editorconfig
Plugin 'stephpy/vim-yaml'               " Better syntax highlighting for YAML
Plugin 'mattn/emmet-vim'                " Emmet style HTML abbreviations (MUST BE PLACED AFTER VIM-TWEAKS TO ALLOW REMAPPING)
Plugin 'rust-lang/rust.vim'             " rust environment
call vundle#end() | filetype plugin indent on

syntax on
set guifont=Hack\ Nerd\ Font:h14
set encoding=utf8       "display file encoding
set fileencoding=utf8   "file encoding in the disk
set fileencodings=utf8  "file encoding in the disk
set ttyfast

set mousemodel=popup         "use mouse to copy select
set clipboard=unnamed    

colorscheme forest-night
set laststatus=2                                       " status bar for two last space
let g:airline_theme = 'forest_night'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#enabled = 1           " enable tabline
let g:airline#extensions#tabline#left_sep = ' '        " set left separator
let g:airline#extensions#tabline#left_alt_sep = '|'    " set left separator which are not editting
"let g:airline#extensions#tabline#buffer_nr_show = 1    " show buffer number
let g:airline#extensions#tabline#formatter = 'default' " set tarline formatter default
" set termguicolors
" set t_Co=256
" set guioptions=egmrti

set number        " Show line numbers
set nowrap        " no Wrap line
set showmatch     " {}
set showcmd       " show cmd
set ruler         " show row and column ruler information
set cursorline    " show location line of cursor
set cursorcolumn  " show location column of cursor
set hidden        " Enable hidden buffers 

set foldmethod=manual " foldmethod
set ai                " Auto-indent new lines
set expandtab         " Use spaces instead of tabs
set smartindent       " Enable smart-indent
set smarttab          " Enable smart-tabs
set tabstop=4         " number tab
set softtabstop=4     " number of spaces per Tab
set shiftwidth=4      " number of auto-indent spaces

set ignorecase " Always case-insensitive
set smartcase  " Enable smart-case search
set hlsearch   " Highlight all search results
set magic      " for regular expreesions turn magic on
"set incsearch  " searches for string incrementally
set wildmenu   " find file list bar
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

set undolevels=1000             " Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

let mapleader=";"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" macos xkbswitch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.dylib'
"let g:XkbSwitchEnabled = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize=50
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '.git$', '.swp$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDtreeMapOpenInTabSilent = '<RightMouse>'
let NERDTreeShowHidden=1
map <F4> :NERDTreeToggle<CR>
map <F3> t :NERDTreeMirror<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" grep.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules vendor'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rust lang setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rustfmt_autosave = 1
let g:rust_clip_command = 'pbcopy' " Mac Playpen integration
"let g:rust_clip_command = 'xclip -selection clipboard' " Linux Playpen integration
