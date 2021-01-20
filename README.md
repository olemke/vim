Clone this repository in your home directory and name it `.vim`:

git clone https://github.com/olemke/vim.git .vim

Opening vim will automatically install the plugin manager by using this command:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

You'll get an error message when first opening vim due to the missing
colorscheme. Hit `<ENTER>` to ignore the message. It'll disappear after the
initial download of the plugins and a restart of vim.

Install Intellisense extensions:

```
:CocInstall EXTENSIONNAME
```

Common extensions:

```
coc-clangd
coc-cmake
coc-css
coc-gitignore
coc-html
coc-json
coc-prettier
coc-python@1.2.9
coc-texlab
coc-tsserver
coc-vimlsp
```

To install all the extensions listed above, use the following vim command:

```
:call InstallCocExtensions()
```
