Plugin 'janko-m/vim-test'

source $HOME/.config/nvim/autoload/test/strategy.vim
let test#strategy = "neovimvert"

let test#runners = {'Haskell': ['HSpec']}
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>