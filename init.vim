let s:editor_root=expand("~/.config/nvim")
call plug#begin('~/.config/nvim/plugged')

Plug 'Shougo/vimproc.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/tComment'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-eunuch'
Plug 'mustache/vim-mustache-handlebars'
Plug 'Shougo/deoplete.nvim'
Plug 'w0rp/ale'
Plug 'janko-m/vim-test'
Plug 'rhysd/vim-crystal'
Plug 'tpope/vim-rails'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'elixir-lang/vim-elixir'
Plug 'tpope/vim-fugitive'
Plug 'altercation/vim-colors-solarized'
Plug 'Rigellute/rigel'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sickill/vim-pasta'
Plug 'derekwyatt/vim-scala'
Plug 'posva/vim-vue'
Plug 'raichoo/purescript-vim'
Plug 'frigoeu/psc-ide-vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'alx741/vim-hindent'
Plug 'elmcast/elm-vim'
Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

let g:rustfmt_autosave = 1

source $HOME/.config/nvim/ale.vim
source $HOME/.config/nvim/autocmd.vim
source $HOME/.config/nvim/airline.vim
source $HOME/.config/nvim/clipboard.vim
source $HOME/.config/nvim/completion.vim
source $HOME/.config/nvim/ctags.vim
source $HOME/.config/nvim/elixir.vim
source $HOME/.config/nvim/haskell.vim
source $HOME/.config/nvim/search.vim
source $HOME/.config/nvim/shortcuts.vim
source $HOME/.config/nvim/test.vim
source $HOME/.config/nvim/visual.vim
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/colors.vim
