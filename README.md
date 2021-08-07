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

### Change pre installed version of git (solves slow xcodebuild start)

```bash
brew install git
```

### Stop GPG Tools asking to store password in keychain

```bash
defaults write org.gpgtools.common DisableKeychain -bool yes
```

## Linux

### Don't accept language environment via ssh (Do this in servers)

```bash
# AcceptEnv LANG LC_* (Comment this in /etc/ssh/sshd_config)
```

### Remove stale agent sockets (e.g. GPG Agent Socket) (Do this in servers)

```bash
sudo echo "StreamLocalBindUnlink yes" >> /etc/ssh/sshd_config
```

### Set zsh as default shell

```bash
sudo chsh -s /usr/bin/zsh $(whoami)
```
