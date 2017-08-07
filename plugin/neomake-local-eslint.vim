" Prevent loading twice
if exists("loaded_neomake_local_npm")
  finish
endif
let g:loaded_neomake_local_npm = 1

" Navigate up the tree looking for node_module/.bin/{binname}; falling back to
" `npm bin` directory
function! GetNpmBin(binname)
  let dir = expand("%:p:h")
  while ! isdirectory(dir . '/node_modules')
    let dir = fnamemodify(dir, ':h')
    if dir == '/'
      break
    end
  endwhile

  let binpath = ''
  if dir != '/'
    let binpath = dir . '/node_modules/.bin/' . a:binname
    if ! filereadable(binpath)
      let binpath = ''
    end
  endif

  if empty(binpath)
    let binpath = system('echo -n $(npm bin)') . '/' . a:binname
    if v:shell_error == 0
      let binpath = substitute(binpath, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
    endif
    if ! filereadable(binpath)
      let binpath = ''
    end
  endif

  return binpath
endfunction
