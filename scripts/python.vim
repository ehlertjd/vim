function! ImportABC()
	normal ofrom abc import ABCMeta, abstractmethod
endfunction

nmap <leader>abc :call ImportABC()<CR>
