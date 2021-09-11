function! zettel#make_zettel() abort
    " Make sure the dir has been created otherwise create it
    if empty(glob(g:path_to_zettel))
        call mkdir(g:path_to_zettel, 'p')
    endif
    let l:index_card_dir = g:path_to_zettel . strftime('/%d%m%y%H%M%S')
    call mkdir(l:index_card_dir, 'p')
    let l:tag = input('Tag: ')
    let $zet_path = l:index_card_dir . '/zet.txt'
    call writefile([l:tag], $zet_path, 'a')
    new
    edit $zet_path
endfunction

function! zettel#list_zettels() abort
    if empty(glob(g:path_to_zettel))
        echom 'There are not index cards to show...'
        return
    endif
    let l:tag = input('List zettels with tag: ')

    for l:file in globpath(g:path_to_zettel, '*/zet.txt', 1, 1)
        for l:line in readfile(l:file, '', 1)
            if(l:tag ==? l:line)
                " TODO 
                echom l:file
            endif
        endfor
    endfor
endfunction
