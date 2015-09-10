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
NeoBundle 'Shougo/vimfiler', {'depends': 'unite.vim'}
NeoBundle 'DrawIt'

NeoBundle 'Shougo/vimfiler', { 'depends' : 'shougo/unite.vim' }

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'kakkyz81/evervim'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

nnoremap <Leader>e :VimFilerExplorer<CR>
let s:hooks = neobundle#get_hooks("vimfiler")
function! s:hooks.on_source(bundle)
  let g:vimfiler_as_default_explorer = 1
  let g:vimfiler_enable_auto_cd = 1

  " vimfiler specific key mappings
  autocmd MyAutoCmd FileType vimfiler call s:vimfiler_settings()
  function! s:vimfiler_settings()
    " ^^ to go up
    nmap <buffer> ^^ <Plug>(vimfiler_switch_to_parent_directory)
    " use R to refresh
    nmap <buffer> R <Plug>(vimfiler_redraw_screen)
    " overwrite C-l
    nmap <buffer> <C-l> <C-w>l
  endfunction
endfunction

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

" インデントは標準で4
set tabstop=4
set shiftwidth=4

" TODO: evervim特有の設定をevervim専用の場所に保管するように変更
nnoremap <silent> ,el :<C-u>EvervimNotebookList<CR>
nnoremap <silent> ,et :<C-u>EvervimListTags<CR>
nnoremap <silent> ,ec :<C-u>EvervimCreateNote<CR>
nnoremap ,es :<C-u>EvervimSearchByQuery<SPACE>
nnoremap <silent> ,eT :<C-u>EvervimSearchByQuery<SPACE>tag:todo -tag:done -tag:someday<CR>
nnoremap <silent> ,eta :<C-u>EvervimSearchByQuery<SPACE>tag:todo -tag:done<CR>

"let g:evervim_usemarkdown=0


