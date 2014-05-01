" The Hacked-Together Vim setup of Paul Kang 

" Pathogen include
execute pathogen#infect()
syntax on
filetype plugin indent on

" Conque
let g:ConqueTerm_ToggleKey='<F12>'
let g:ConqueTerm_CloseOnEnd='1'

" TagBar
"nmap <F8> :TagbarToggle<CR>

" Rainbow Parentheses
autocmd VimEnter * RainbowParenthesesToggleAll

" EasyMotion
let g:EasyMotion_leader_key='<Leader>'

" Mappings
imap ;; <ESC>
nmap <F5> :edit<CR>

" Run 
autocmd filetype python nnoremap <F4> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

" Settings
set nu

set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
