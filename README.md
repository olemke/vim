Install plugin manager (happens automatically when opening vim):

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

You'll get an error message when first opening vim due to the missing
colorscheme.  Hit `<ENTER>` to ignore the message.  It'll disappear after the
initial download of the plugins and a restart of vim.

Install Intellisense extensions:

```
:CocInstall EXTENSIONNAME
```

Common extensions:

```
coc-clangd
coc-css
coc-gitignore
coc-html
coc-json
coc-python@1.2.9
coc-texlab
coc-tsserver
coc-vimlsp
```
