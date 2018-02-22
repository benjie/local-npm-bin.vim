# local-npm-bin.vim

Prefer local repo install of eslint, flow, etc over global install

Thanks to [@mtscout6](https://github.com/mtscout6) for the syntastic version as
inspiration, and [@ohjames](https://github.com/ohjames) for performance
improvements.

## Installation Instructions

Using [vim plugged](https://github.com/junegunn/vim-plug) you just need to add the following to your vimrc:

```
Plug 'benjie/local-npm-bin.vim'
```

Then open vim and run `:PlugInstall`

## Contributing

The following enable local `eslint` for neomake, and local `flow` for
`vim-flow`. Anything this simple to add equivalent variables for other plugins
would be welcome.

```viml
let b:neomake_javascript_eslint_exe = GetNpmBin('eslint')
let g:flow#flowpath = GetNpmBin('flow')
```

If you've got other thoughts, PRs are welcome but I'm trying to keep this
really simple - so nothing too complex!

## Inspired By

Inspired by http://blog.pixelastic.com/2015/10/05/use-local-eslint-in-syntastic/
