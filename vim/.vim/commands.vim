" Automatically fix typos
" https://sanctum.geek.nz/arabesque/vim-command-typos
if has("user_commands")
  command! -bang -nargs=? -complete=file E e<bang> <args>
  command! -bang -nargs=? -complete=file W w<bang> <args>
  command! -bang -nargs=? -complete=file Wq wq<bang> <args>
  command! -bang -nargs=? -complete=file WQ wq<bang> <args>
  command! -bang Wa wa<bang>
  command! -bang WA wa<bang>
  command! -bang Q q<bang>
  command! -bang QA qa<bang>
  command! -bang Qa qa<bang>
endif

" Beautify JSON
function! JsonFmt()
  %!python -m json.tool
  %s;^\(\s\+\);\=repeat(' ', len(submatch(0))/2);g
endfunction

command! JsonFmt :call JsonFmt()
