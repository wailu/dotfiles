call plug#begin()

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" auto pairs
Plug 'jiangmiao/auto-pairs'

" lightline
Plug 'itchyny/lightline.vim'

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" theme
Plug 'morhetz/gruvbox'

" syntax
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" git stuffs
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'APZelos/blamer.nvim'

call plug#end()

" vim settings
colorscheme gruvbox
set signcolumn=number
set number
set relativenumber
set tabstop=2 shiftwidth=2 expandtab
set noswapfile
set clipboard^=unnamed,unnamedplus
set hidden
" below are recommended by coc.nvim
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

" my maps
nnoremap <M-h> <c-w>h
nnoremap <M-j> <c-w>j
nnoremap <M-k> <c-w>k
nnoremap <M-l> <c-w>l
nnoremap <leader>v "0p
vnoremap <leader>v "0p
inoremap <leader>v <C-r>0
nnoremap <leader>g :<C-u>GitGutterToggle<CR>

" nvim terminal emulator stuffs
if has('nvim')
  highlight TermCursorNC ctermbg=DarkMagenta
  highlight TermCursor ctermfg=DarkMagenta
endif

" blamer settings
let g:blamer_enabled = 1
let g:blamer_delay = 300
let g:blamer_show_in_visual_modes = 0
let g:blamer_show_in_insert_modes = 0

" see: https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim#highlighting-for-large-files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" for coc.nvim
" ... start
let g:coc_global_extensions = [ 'coc-tsserver' ]

" use [g and ]g to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" run prettier
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
nnoremap <leader>p :<C-u>Prettier<CR>
" ... end

" fzf.vim shortcuts
nnoremap <C-k> :GF <CR>
nnoremap <C-p> :Ag <CR>h
