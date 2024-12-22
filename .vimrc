if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('tpope/vim-fugitive')
  call dein#add('kien/ctrlp.vim')
  call dein#add('flazz/vim-colorschemes')
  call dein#add('tpope/vim-speeddating')
  call dein#add('vim-scripts/Align')
  call dein#add('tpope/vim-surround')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('AndrewRadev/switch.vim')
  call dein#add('mattn/webapi-vim')
  call dein#add('mattn/gist-vim', {'depends' : 'mattn/webapi-vim'})
  call dein#add('davidhalter/jedi-vim')
  call dein#add('Shougo/vimfiler', {'depends': 'unite.vim'})
  call dein#add('vim-scripts/DrawIt')
  call dein#add('nanotech/jellybeans.vim')
  call dein#add('Shougo/vimshell', { 'rev' : '3787e5' })
  call dein#add('fatih/vim-go')
  call dein#add('tokorom/vim-review')

  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#add('kurocode25/mdforvim')
  call dein#end()
  call dein#save_state()
endif

" Uncomment if you want to install not-installed plugins on startup.
"if dein#check_install()
" call dein#install()
"endif

filetype plugin indent on
syntax enable

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

" BackSpaceで改行を削除
set backspace=2

" filetype別のインデント設定
filetype plugin indent on

" Required:
filetype plugin indent on

" インデントを自動で挿入する
set autoindent

:let g:vimfiler_as_default_explorer = 1

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
hi IndentGuidesOdd  ctermbg=grey
hi IndentGuidesEven ctermbg=lightgrey
" vim-indent-guides end
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

" modeline
set modeline
set modelines=2

" インデントは標準で4
set tabstop=4
set shiftwidth=4
