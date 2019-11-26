" Introduce a spelling function when writing documentation and the like
function! ToggleSpelling()
    if &spell
        echom "<( ^ _ ^ )> Spell it however you'd like!"
        set nospell
    else
        echom "<( o . o )> Spell it right!!"
        set spell spelllang=en_us
    endif
endfunction
noremap <leader>sp :call ToggleSpelling()<cr>

noremap <leader>fly Vy6pV:s/group/project/gjV:s/group/subject/gjV:s/group/session/gjV:s/group/acquisition/gjV:s/group/analysis/gjV:s/group/collection/g<cr>

