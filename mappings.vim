" General Mappings =============================================================
com! W :w
com! WQ :wq
com! Q :q
com! Wall :wall

map <leader>d !!date<CR> " Insert Date
map <leader>i :set list!<CR> " Toggle invisible chars
map <leader>s :ALEGoToDefinition


" use :w!! to write to a file using sudo if you forgot to 'sudo vim file'
" (it will prompt for sudo password when writing)
cmap w!! %!sudo tee > /dev/null %

" Easy Buffer Navigation =======================================================
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l


" Tab navigation ==============================================================
noremap <A-h> :tabprev<CR>
noremap <A-l> :tabnext<CR>
noremap <A-x> :tabclose<CR>

noremap <leader>z c()<Esc>PF(i

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left> inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


" Toggle hard mode (mainly disabling hjkl)
nnoremap <leader>h <Esc>:call HardTimeToggle()<CR>

" Remap exit insert mode =======================================================
imap jj <Esc>
imap jk <Esc>

" Shortcut to config files =====================================================
nnoremap <leader>ev <C-w>s<C-w>j:e $MYVIMRC<cr>

" Clear search highlighting until next search ==================================
noremap <silent> <Esc> :noh<CR>

" HACK: fix del key in st
map <F1> <del>
map! <F1> <del>

" neosnipet ====================================================================
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" Custom commands ==============================================================
:command! Mappings :vs $VIMCONFIG/mappings.vim
:command! Settings :vs $VIMCONFIG/settings.vim
:command! Bundles  :vs $VIMCONFIG/bundles.vim
:command! ReloadMappings   :source $VIMCONFIG/mappings.vim
:command! ReloadSettings   :source $VIMCONFIG/settings.vim

" Comfortable Motion remaps ===================================================
nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>
nnoremap <silent> <C-f> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 4)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -4)<CR>

" Language server
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>


" Disable caps lock and replace it with C-^
" Execute 'lnoremap x X' and 'lnoremap X x' for each letter a-z.
for c in range(char2nr('A'), char2nr('Z'))
  execute 'lnoremap ' . nr2char(c+32) . ' ' . nr2char(c)
  execute 'lnoremap ' . nr2char(c) . ' ' . nr2char(c+32)
endfor
