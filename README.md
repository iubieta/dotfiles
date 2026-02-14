# Dotfiles

Configuraciones personales para Neovim, Tmux, Ghostty, Zsh y Vim.

## Requisitos

- [GNU Stow](https://www.gnu.org/software/stow/)
- Git

## Instalación rápida

```bash
# Clonar el repositorio
git clone <tu-repo> ~/dotfiles
cd ~/dotfiles

# Instalar todo
./install.sh

# O instalar módulos específicos
./install.sh nvim tmux
```

## Uso manual con Stow

```bash
# Instalar todos los módulos
stow ghostty nvim tmux vim zsh

# Instalar solo uno
stow nvim

# Desinstalar
stow -D nvim
```

## Estructura

```
dotfiles/
├── ghostty/.config/ghostty/config  → ~/.config/ghostty/config
├── nvim/.config/nvim/              → ~/.config/nvim/
├── tmux/.tmux.conf                 → ~/.tmux.conf
├── vim/.vimrc                      → ~/.vimrc
└── zsh/.zshrc                      → ~/.zshrc
```

## Características

- **Backup automático**: El script guarda tus configs existentes antes de sobrescribir
- **Instalación selectiva**: Puedes instalar solo los módulos que necesites
- **Compatible con Stow**: Usa symlinks, no duplica archivos

## Temas de Neovim

Los temas están organizados en `nvim/.config/nvim/lua/plugins/themes/` con el campo `enabled` para cambiar rápidamente entre ellos.

Temas disponibles:
- doom-one (activo por defecto)
- onedark-nvim
- onedark-vim
- catppuccin

Para cambiar de tema, edita el archivo correspondiente y cambia `enabled = false` a `enabled = true`.
