function! tsbaki#make_zettel() abort
	" Make sure the dir has been created otherwise create it
	if empty(glob(g:path_to_zettel))
		call mkdir(g:path_to_zettel, 'p')
	endif
	" TODO: Grab the timestamp and create the sub dir

	" TODO: Ask user input for a tag to be used in the file
	call writefile(['foo'], 'event.log', 'a')
endfunction
