# Dotfiles

## Dependencies

- zsh
- oh-my-zsh
- go
- most
- vim-plug

## Configurations

### Remove stale agent sockets (e.g. GPG Agent Socket) (Do this in servers)

```bash
sudo echo "StreamLocalBindUnlink yes" >> /etc/ssh/sshd_config
```

## Linux

### Set zsh as default shell

```bash
sudo hsh -s /usr/bin/zsh $(whoami)
```
