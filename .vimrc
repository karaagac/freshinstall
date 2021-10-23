execute pathogen#infect()

" set commands here
set ignorecase "searchte buyuk kucuk harf ayrimi olmasin
set backspace=indent,eol,start

set tabstop=4
set autoindent

"RELATIVE lINE NUMBERS
"Delete all files in .vim/view to effect immediately.
set number "set line numbers
set rnu   "turn on relative line numbers
"set nornu  "turn relative line numbers off. 

"Wrap text instead of being on one line
set lbr

"Aramayi baslatir baslatmaz sonucu goster.
set incsearch

"Always show statusline
set showtabline=1

"Highlight Search Results
"set hlsearch

set nocompatible
syntax on
filetype plugin indent on


" Folding Method
set foldmethod=marker

"Vim Folding icin
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview
"

"{{{ Key Bindings
let mapleader = '\'      "Leader key \ olarak ata.
nmap <leader>w :w<CR>   "cok kullanmadigimi farkettim, ondan disable ettim.
nmap <leader>q :q!<CR>  "quit vim

"markdown folding. Bu kisayol asagidaki komutu verir ve markdown dosyasi
"otomatik folding yapar
nmap <leader>m :set foldmethod=expr foldexpr=MarkdownFolds()<CR>

"NERDTree icin C-n kisayolunu ata
map <C-n> :NERDTreeToggle<CR>

"{{{ ack vim plugin icin keyboard shortcut
nmap <leader>a :tab split <CR>:Ack -i ""<left>
"}}}

"{{{ Asagidaki satirlar curcor rengini degistiriyor. Daha iyi boyle.
if &term =~ "xterm\\|rxvt"
" use an orange cursor in insert mode
let &t_SI = "\<Esc>]12;white\x7"
" use a red cursor otherwise
let &t_EI = "\<Esc>]12;blue\x7"
silent !echo -ne "\033]12;blue\007"
" reset cursor when vim exits
autocmd VimLeave * silent !echo -ne "\033]112\007"
" use \003]12;gray\007 for gnome-terminal
endif
"}}}

"{{{ Copy and Paste from and to vim
"Asagidaki satirda calisiyor ama bir cok program icin bir altinaki satir daha
"guvenli.
"vnoremap <C-c> "+y
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-v> "+p
"}}}

" {{{ copy paste to clipboard cross files
set clipboard=unnamed


