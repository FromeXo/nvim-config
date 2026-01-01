
" Invert j and k
noremap j k
noremap k j

" Page Up & Page Down
noremap J <PageUp>
noremap K <PageDown>

" Smart Home
" Go to the first non-blank character of the line.
" Or if already there, to the first character of the line.
noremap <expr> <C-a> col('.') == indent('.') + 1 ? '0' : '^'
inoremap <expr> <C-a>  col('.') == indent('.') + 1 ? '0' : '<C-o>^'

" End
noremap <C-e> <End>
inoremap <C-e> <End>

" Del
noremap <C-d> <Del>
inoremap <C-d> <Del>

" redo the undo.
noremap U <C-R>

" Remove search result highlight on <Esc>
noremap <silent> <Esc> :nohlsearch<CR>

"############################
"           Tabs
"############################
" Open new empty tab
nnoremap <leader>tt :tabnew<CR>
" Close current tab
nnoremap <leader>tq :tabclose<CR>
" Go to the next tab
nnoremap <leader>tl :tabnext<CR>
" Go to the previous tab
nnoremap <leader>th :tabprevious<CR>
" Go to the last accessed tab page
noremap <leader>t<TAB> <C-Tab>
" Go to the n:th tab
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
" Reorder tabs
nnoremap <leader>tm1 :tabmove 0<CR>
nnoremap <leader>tm2 :tabmove 1<CR>
nnoremap <leader>tm3 :tabmove 2<CR>
nnoremap <leader>tm3 :tabmove 3<CR>
nnoremap <leader>tm3 :tabmove 4<CR>
nnoremap <leader>tm3 :tabmove 5<CR>
nnoremap <leader>tm3 :tabmove 6<CR>
nnoremap <leader>tm3 :tabmove 7<CR>
nnoremap <leader>tm3 :tabmove 8<CR>
nnoremap <leader>tm3 :tabmove 9<CR>

"############################
"           Window
"############################
" Open new empty vertical window
nnoremap <leader>ww :vsplit<CR>
" Open new empty horozontal window
nnoremap <leader>wW :split<CR>
" Close the current window
nnoremap <leader>wq :q<CR>
"Move the current window to it's own tab
nnoremap <leader>wmt <C-W>T
" Rotate window
" Downwards
nnoremap <leader>wr <C-W>r
" Upwards
nnoremap <leader>wR <C-W>R
" Jump to the
" North window
nnoremap <leader>wj <C-w>k
" East Window
nnoremap <leader>wl <C-w>l
" South Window
nnoremap <leader>wk <C-w>j
" West Window
nnoremap <leader>wh <C-w>h
" Resize Window
" Up/Down
nnoremap <leader>w<PageUp> :resize -4<CR>
nnoremap <leader>w<PageDown> :resize 4<CR>
" Left/Right
nnoremap <leader>w<Home> :vertical resize 4<CR>
nnoremap <leader>w<End> :vertical resize -4<CR>
" Make all windows equally high and wide
nnoremap <leader>w= <C-W>=

"############################
"           Terminal
"############################
nnoremap <leader>§§ :terminal<CR>
" Exit terminal-mode
:tnoremap <Esc> <C-\><C-n>

"############################
"           Neo-Tree
"############################
" Open/close NeoTree in left vsplit
nnoremap <leader>ee :Neotree toggle<CR>
" View buffers
nnoremap <leader>eb :Neotree show buffers<CR>

