runtime plugin/neomake-local-eslint.vim
" Neoformat typescriptreact exes

if exists('g:neoformat_enabled_typescriptreact') && index(g:neoformat_enabled_typescriptreact, 'tsfmt') >= 0
  if ! exists('b:neoformat_typescriptreact_tsfmt')
    if exists('g:neoformat_typescriptreact_tsfmt')
      let b:neoformat_typescriptreact_tsfmt = g:neoformat_typescriptreact_tsfmt
    else
      let b:neoformat_typescriptreact_tsfmt = neoformat#formatters#typescriptreact#tsfmt()
    endif
  endif
  let b:neoformat_typescriptreact_tsfmt.exe = GetNpmBin('tsfmt')
endif

if exists('g:neoformat_enabled_typescriptreact') && index(g:neoformat_enabled_typescriptreact, 'prettier') >= 0
  if ! exists('b:neoformat_typescriptreact_prettier')
    if exists('g:neoformat_typescriptreact_prettier')
      let b:neoformat_typescriptreact_prettier = g:neoformat_typescriptreact_prettier
    else
      let b:neoformat_typescriptreact_prettier = neoformat#formatters#typescriptreact#prettier()
    endif
  endif
  let b:neoformat_typescriptreact_prettier.exe = GetNpmBin('prettier')
endif

if exists('g:neoformat_enabled_typescriptreact') && index(g:neoformat_enabled_typescriptreact, 'eslint_d') >= 0
  if ! exists('b:neoformat_typescriptreact_eslint_d')
    if exists('g:neoformat_typescriptreact_eslint_d')
      let b:neoformat_typescriptreact_eslint_d = g:neoformat_typescriptreact_eslint_d
    else
      let b:neoformat_typescriptreact_eslint_d = neoformat#formatters#typescriptreact#eslint_d()
    endif
  endif
  let b:neoformat_typescriptreact_eslint_d.exe = GetNpmBin('eslint_d')
endif
