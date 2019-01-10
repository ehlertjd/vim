" Introduce a spelling function when writing documentation and the like
function! ToggleSpelling()
    if &spell
        echom "<( ^ _ ^ )> Spell it however you'd like!"
        set nospell
    else
        echom "<( o . o )> Spell it right!"
        set spell spelllang=en_us
    endif
endfunction
noremap <leader>sp :call ToggleSpelling()<cr>
