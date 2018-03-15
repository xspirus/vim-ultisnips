function! s:try_insert(skel)
    execute "normal i_" . a:skel . "\<C-r>=UltiSnips#ExpandSnippet()\<CR>"

    if g:ulti_expand_res == 0
        silent! undo
    endif

    return g:ulti_expand_res
endfunction

function! snippet#InsertSkeleton() abort
    let filename = expand('%')

    if !(line('$') == 1 && getline('$') == '' ) || filereadable(filename)
        return
    endif

    call s:try_insert('skel')
endfunction
