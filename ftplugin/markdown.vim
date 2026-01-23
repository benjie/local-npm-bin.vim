runtime plugin/neomake-local-eslint.vim
" Neoformat javascript exes

if exists('g:neoformat_enabled_markdown') && index(g:neoformat_enabled_markdown, 'prettier') >= 0
  if ! exists('b:neoformat_markdown_prettier')
    if exists('g:neoformat_markdown_prettier')
      let b:neoformat_markdown_prettier = g:neoformat_markdown_prettier
    else
      let b:neoformat_markdown_prettier = neoformat#formatters#markdown#prettier()
    endif
  endif
  let b:neoformat_markdown_prettier.exe = GetNpmBin('prettier')
endif
