# The Dotfiles

## What is inside this repository?

- Shell customization with oh-my-posh
- Better vim and tmux keybinding
- Htop with better view
- Input with better line and command navigation
- Custom motd banner

## How to Setup?

### Install Packages

#### oh-my-posh

```sh
curl -s https://ohmyposh.dev/install.sh | sudo bash -s -- -d /usr/local/bin
sudo chmod +x /usr/local/bin/oh-my-posh
```

#### htop

Installed htop from package manager often out of date and the dotfiles not properly working. Because of that just uninstall and install this version instead.

Note: you need `jq` installed on your system before run this command!

```sh
wget $(curl -s https://api.github.com/repos/thedotslash/ci-build/releases/latest | jq -r '.assets[] | select(.name | contains ("tar.gz")) | .browser_download_url' | head -n 1) --no-check-certificate -O /tmp/htop-latest.tar.gz
sudo tar xvf /tmp/htop-latest.tar.gz /usr/local/bin
sudo chmod +x /usr/local/bin/htop
```

### Configure dotfiles

#### Install the fonts

This dotfiles required "Maple Mono Font" to be fully functionally for the glyph icons, to do that just rever to the official repository [here](https://github.com/subframe7536/Maple-font) how to install the fonts.

#### Clone this repository

```sh
git clone https://github.com/thedotslash/the-dotfiles.git
cd the-dotfiles
```

#### Symlink and append all configuration to the home directory

Please note that `.ssh/authorized_keys` shouldn't be add to your system because probably i can access your system too :))

```sh
# Symlink configuration
ln -sf $(pwd)/.ssh/authorized_keys ~/.ssh/authorized_keys
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.poshthemes ~/.poshthemes

# Copy motd banner
sudo cp $(pwd)/banner/01-motd-banner /etc/update-motd.d/01-motd-banner
sudo cp $(pwd)/banner/motd-dontpush /etc/motd-dontpush

# Append .bashrc configuration
cat $(pwd)/.bashrc >> ~/.bashrc
```

### Load the configuration

Just re-login or execute this command:

```sh
source ~/.bashrc
```

### Guidance

#### Vim Keybinds

| Key | Description |
|--------|--------|
| `,` | As leader key |
| `<leader-key>+q` | Exit without saving |
| `<leader-key>+e` | Exit |
| `<leader-key>+w` | Save editing |
| `<leader-key>+w+q` | Save and exit |
| `<leader-key>+v` | Enable-disable paste in normal and visual mode |
| `<leader-key>+n` | Enable-disable number |
| `Shift+Tab` | Decrease indent (reversed version of Tab for indent) |

#### Tmux Keybinds

| Key | Description |
|--------|--------|
| `Ctrl+b` | As prefix key (default) |
| `<prefix-key>, Ctrl+?` | Show keybind |
| `<prefix-key>, Ctrl+/` | Show all details of keybind |
| `<prefix-key>, Ctrl+r` | Reload tmux configuration |
| `<prefix-key>, Ctrl+m` | Enable mouse |
| `<prefix-key>, Ctrl+M` | Disable mouse |
| `<prefix-key>, Ctrl+k` | Kill window |
| `<prefix-key>, Ctrl+w` | Rearrange window to remove gap between window |
| `<prefix-key>, Alt+Right` | Next window |
| `<prefix-key>, Ctrl+Left` | Previous window |

### Preview

Soon!
