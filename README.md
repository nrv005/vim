# vim - Par Nrv005

[Vim] est mon fichier de paramétrage de vim. Il permet une installation facile des paramétres et plugin que j'utilise. Pour faciliter l'installation des plugins, j'utilise le plugin [Vundle] (https://github.com/VundleVim/Vundle.vim)

##Installation

1. Clonage:

Cloner le github

`git clone http://github.com/nrv005/vim.git ~/`


2. Parametrage de votre compte:

Creer convenablement les liens et repertoires.

```bash
$>mv vim/ .vim/
$>ln -s .vim/vimrc .vimrc`
```
3. Installation Vundle:

Cloner le github [Vundle] (https://github.com/VundleVim/Vundle.vim)

`$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

4. Installer les plugins:

lancer `$>vim` et lancer la commande `:PluginInstall`
