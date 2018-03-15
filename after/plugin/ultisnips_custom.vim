if !exists('did_plugin_ultisnips')
    finish
endif

augroup ultisnips_custom
    autocmd!
    autocmd BufNewFile * call snippet#InsertSkeleton()
augroup end
