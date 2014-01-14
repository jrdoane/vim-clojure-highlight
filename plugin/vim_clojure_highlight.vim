" vim-clojure-highlight

if !exists('g:clojure_highlight_references')
	let g:clojure_highlight_references = 1
endif

augroup vim_clojure_highlight
	autocmd!
	autocmd BufRead,BufNewFile *.clj if g:clojure_highlight_references | call vim_clojure_highlight#highlight_references() | endif
augroup END
