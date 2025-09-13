# makefile for pulling in user settings

.DEFAULT_GOAL := help

copy_dotfiles: ## Copy dotfiles to ~/
	cp -f ./home/bash_aliases ~/.bash_aliases
	mkdir -p ~/.bash.d
	cp -f ./home/bash.d/* ~/.bash.d/
	cp -f ./home/inputrc ~/.inputrc
	cp -f ./home/nanorc ~/.nanorc

git_aliases: ## Install git aliases with git config
	git config --global alias.co 'checkout'
	git config --global alias.aa 'add -A'
	git config --global alias.main 'checkout main'
	git config --global alias.master 'checkout master'
	git config --global alias.aliases 'config --global -l'
	git config --global alias.publish '!f() { git push --set-upstream ${1:-origin} $(git branch show-current); }; f'


download_bash_prompt: ## Download bash prompt
	cd ~ && git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1


loader_token=bash-d-loader
add_bashd_loader: ## edit the ~/.bashrc file to include the bash-d-loader
	@if ! grep -q '# $(loader_token)' ~/.bashrc ; then \
		echo 'test -d ~/.bash.d && for i in ~/.bash.d/*.sh; do source "$$i"; done # $(loader_token)' >> ~/.bashrc ; \
		echo "Added $(loader_token) to ~/.bashrc" ; \
	fi

# See <https://gist.github.com/klmr/575726c7e05d8780505a> for explanation.
help: ## This help message
	@perl -ne 'if (m/^([^\s]*):.*##(.*)$$/) { printf "make \033[36m%-30s\033[0m # %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: git_aliases copy_dotfiles download_bash_prompt help

