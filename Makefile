backup:
	if [ -f ~/.profile ]; then mv ~/.profile ~/.profile.bak; fi
	if [ -f ~/.bash_profile ]; then mv ~/.bash_profile ~/.bash_profile.bak; fi
	if [ -f ~/.bashrc ]; then mv ~/.bashrc ~/.bashrc.bak; fi
	if [ -f ~/.git-completion.sh ]; then mv ~/.git-completion.sh ~/.git-completion.sh.bak; fi
	if [ -f ~/.git-prompt.sh ]; then mv ~/.git-prompt.sh ~/.git-prompt.sh.bak; fi
	if [ -f ~/.hushlogin ]; then mv ~/.hushlogin ~/.hushlogin.bak; fi
	if [ -f ~/.vimrc ]; then mv ~/.vimrc ~/.vimrc.bak; fi
	if [ -f ~/.vim ]; then mv ~/.vim ~/.vim.bak; fi
	if [ -f ~/.zshrc ]; then mv ~/.zshrc ~/.zshrc.bak; fi

remove_backup:
	if [ -f ~/.profile.bak ]; then rm ~/.profile.bak; fi
	if [ -f ~/.bash_profile.bak ]; then rm ~/.bash_profile.bak; fi
	if [ -f ~/.bashrc.bak ]; then rm ~/.bashrc.bak; fi
	if [ -f ~/.git-completion.sh.bak ]; then rm ~/.git-completion.sh.bak; fi
	if [ -f ~/.git-prompt.sh.bak ]; then rm ~/.git-prompt.sh.bak; fi
	if [ -f ~/.hushlogin.bak ]; then rm ~/.hushlogin.bak; fi
	if [ -f ~/.vimrc.bak ]; then rm ~/.vimrc.bak; fi
	if [ -f ~/.vim.bak ]; then rm ~/.vim.bak; fi
	if [ -f ~/.zshrc.bak ]; then rm ~/.zshrc.bak; fi

install:
	ln -s `pwd`/.profile ~/.profile
	ln -s `pwd`/.bash_profile ~/.bash_profile
	ln -s `pwd`/.bashrc ~/.bashrc
	ln -s `pwd`/.git-completion.sh ~/.git-completion.sh
	ln -s `pwd`/.git-prompt.sh ~/.git-prompt.sh
	ln -s `pwd`/.hushlogin ~/.hushlogin
	ln -s `pwd`/.vimrc ~/.vimrc
	ln -s `pwd`/.vim ~/.vim
	ln -s `pwd`/.zshrc ~/.zshrc
	ln -s `pwd`/jeff.zsh-theme ~/.oh-my-zsh/custom/themes/jeff.zsh-theme
