runtime plugin/neomake-local-eslint.vim
" Neoformat typescript exes

if exists('g:neoformat_enabled_typescript') && index(g:neoformat_enabled_typescript, 'tsfmt') >= 0
  if ! exists('b:neoformat_typescript_tsfmt')
    if exists('g:neoformat_typescript_tsfmt')
      let b:neoformat_typescript_tsfmt = g:neoformat_typescript_tsfmt
    else
      let b:neoformat_typescript_tsfmt = neoformat#formatters#typescript#tsfmt()
    endif
  endif
  let b:neoformat_typescript_tsfmt.exe = GetNpmBin('tsfmt')
endif

if exists('g:neoformat_enabled_typescript') && index(g:neoformat_enabled_typescript, 'prettier') >= 0
  if ! exists('b:neoformat_typescript_prettier')
    if exists('g:neoformat_typescript_prettier')
      let b:neoformat_typescript_prettier = g:neoformat_typescript_prettier
    else
      let b:neoformat_typescript_prettier = neoformat#formatters#typescript#prettier()
    endif
  endif
  let b:neoformat_typescript_prettier.exe = GetNpmBin('prettier')
endif
