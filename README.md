# install

dependencies & customizations with [thoughtbot/laptop](https://github.com/thoughtbot/laptop)

```sh
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/main/mac
curl -o ~/.laptop.local https://raw.githubusercontent.com/jjohnson/machine/main/.laptop.local
sh mac 2>&1 | tee ~/laptop.log
```

Zsh config framework with [prezto](https://github.com/sorin-ionescu/prezto)

```sh
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/jjohnson/machine/main/install_prezto.sh)"
```
