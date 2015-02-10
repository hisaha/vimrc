colorscheme darkblue

if has('win32') || has('win64')
	:source $VIMRUNTIME/mswin.vim
	set showtabline=2

	" autocmd VimEnter * tab all
	" autocmd BufAdd * exe 'tablast | tabe "' . expand( "<afile") .'"'
else

endif
