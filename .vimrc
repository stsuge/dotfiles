"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/tsuge/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/tsuge/.cache/dein')
    call dein#begin('/home/tsuge/.cache/dein')

    " Let dein manage dein
    " Required:
    call dein#add('/home/tsuge/.cache/dein/repos/github.com/Shougo/dein.vim')

    " Add or remove your plugins here:

    " Add neosnippet.vim and neosnippet-snippets
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')

    " Add deoplete.nvim
    call dein#add('Shougo/deoplete.nvim')
	if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
	endif

    " Add vim-clang
    call dein#add('justmao945/vim-clang')

    " Add jedi-vim
    call dein#add('davidhalter/jedi-vim')

    " Add caw.vim
    call dein#add('tyru/caw.vim')

    " Add syntastic
    call dein#add('vim-syntastic/syntastic')

    " Add molokai
    call dein#add('tomasr/molokai')

    " Add jellybeans.vim
    call dein#add('nanotech/jellybeans.vim')

    " Add vim-hybrid
    call dein#add('w0ng/vim-hybrid')

    " You can specify revision/branch/tag.
    " call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif

"End dein Scripts-------------------------

" Set startup for deoplete
let g:deoplete#enable_at_startup = 1

" Set clang options for vim-clang
let g:clang_c_options = '-std=c11'
let g:clang_cpp_options = '-std=c++1z'

" Set path to ns-3.24.1 library for vim-clang
" autocmd FileType cpp setlocal path+=$HOME/ns-allinone-3.24.1/ns-3.24.1/build

" Set path to pybind11 library for vim-clang
autocmd FileType cpp setlocal path+=$HOME/pybind11/include

" Set completion option for jedi-vim
autocmd FileType python setlocal completeopt-=preview

" Set key map for caw.vim
nmap <Leader>c <Plug>(caw:hatpos:toggle)
vmap <Leader>c <Plug>(caw:hatpos:toggle)
nmap <Leader>, <Plug>(caw:zeropos:toggle)
vmap <Leader>, <Plug>(caw:zeropos:toggle)

" Settings for Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_cpp_include_dirs = ['/home/tsuge/pybind11/include']

" 背景色をターミナルと同じにする
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
set background=dark

colorscheme hybrid " カラースキーマを設定する

" tmuxからvimを起動したときにマウスでスクロールできように設定する
set ttymouse=xterm2
set mouse=a

set number " 行番号を表示する
set title " ターミナルのタイトルをファイル名にする
set ambiwidth=double "文脈によって解釈が異なる全角文字（□や○）の幅を2に固定する
set expandtab " タブ入力を複数の空白入力に置き換える
set tabstop=4 " 画面上でタブ文字が占める幅
set softtabstop=4 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 改行時に前の行の構文をチェックし次の行のインデントを増減する
set shiftwidth=4 " smartindentで増減する幅
set shiftround " スペース数をshiftwidthの倍数になるように調整する
set wildmenu " コマンドモードの補完をTabで行うことができるようにする
set breakindent " 行を折り返しするときにインデントを考慮する
set clipboard=unnamedplus " クリップボードを共有する

" 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk

