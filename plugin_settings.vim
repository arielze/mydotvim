" nertree 
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
nmap <leader>t :NERDTreeFind<CR>
" open a NERDTree automatically when vim starts up if no files were specified?
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" open file in current window by default
" let g:NERDTreeMapActivateNode = ''
let g:NERDTreeMapOpenInTab = 'o'

" nerdcommenter
" " ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ctrlp
let g:ctrlp_map = '<leader>o'
let g:ctrlp_cmd = 'CtrlPMixed'
nmap <leader>O :CtrlPTag<cr>
nmap <c-o> :CtrlPClearCache<cr>:CtrlP<cr>
" nmap <leader>l :CtrlPLine<cr>
" nmap <leader>b :CtrlPBuff<cr>
"nmap <leader>M :CtrlPBufTagAll<cr>

let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,tags     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|tags)$'

"solarized
if has('gui_running')
  set background=light
else
 set background=dark
 let g:solarized_termcolors=256
endif
colorscheme solarized

" YouCompleteMe
if !empty(glob('/usr/local/bin/python'))
  let g:ycm_path_to_python_interpreter = '/usr/local/bin/python'
else
  let g:ycm_path_to_python_interpreter = '/usr/bin/python'
endif

" vim-action-ag
" use * to search current word in normal mode
nmap <c-f>  <Plug>AgActionWord
" " use * to search selected text in visual mode
vmap <c-f>  <Plug>AgActionVisual
