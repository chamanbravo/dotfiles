<div align="center">

# 🏠 .dotfiles

</div>

# Install

Install Scoop, Git, and MinGW (using Powershell)

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser;
irm get.scoop.sh | iex;
scoop install main/git;
```

Install

```shell
scoop install main/chezmoi && \
chezmoi init --apply git@github.com:chamanbravo/.dotfiles.git
```

# Scoop

### Buckets

```shell
scoop bucket add extras && \
scoop bucket add versions && \
scoop bucket add nerd-fonts && \
scoop bucket add games && \
```

## Stuff

```shell
scoop install nerd-fonts/JetBrains-Mono && \
scoop install main/winfetch && \
scoop install extras/wezterm && \
scoop install extras/obsidian && \
scoop install extras/revouninstaller && \
scoop install extras/glazewm && \
scoop install extras/powertoys && \
scoop install extras/flow-launcher && \
```

## Dev

```shell
scoop install extras/vscode && \
scoop install extras/gitextensions && \
scoop install main/git && \
scoop install main/rustup && \
scoop install main/go && \
scoop install main/pnpm && \
scoop install main/docker && \
scoop install main/pyenv && \
```

## Neovim

```shell
scoop install main/neovim && \
scoop install main/pwsh && \
scoop install main/nvm && \
scoop install main/ripgrep && \
scoop install main/fd && \
scoop install main/clangd && \
scoop install versions/mingw-winlibs-llvm && \
```

```shell
nvm install latest && \
nvm use latest && \
```

## Chat

```shell
scoop install extras/discord
```
