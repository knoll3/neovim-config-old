" General  =====================================================================
filetype plugin indent on
set tags=tags
set splitright " Always open splits to the right
set spell      " set vim to spell cause i can't
let mapleader = " "
let maplocalleader = "\\"



" Colors  ======================================================================
"syntax enable
"set t_Co=256                   " 256 colors working with
"let g:solarized_termcolors=256 " Use as many as we can
"let g:solarized_termtrans=1    " Transparency when we can
"colorscheme solarized          " Solarized is NICE
""colorscheme flattown
"set background=dark            " Use Dark instead of Light version
if (has("termguicolors"))
  set termguicolors
endif

" Theme
syntax enable
"colorscheme challenger_deep
"let g:lightline = { 'colorscheme': 'challenger_deep'}
colorscheme OceanicNext
set background=dark
"colorscheme falcon
"colorscheme vimterial_dark


" Temp Files ===================================================================
set undodir=~/.vim/tmp/undo/     " undo files
set backupdir=~/.vim/tmp/backup/ " backups
set directory=~/.vim/tmp/swap/   " swap files
set backup                       " turn on backups
set undofile                     " turn on undos vim 7.3 feature
set undolevels=1000              " how much you can undo
set undoreload=10000




" Settings =====================================================================
set autoread                            " if the buffer changes reload it
set backspace=indent,eol,start          " handle backspace char
set completeopt=longest,menu            " what the complete menu looks like
set hidden                              " handle hidden stuff better
set hlsearch                            " highlight the search
set incsearch                           " highlight the search real-time

set laststatus=2                        " Keep the status line on all windows
set cursorline                          " highlight the current line
set scrolloff=4                         " scroll when within 4 lines above/below
set sidescrolloff=5                     " scroll when within 5 lines left/right
set ttyfast                             " the console is fast so use it

set noerrorbells
set visualbell t_vb=
set lazyredraw

set nolist

set ttimeout
set ttimeoutlen=10

set modelines=0
set noeol
set relativenumber
set numberwidth=4
set shell=bash
set showcmd
set showmatch
set title

set matchtime=5 " blink match chars for .x seconds

set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc
set wildmenu
set wildmode=list:longest,full
set nowrap
set ignorecase
set smartcase
set smartindent

" Update timer for vim-gitgutter
set updatetime=100

" Make gutter size constant
set signcolumn=yes

" Show tabs even with only one file open
" set showtabline=2

" Comfortable motion settings (mostly for C-u and C-d) =========================
let g:comfortable_motion_friction = 400.0
let g:comfortable_motion_air_drag = 4.0
let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_impulse_multiplier = 3  " Feel free to increase/decrease this value.

" Enable vim hard time by default (limits hjkl mostly)
let g:hardtime_default_on = 0


" White characters =============================================================
set autoindent
set tabstop=2
set textwidth=80
set shiftwidth=2
set softtabstop=2
set expandtab
set formatoptions=qrn1
" set colorcolumn=+1
if has("multi_byte")
  set encoding=utf-8
  set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
endif

set backupcopy=yes

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'


" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

let g:syntastic_javascript_eslint_args = ['--fix']
set autoread
au VimEnter *.js au BufWritePost *.js checktime

