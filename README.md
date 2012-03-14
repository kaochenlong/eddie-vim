My own Vim configurations and modules which I used. and <a href="http://blog.eddie.com.tw/2012/03/06/my-vimrc/" target="_blank">Here</a> is my current screenshot of vim.

Primary and Vim relative settings are in `plugin/settings/Vimrc.vim`, and isolate other plugins' in `plugin/settings` directory.

## Usage
### Install:
1. BACKUP your `.vim` directory and `.vimrc` first.

2. `cd ~` to change directory to your home directory.

3. copy files to your home directory:

        git clone git://github.com/kaochenlong/eddie-vim.git

4. cd to `eddie-vim` directory and execute the `update.sh` to get latest version modules:

        cd eddie-vim
        ./update.sh

5. make a symbolic link `.vim` to `eddie-vim` that you just cloned, or just rename it to `.vim` also be fine:

        ln -s eddie-vim .vim

6. link the vimrc to

        ln -s .vim/vimrc .vimrc

7. if you're still not familiar with the movement in vim by HJKL, maybe you can try the easier version:

        ln -s .vim/easy-vimrc .vimrc

8. if you use GUI version VIM, such as MacVim, you can also link to `.gvimrc`:

        ln -s eddie-vim/gvimrc .gvimrc

9. if you use Powerline under Ubuntu or something which can not show the correct icons/fonts on the bottom, you can check [this link](https://github.com/scotu/ubuntu-mono-powerline), it looks pretty nice.

### Update:
just change directory to `~/.vim` and execute `./update.sh` script, it should do all the updates automatically.

### Features:

1. Toggle between working mode and presentation mode by `<leader>z`.

## FAQ
if you can not found `ctags` command, just find your ctags path and replace my settings in `plugin/settings/Ctags.vim` file:

    let Tlist_Ctags_Cmd = '/your/path/to/ctags'

and [Exuberant Ctags](http://ctags.sourceforge.net/) is recommended.

## Contact
any question or comment, feel free to let me know :)

Eddie Kao (eddie@digik.com.tw)
