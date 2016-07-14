let s:editor_root=expand("~/.config/nvim")
let &rtp = &rtp . ',' . s:editor_root . '/bundle/Vundle.vim/'
call vundle#rc(s:editor_root . '/bundle')

Plugin 'Shougo/vimproc.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tComment'

source $HOME/.config/nvim/autocmd.vim
source $HOME/.config/nvim/airline.vim
source $HOME/.config/nvim/clipboard.vim
source $HOME/.config/nvim/colors.vim
source $HOME/.config/nvim/completion.vim
source $HOME/.config/nvim/ctags.vim
source $HOME/.config/nvim/elixir.vim
source $HOME/.config/nvim/git.vim
source $HOME/.config/nvim/haskell.vim
source $HOME/.config/nvim/search.vim
source $HOME/.config/nvim/shortcuts.vim
source $HOME/.config/nvim/syntastic.vim
source $HOME/.config/nvim/visual.vim

filetype plugin indent on
