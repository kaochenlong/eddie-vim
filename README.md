My own Vim configurations and modules which I used.

## Usage
### Install:
1. BACKUP your `.vim` directory and `.vimrc` first.
2. `cd ~` to change directory to your home directory.
3. copy files to your home directory:

        git clone git://github.com/kaochenlong/eddie-vim.git    

4. cd to `eddie-vim` directory and get latest version modules:

        cd eddie-vim; ./update.sh

5. link `.vim` and `.vimrc`

        ln -s eddie-vim .vim
        ln -s eddie-vim/vimrc .vimrc

6. if you use GUI version VIM, such as MacVim, you can also link to `.gvimrc`:

        ln -s eddie-vim/gvimrc .gvimrc

### Update:
just cd to `.vim` directory and execute `./update.sh`.

## FAQ
if you can not found `ctags` command, just find your ctags path and add to your `.vimrc`:

    let g:easytags_cmd = '/usr/local/bin/ctags'

## Contact
any question or comment, feel free to let me know :)

Eddie Kao (eddie@digik.com.tw)
