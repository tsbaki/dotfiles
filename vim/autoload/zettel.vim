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
    " Create new window
    new
    edit $zet_path
endfunction

function! zettel#show_zettels_with_tag() abort
    if empty(glob(g:path_to_zettel))
        echom 'There are no index cards to show...'
        return
    endif
    let l:tag = input('Show zettels with tag: ')
    " Redraw the screen - clears the input 
    redraw
    for l:file in globpath(g:path_to_zettel, '*/zet.txt', 1, 1)
        for l:first_line in readfile(l:file, '', 1)
            " ignore string case in comparison
            if(l:tag ==? l:first_line)
                echo "\n".s:Format_to_date(l:file)
                for l:line in readfile(l:file, '', 1000)
                    echo l:line
                endfor
            endif
        endfor
    endfor
endfunction

function! s:Format_to_date(file_p) abort
    " TODO: This is very ugly
    let l:parent_dir = fnamemodify(fnamemodify(a:file_p, ":h"), ":t")
    let l:length = 12
    return strcharpart(l:parent_dir, 0, 2)."/".strcharpart(l:parent_dir, 2, 2)."/".strcharpart(l:parent_dir, 4, 2)." ".strcharpart(l:parent_dir, 6, 2).":".strcharpart(l:parent_dir, 8, 2).":".strcharpart(l:parent_dir, 10, 2)
endfunction

function! zettel#list_zettels() abort
    let $path = g:path_to_zettel
    Vexplore $path
endfunction
