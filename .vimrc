" クリップボードをシステムと共有する
set clipboard+=unnamed
" タグファイルの指定
" set tags
" スワップファイルは使わない
set noswapfile

" タブをスペースに変える
set expandtab

" 色分けしてくれる
syntax on

" 行番号つける
set number

" NeoBundle
"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

NeoBundle 'tpope/vim-speeddating'

NeoBundle 'Align'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tomtom/tcomment_vim'

NeoBundle 'AndrewRadev/switch.vim'
NeoBundle 'mattn/gist-vim', {'depends' : 'mattn/webapi-vim'}

NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'DrawIt'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" インデントを自動で挿入する
set autoindent

" インデントを表示させる
set list
set listchars=tab:\>\-,extends:<,trail:-

" %コマンドによるジャンプ
runtime macros/matchit.vim

" switch.vim
nnoremap - :Switch<cr>
" switch.vim end

" background set
colorscheme jellybeans

