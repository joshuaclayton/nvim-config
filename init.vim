let s:editor_root=expand("~/.config/nvim")
let &rtp = &rtp . ',' . s:editor_root . '/bundle/Vundle.vim/'
set nocompatible
filetype off
call vundle#rc(s:editor_root . '/bundle')

Plugin 'Shougo/vimproc.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tComment'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-endwise'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'Shougo/deoplete.nvim'

source $HOME/.config/nvim/ale.vim
source $HOME/.config/nvim/autocmd.vim
source $HOME/.config/nvim/airline.vim
source $HOME/.config/nvim/clipboard.vim
source $HOME/.config/nvim/colors.vim
source $HOME/.config/nvim/completion.vim
source $HOME/.config/nvim/crystal.vim
source $HOME/.config/nvim/ctags.vim
source $HOME/.config/nvim/elixir.vim
source $HOME/.config/nvim/elm.vim
source $HOME/.config/nvim/git.vim
source $HOME/.config/nvim/haskell.vim
source $HOME/.config/nvim/purescript.vim
source $HOME/.config/nvim/rails.vim
source $HOME/.config/nvim/scala.vim
source $HOME/.config/nvim/search.vim
source $HOME/.config/nvim/shortcuts.vim
source $HOME/.config/nvim/test.vim
source $HOME/.config/nvim/typescript.vim
source $HOME/.config/nvim/vue.vim
source $HOME/.config/nvim/visual.vim

filetype plugin indent on
