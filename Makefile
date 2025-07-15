.DEFAULT_GOAL := help
.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

gitconfig: ## Create a symlink for the gitconfig file
	rm -f ~/.gitconfig
	ln -s $(HOME)/dotfiles/.gitconfig ~/.gitconfig

zshrc: ## Create a symlink for the zshrc file
	rm -f ~/.zshrc
	ln -s $(HOME)/dotfiles/.zshrc ~/.zshrc
