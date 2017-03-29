all: git bash vim



git:
	cp .git-prompt.sh ~/
	cp .git-completion.bash ~/

bash: git
	echo 'source .bashrc_ubuntu_additions' >> ~/.bashrc

vim:
	cp -r .vim* ~/
