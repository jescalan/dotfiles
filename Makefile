backup:
	if [ -f ~/.profile ]; then mv ~/.profile ~/.profile.bak; fi
	if [ -f ~/.bas_profile ]; then mv ~/.bas_profile ~/.bas_profile.bak; fi
	if [ -f ~/.bashrc ]; then mv ~/.bashrc ~/.bashrc.bak; fi
	if [ -f ~/.git-completion ]; then mv ~/.git-completion ~/.git-completion.bak; fi
	if [ -f ~/.git-prompt ]; then mv ~/.git-prompt ~/.git-prompt.bak; fi
	if [ -f ~/.hushlogin ]; then mv ~/.hushlogin ~/.hushlogin.bak; fi
	if [ -f ~/.vimrc ]; then mv ~/.vimrc ~/.vimrc.bak; fi
	if [ -f ~/.vim ]; then mv ~/.vim ~/.vim.bak; fi

install:
	ln -s `pwd`/.profile ~/.profile
	ln -s `pwd`/.bash_profile ~/.bash_profile
	ln -s `pwd`/.bashrc ~/.bashrc
	ln -s `pwd`/.git-completion.sh ~/.git-completion.sh
	ln -s `pwd`/.git-prompt.sh ~/.git-prompt.sh
	ln -s `pwd`/.hushlogin ~/.hushlogin
	ln -s `pwd`/.vimrc ~/.vimrc
	ln -s `pwd`/.vim ~/.vim
