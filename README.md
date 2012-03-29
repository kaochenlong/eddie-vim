My own Vim configurations and plugins which I used.

Primary Vim relative settings are in `plugin/settings/Settings.vim` file, and isolate other plugins' settings in `plugin/settings` directory.

It's how my Vim looks now:

![image](https://github.com/kaochenlong/eddie-vim/raw/master/screenshots/vim-2012-03-27-macvim.png)

and <a href="http://blog.eddie.com.tw/2012/03/06/my-vimrc/" target="_blank">Here</a> are some screenshots on the other platforms.

## Usage

### Install:

1. BACKUP your `.vim` directory and `.vimrc` first.(IMPORTANT!)

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

7. if you're still not familiar with the movement in vim by HJKL or yanking and pasting text, I've made a easier version:

        ln -s .vim/easy-vimrc .vimrc

8. if you use GUI version VIM, such as MacVim or GVim, you can also link to `.gvimrc`:

        ln -s eddie-vim/gvimrc .gvimrc

9. if you use Powerline under Ubuntu or something which can not show the correct icons/fonts on the bottom, you can check [this link](https://github.com/scotu/ubuntu-mono-powerline), it looks pretty nice.

10. you may need to install `ack` first if you use `ack.vim`.

### Update:

just change directory to `~/.vim` and execute `./update.sh` script, it should do all the updates automatically.

### Features:

1. Resize splited windows automatically, so that you  get a bigger editing room if you're working with a smaller screen. (stole from [Gary Bernhardt](https://github.com/garybernhardt))

2. Toggle between working mode and presentation mode by `<leader>z`, but only work in GUI version Vim. You can check [here](http://blog.eddie.com.tw/2012/03/14/switch-to-presentation-mode/) to see how it looks like. (stole from [Mike Skalnik](https://github.com/skalnik))

3. some usually used key mappings in normal mode:

    a. `<F1>` to launch a Calendar window.

    a. `<F2>` to toggle NERDTree on and off.
    
    a. `<F4>` to toggle Taglist window.

    a. `<F5>` is script runner, according to the filetype, it will run Ruby or Python script, or even CoffeeScript(You have to install CoffeeScript first, of course). if the filetype is VimScript, `<F5>` will run `:source %` for you.

    a. `<F7>` to switch to previous tab, and `<F8>` to the next tab.

    a. hit `<ctrl>w p` will launch a quick window to match keywords from your current working directory, not only file name, but also path name. and `<ctrl>w u` will match from your MRU(Mostly Recent Used) files, which is also frequently used.

    a. hit `<leader>` twice to toggle comment on and off.

    a. `<tab>` and `<shift><tab>` to increase and decrease the syntax identation.


    a. `<leader>v` to open `.vimrc` in a new tab.

    a. `<leader>0` to edit or create `README.md` in current working directory.

## FAQ

if you can not found `ctags` command, just find your ctags path and replace my settings in `plugin/settings/Ctags.vim` file:

    let Tlist_Ctags_Cmd = '/your/path/to/ctags'

and [Exuberant Ctags](http://ctags.sourceforge.net/) is recommended.

## Contact

Enjoy it, and if there's any question or comment, feel free to let me know :)

Eddie Kao (eddie@digik.com.tw)
