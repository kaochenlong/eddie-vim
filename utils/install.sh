#
# my VIMRC and plugins installer
#
# created by Eddie Kao <eddie@digik.com.tw>
# just for installing my .vim configurations and plugins in one command.
#

vim_folder=~/.vim
vim_rc=~/.vimrc
backup_rand=$RANDOM

# detect if there's a .vim folder
if [ -d $vim_folder ]
then
  echo "\033[0;31mYou already have a .vim folder in your home directory.\033[0;m"
  read -p "Would you like to backup your .vim folder first? [y/n] " ans
  if [ "$ans" == "y" ]
  then
    echo "backup your original $vim_folder to $vim_folder-$(date +%Y%m%d)-$backup_rand"
    mv $vim_folder $vim_folder-$(date +%Y%m%d)-$backup_rand
  else
    exit
  fi
fi

echo $vim_rc

# check if vimrc is already exist
if [ -L $vim_rc ] || [ -f $vim_rc ]
then
  echo "\033[0;31mThere's .vimrc in your home directory.\033[0;m"
  read -p "Would you like to backup your .vimrc first? [y/n] " ans
  if [ "$ans" == "y" ]
  then
    echo "backup your original $vim_rc to $vim_rc-$(date +%Y%m%d)-$backup_rand"
    mv $vim_rc $vim_rc$(date +%Y%m%d)-$backup_rand
  else
    exit
  fi
fi

# check if git is installed
hash git >/dev/null && /usr/bin/env git clone git://github.com/kaochenlong/eddie-vim.git ~/.vim || {
  echo "sorry, git is not installed in this machine."
  exit
}

# make a symbolic link
echo ""
echo "There're 4 kinds of vimrc:"
echo "1. \033[0;31mvimrc:\033[0;m standard and default version vimrc."
echo "2. \033[0;31measy-vimrc:\033[0;m same as vimrc, but add some easier key mapping for new Vimer."
echo "3. \033[0;31mpro-vimrc:\033[0;m same as vimrc, but remove the arrow keys mapping."
echo "4. \033[0;31mexperimental-vimrc:\033[0;m same as pro-vimrc, but just for experimental purpose."
echo ""
read -p "What kind of .vimrc would you like to use? [1/2/3/4] " ans

case $ans in
  1)
    echo "using standard vimrc.."
    ln -s $vim_folder/vimrc $vim_rc
    ;;
  2)
    echo "using easy vimrc.."
    ln -s $vim_folder/easy-vimrc $vim_rc
    ;;
  3)
    echo "using pro vimrc.."
    ln -s $vim_folder/pro-vimrc $vim_rc
    ;;
  4)
    echo "using experimental vimrc.."
    ln -s $vim_folder/experimental-vimrc $vim_rc
    ;;
  *)
    echo "using standard vimrc"
    ln -s $vim_folder/vimrc $vim_rc
    ;;
esac

# run updates
cd $vim_folder
sh ./update.sh

echo ""
echo "\033[0;34mNice! Seems everything is done.\033[0m"
echo "\033[0;34mGithub Repository: https://github.com/kaochenlong/eddie-vim\033[0m"
echo "\033[0;34mfeel free to fork it :)\033[0m"
echo "\033[0;34m<Eddie Kao> eddie@digik.com.tw\033[0m"
echo ""

exit
