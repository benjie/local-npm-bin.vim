runtime plugin/neomake-local-eslint.vim
let b:neomake_javascript_eslint_exe = GetNpmBin('eslint')
" vim-flow doesn't us a buffer-specific config
let g:flow#flowpath = GetNpmBin('flow')

" Neoformat javascript exes

if exists('g:neoformat_enabled_javascript') && index(g:neoformat_enabled_javascript, 'js-beautify') > 0
  if ! exists('b:neoformat_javascript_jsbeautify')
    if exists('g:neoformat_javascript_jsbeautify')
      let b:neoformat_javascript_jsbeautify = g:neoformat_javascript_jsbeautify
    else
      let b:neoformat_javascript_jsbeautify = neoformat#formatters#javascript#jsbeautify()
    endif
  endif
  let b:neoformat_javascript_jsbeautify.exe = GetNpmBin('js-beautify')
endif

if exists('g:neoformat_enabled_javascript') && index(g:neoformat_enabled_javascript, 'clang-format') > 0
  if ! exists('b:neoformat_javascript_clangformat')
    if exists('g:neoformat_javascript_clangformat')
      let b:neoformat_javascript_clangformat = g:neoformat_javascript_clangformat
    else
      let b:neoformat_javascript_clangformat = neoformat#formatters#javascript#clangformat()
    endif
  endif
  let b:neoformat_javascript_clangformat.exe = GetNpmBin('clang-format')
endif

if exists('g:neoformat_enabled_javascript') && index(g:neoformat_enabled_javascript, 'prettydiff') > 0
  if ! exists('b:neoformat_javascript_prettydiff')
    if exists('g:neoformat_javascript_prettydiff')
      let b:neoformat_javascript_prettydiff = g:neoformat_javascript_prettydiff
    else
      let b:neoformat_javascript_prettydiff = neoformat#formatters#javascript#prettydiff()
    endif
  endif
  let b:neoformat_javascript_prettydiff.exe = GetNpmBin('prettydiff')
endif

if exists('g:neoformat_enabled_javascript') && index(g:neoformat_enabled_javascript, 'esformatter') > 0
  if ! exists('b:neoformat_javascript_esformatter')
    if exists('g:neoformat_javascript_esformatter')
      let b:neoformat_javascript_esformatter = g:neoformat_javascript_esformatter
    else
      let b:neoformat_javascript_esformatter = neoformat#formatters#javascript#esformatter()
    endif
  endif
  let b:neoformat_javascript_esformatter.exe = GetNpmBin('esformatter')
endif

if exists('g:neoformat_enabled_javascript') && index(g:neoformat_enabled_javascript, 'prettier') > 0
  if ! exists('b:neoformat_javascript_prettier')
    if exists('g:neoformat_javascript_prettier')
      let b:neoformat_javascript_prettier = g:neoformat_javascript_prettier
    else
      let b:neoformat_javascript_prettier = neoformat#formatters#javascript#prettier()
    endif
  endif
  let b:neoformat_javascript_prettier.exe = GetNpmBin('prettier')
endif

if exists('g:neoformat_enabled_javascript') && index(g:neoformat_enabled_javascript, 'prettier-eslint') > 0
  if ! exists('b:neoformat_javascript_prettiereslint')
    if exists('g:neoformat_javascript_prettiereslint')
      let b:neoformat_javascript_prettiereslint = g:neoformat_javascript_prettiereslint
    else
      let b:neoformat_javascript_prettiereslint = neoformat#formatters#javascript#prettiereslint()
    endif
  endif
  let b:neoformat_javascript_prettiereslint.exe = GetNpmBin('prettier-eslint')
endif

if exists('g:neoformat_enabled_javascript') && index(g:neoformat_enabled_javascript, 'eslint_d') > 0
  if ! exists('b:neoformat_javascript_eslint_d')
    if exists('g:neoformat_javascript_eslint_d')
      let b:neoformat_javascript_eslint_d = g:neoformat_javascript_eslint_d
    else
      let b:neoformat_javascript_eslint_d = neoformat#formatters#javascript#eslint_d()
    endif
  endif
  let b:neoformat_javascript_eslint_d.exe = GetNpmBin('eslint_d')
endif

if exists('g:neoformat_enabled_javascript') && index(g:neoformat_enabled_javascript, 'standard') > 0
  if ! exists('b:neoformat_javascript_standard')
    if exists('g:neoformat_javascript_standard')
      let b:neoformat_javascript_standard = g:neoformat_javascript_standard
    else
      let b:neoformat_javascript_standard = neoformat#formatters#javascript#standard()
    endif
  let b:neoformat_javascript_standard.exe = GetNpmBin('standard')
  endif
endif
