function! ImportABC()
	normal ofrom abc import ABCMeta, abstractmethod
endfunction

nmap <leader>abc :call ImportABC()<CR>

function! FindDef()
	let [s:line, s:col] = searchpos('^[ \t]*(def|class)[ \t]')
	:call cursor(s:line, s:col)
endfunction
nmap <C-J> :call FindDef()<CR>

nmap <leader>dc ofrom dataclasses import dataclassfrom typing import Dict, List, Optional@dataclassclass 
