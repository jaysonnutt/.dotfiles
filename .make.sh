# .make.sh
#
# This script creates symlinks from ~/ to dotfiles dir

dir=~/dotfiles
olddir=~/.dotfiles_old
files=".vimrc .zshrc .tmux.conf .gitconfig"

echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...complete."

echo "Changing to the $dir directory"
cd $dir
echo "...complete."

# Put dieter.zsh-theme in the right place
cp diter.zsh-theme ~/.oh-my-zsh/themes/dieter.zsh-theme

for file in $files; do
	echo "Moving existing dotfiles from ~ to $olddir"
	mv ~/$file ~/.dotfiles_old/
	echo "Creating symlink to $file in the home directory."
	ln -s $dir/$file ~/$file
done
