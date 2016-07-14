let s:editor_root=expand("~/.config/nvim")
let &rtp = &rtp . ',' . s:editor_root . '/bundle/Vundle.vim/'
call vundle#rc(s:editor_root . '/bundle')

Plugin 'Shougo/vimproc.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tComment'

source $HOME/.config/nvim/elixir.vim
source $HOME/.config/nvim/haskell.vim
source $HOME/.config/nvim/syntastic.vim
