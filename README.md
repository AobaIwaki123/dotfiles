# Dotfiles

Personal dotfiles configuration for macOS development environment.

## Overview

This repository contains my personal configuration files (dotfiles) for setting up a consistent development environment across different machines. It includes configurations for Git, Zsh shell, and provides an automated setup process using Make.

## Repository Structure

```
.
├── Makefile        # Automation scripts for setup
├── README.md       # This file
├── .gitconfig      # Git configuration with aliases and user settings
└── .zshrc          # Zsh shell configuration with custom prompt and PATH settings
```

## Features

- **Git Configuration**: Custom aliases and user settings
- **Zsh Shell**: Custom prompt and environment variables
- **Automated Setup**: Makefile targets for easy installation
- **Symlink Management**: Safe symlink creation with cleanup

## Setup

### Prerequisites

- macOS
- Git
- Zsh shell
- Make

### Installation

1. Clone this repository to your home directory:
   ```bash
   git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. Install all configurations:
   ```bash
   make help  # Show available commands
   ```

3. Install specific configurations:
   ```bash
   make gitconfig  # Install Git configuration
   make zshrc      # Install Zsh configuration
   ```

## Usage

### Available Make Targets

- `make help` - Show all available commands with descriptions
- `make gitconfig` - Create symlink for Git configuration
- `make zshrc` - Create symlink for Zsh configuration

### Git Aliases

The `.gitconfig` includes several useful aliases:

- `git alias` - List all available Git aliases
- `git la` - Pretty log with graph showing all branches
- `git see` - Open repository in GitHub web interface
- `git st` - Status shorthand
- `git ch` - Checkout shorthand
- `git sw` - Switch shorthand

### Zsh Configuration

The `.zshrc` includes:

- Custom colorized prompt showing user@host and current directory
- asdf version manager integration
- Conda environment initialization
- Custom PATH configurations for development tools

## Customization

Feel free to fork this repository and modify the configuration files to suit your preferences. The Makefile can be extended to include additional dotfiles as needed.

## Safety Features

- Existing configuration files are safely removed before creating symlinks
- Each Make target includes descriptive help text
- Symlinks point to the repository location, making updates easy

## References

- [職場のプロジェクトに必ず配置しちゃうMakefileの話 - Zenn](https://zenn.dev/loglass/articles/0016-make-makefile)