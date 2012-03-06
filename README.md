My own Vim configurations and modules which I used. and <a href="http://blog.eddie.com.tw/2012/03/06/my-vimrc/" target="_blank">Here</a> is my current screenshot of vim.

## Usage
### Install:
1. BACKUP your `.vim` directory and `.vimrc` first.

2. `cd ~` to change directory to your home directory.

3. copy files to your home directory:

        git clone git://github.com/kaochenlong/eddie-vim.git

4. cd to `eddie-vim` directory and execute the `update.sh` to get latest version modules:

        cd eddie-vim
        ./update.sh

5. link `.vim` and `.vimrc`

        ln -s eddie-vim .vim
        ln -s eddie-vim/vimrc .vimrc

6. if you use GUI version VIM, such as MacVim, you can also link to `.gvimrc`:

        ln -s eddie-vim/gvimrc .gvimrc

7. if you use Powerline under Ubuntu or something which can not show the correct icon/font on the bottom, you can check [this link](https://github.com/scotu/ubuntu-mono-powerline).

### Update:
just move to `.vim` directory and execute `./update.sh` script, it should do all the updates automatically.

## FAQ
if you can not found `ctags` command, just find your ctags path and add to your `.vimrc` or `.gvimrc`:

    let Tlist_Ctags_Cmd = '/your/path/to/ctags'

and [Exuberant Ctags](http://ctags.sourceforge.net/) is recommended.

## Contact
any question or comment, feel free to let me know :)

Eddie Kao (eddie@digik.com.tw)
