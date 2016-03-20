if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

if empty(glob('~/.vim/colors/solarized.vim'))
  silent !curl -fLo ~/.vim/colors/solarized.vim --create-dirs
    \ https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC

endif
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'", { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdcommenter'
Plug 'valloric/youcompleteme'
Plug 'rking/ag.vim'
Plug 'Chun-Yang/vim-action-ag'

call plug#end()
