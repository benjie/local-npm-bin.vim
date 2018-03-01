if ! exists('b:neoformat_graphql_prettier')
  if exists('g:neoformat_graphql_prettier')
    let b:neoformat_graphql_prettier = g:neoformat_graphql_prettier
  else
    let b:neoformat_graphql_prettier = neoformat#formatters#graphql#prettier()
  endif
endif
let b:neoformat_graphql_prettier.exe = GetNpmBin('prettier')
