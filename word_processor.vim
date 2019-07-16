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

function! Lookup()
    let nodeScriptPath = "~/playground/index.js"
    let selection = GetVisualSelection()
    let value = system('node ' . nodeScriptPath . ' ' . selection)
    echo value
"   let convertedValue = substitute( value, '\n', '\r', 'g')
"   execute 's/\%V.*\%V./' . convertedValue . '/'
endfunction
vmap <enter> :call Lookup()<CR>

" Returns the current visual selection
function! GetVisualSelection()
  try 
    let a_save = @a
    normal! gv"ay
    return @a
  finally
    let @a = a_save
  endtry
endfunction
