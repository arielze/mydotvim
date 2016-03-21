let mapleader = ","

" directory settings
call system('mkdir -vp ~/.backup/undo/ > /dev/null 2>&1')
set backupdir=~/.backup,.       " list of directories for the backup file
set directory=~/.backup,~/tmp,. " list of directory names for the swap file
set nobackup            " do not write backup files
set backupskip+=~/tmp/*,/private/tmp/* " skip backups on OSX temp dir, for crontab -e to properly work
set noswapfile          " do not write .swp files
set undofile
set undodir=~/.backup/undo/,~/tmp,.

" search settings
"set incsearch           " Incremental search
set hlsearch            " Highlight search match
set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS

set autoindent          " automatically indent new line
set ts=2                " number of spaces in a tab
set sw=2                " number of spaces for indent
set et                  " expand tabs into spaces

"hlight spell errors
hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black

syntax on
" mouse settings
" Enable mouse use in all modes
set mouse=a

"travers open buffers
map <c-e> :bn<cr>

" set guifont=Monospace\ 14
" guifonts
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" quickfix keybindings
nmap  <leader>H :cfirst <cr>
nmap  <leader>J :clast <cr>
nmap  <leader>h :cnext <cr>
nmap  <leader>j :cprev <cr>
nmap  <leader>k :ccl  <cr>


"make Y consistent with C and D
nnoremap Y y$

" easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
