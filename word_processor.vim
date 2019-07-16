" Word Processor
function! WordProcessor()
    map j gj
    map k gk
    setlocal formatoptions=1
    setlocal noexpandtab
    setlocal wrap 
    setlocal nolist
    setlocal linebreak
		setlocal textwidth=79
    setlocal formatoptions=aw2tq
    hi! link FoldColumn Normal
    setlocal foldcolumn=6
        
endfunction
com! WP call WordProcessor()


