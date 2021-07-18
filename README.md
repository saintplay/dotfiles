# Dotfiles

At the moment I only support macOS and Linux. Windows: TODO?

## Dependencies

- go
- most
- vim-plug

### Linux dependencies

- zsh
- oh-my-zsh

### macOS dependencies

- homebrew
- pinentry-mac

## macOS

### Stop GPG Tools asking to store password in keychain

```bash
defaults write org.gpgtools.common DisableKeychain -bool yes
```

## Linux

### Remove stale agent sockets (e.g. GPG Agent Socket) (Do this in servers)

```bash
sudo echo "StreamLocalBindUnlink yes" >> /etc/ssh/sshd_config
```

### Set zsh as default shell

```bash
sudo chsh -s /usr/bin/zsh $(whoami)
```
