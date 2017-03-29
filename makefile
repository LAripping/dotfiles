all: git bash vim



git:
	cp .git-prompt.sh ~/
	cp .git-completion.bash ~/
	git config --global user.name 'Leonidas Tsaousis'
	git config --global user.email 'leo.tsaou@gmail.com'
	git config --global core.editor vim
	git config --global push.default simple
	git config color.ui always

bash: git
	echo 'source .bashrc_ubuntu_additions' >> ~/.bashrc

vim:
	cp -r .vim* ~/
