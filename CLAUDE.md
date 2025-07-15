# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This is a personal dotfiles repository for macOS development environment setup. It manages configuration files through symlinks and provides automated setup via Make targets.

## Key Commands

### Setup and Installation
- `make help` - Show all available commands with descriptions
- `make gitconfig` - Create symlink for Git configuration (~/.gitconfig)
- `make zshrc` - Create symlink for Zsh configuration (~/.zshrc)

### No Build/Test Commands
This repository contains only configuration files - no compilation, linting, or testing is required.

## Architecture

### File Structure
- `Makefile` - Automation for creating symlinks to configuration files
- `.gitconfig` - Git user settings and aliases for development workflow
- `.zshrc` - Zsh shell configuration with custom prompt, PATH, and tool integrations

### Symlink Management
The Makefile safely removes existing config files before creating symlinks pointing to this repository, allowing easy updates by pulling changes.

### Git Aliases
Key aliases defined in `.gitconfig`:
- `git la` - Pretty log with graph showing all branches
- `git see` - Open repository in GitHub web interface  
- `git clean-unused-branches` - Remove merged branches

### Shell Configuration
The `.zshrc` includes:
- asdf version manager integration
- Custom colorized prompt
- Conda environment initialization
- Custom aliases (claude, cdls)

## Development Workflow

- Always commit and push changes after completing tasks
- Use descriptive commit messages following the existing pattern
