# .dotfiles

These are my configuration files.

## Usage

To use the configurations, there are two main ways: using GNU stow and copying manually. Stow holds some advantages over manual copying as it creates symlinks with the git versioned files still in the repo.

### Stow Install

1. Install GNU stow with your distro's package manager or manually from source.

```
apt install stow
pacman -S stow
```

2. Clone the git repo.

3. Navigate to the repo: `cd dotfiles`

4. Install specific configs you desire with stow: `stow -t ~ vim`

### Manual Install

1. Clone the git repo.

2. Navigate to the repo: `cd dotfiles`

3. opy specific configs to your home directory.


## Contents
* bash
* bin
* crawl
* firefox
* ncmpcpp
* nethack
* ranger
* startpage
* sxhkd
* tmux
* vim
* weechat
* x
* zathura
* zenbu
* zsh
