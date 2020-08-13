runtime plugin/neomake-local-eslint.vim
let b:neomake_javascriptreact_eslint_exe = GetNpmBin('eslint')
" vim-flow doesn't us a buffer-specific config
let g:flow#flowpath = GetNpmBin('flow')

" Neoformat javascriptreact exes

if exists('g:neoformat_enabled_javascriptreact') && index(g:neoformat_enabled_javascriptreact, 'js-beautify') >= 0
  if ! exists('b:neoformat_javascriptreact_jsbeautify')
    if exists('g:neoformat_javascriptreact_jsbeautify')
      let b:neoformat_javascriptreact_jsbeautify = g:neoformat_javascriptreact_jsbeautify
    else
      let b:neoformat_javascriptreact_jsbeautify = neoformat#formatters#javascriptreact#jsbeautify()
    endif
  endif
  let b:neoformat_javascriptreact_jsbeautify.exe = GetNpmBin('js-beautify')
endif

if exists('g:neoformat_enabled_javascriptreact') && index(g:neoformat_enabled_javascriptreact, 'clang-format') >= 0
  if ! exists('b:neoformat_javascriptreact_clangformat')
    if exists('g:neoformat_javascriptreact_clangformat')
      let b:neoformat_javascriptreact_clangformat = g:neoformat_javascriptreact_clangformat
    else
      let b:neoformat_javascriptreact_clangformat = neoformat#formatters#javascriptreact#clangformat()
    endif
  endif
  let b:neoformat_javascriptreact_clangformat.exe = GetNpmBin('clang-format')
endif

if exists('g:neoformat_enabled_javascriptreact') && index(g:neoformat_enabled_javascriptreact, 'prettydiff') >= 0
  if ! exists('b:neoformat_javascriptreact_prettydiff')
    if exists('g:neoformat_javascriptreact_prettydiff')
      let b:neoformat_javascriptreact_prettydiff = g:neoformat_javascriptreact_prettydiff
    else
      let b:neoformat_javascriptreact_prettydiff = neoformat#formatters#javascriptreact#prettydiff()
    endif
  endif
  let b:neoformat_javascriptreact_prettydiff.exe = GetNpmBin('prettydiff')
endif

if exists('g:neoformat_enabled_javascriptreact') && index(g:neoformat_enabled_javascriptreact, 'esformatter') >= 0
  if ! exists('b:neoformat_javascriptreact_esformatter')
    if exists('g:neoformat_javascriptreact_esformatter')
      let b:neoformat_javascriptreact_esformatter = g:neoformat_javascriptreact_esformatter
    else
      let b:neoformat_javascriptreact_esformatter = neoformat#formatters#javascriptreact#esformatter()
    endif
  endif
  let b:neoformat_javascriptreact_esformatter.exe = GetNpmBin('esformatter')
endif

if exists('g:neoformat_enabled_javascriptreact') && index(g:neoformat_enabled_javascriptreact, 'prettier') >= 0
  if ! exists('b:neoformat_javascriptreact_prettier')
    if exists('g:neoformat_javascriptreact_prettier')
      let b:neoformat_javascriptreact_prettier = g:neoformat_javascriptreact_prettier
    else
      let b:neoformat_javascriptreact_prettier = neoformat#formatters#javascriptreact#prettier()
    endif
  endif
  let b:neoformat_javascriptreact_prettier.exe = GetNpmBin('prettier')
endif

if exists('g:neoformat_enabled_javascriptreact') && index(g:neoformat_enabled_javascriptreact, 'prettier-eslint') >= 0
  if ! exists('b:neoformat_javascriptreact_prettiereslint')
    if exists('g:neoformat_javascriptreact_prettiereslint')
      let b:neoformat_javascriptreact_prettiereslint = g:neoformat_javascriptreact_prettiereslint
    else
      let b:neoformat_javascriptreact_prettiereslint = neoformat#formatters#javascriptreact#prettiereslint()
    endif
  endif
  let b:neoformat_javascriptreact_prettiereslint.exe = GetNpmBin('prettier-eslint')
endif

if exists('g:neoformat_enabled_javascriptreact') && index(g:neoformat_enabled_javascriptreact, 'eslint_d') >= 0
  if ! exists('b:neoformat_javascriptreact_eslint_d')
    if exists('g:neoformat_javascriptreact_eslint_d')
      let b:neoformat_javascriptreact_eslint_d = g:neoformat_javascriptreact_eslint_d
    else
      let b:neoformat_javascriptreact_eslint_d = neoformat#formatters#javascriptreact#eslint_d()
    endif
  endif
  let b:neoformat_javascriptreact_eslint_d.exe = GetNpmBin('eslint_d')
endif

if exists('g:neoformat_enabled_javascriptreact') && index(g:neoformat_enabled_javascriptreact, 'standard') >= 0
  if ! exists('b:neoformat_javascriptreact_standard')
    if exists('g:neoformat_javascriptreact_standard')
      let b:neoformat_javascriptreact_standard = g:neoformat_javascriptreact_standard
    else
      let b:neoformat_javascriptreact_standard = neoformat#formatters#javascriptreact#standard()
    endif
  let b:neoformat_javascriptreact_standard.exe = GetNpmBin('standard')
  endif
endif
