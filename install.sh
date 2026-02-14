#!/bin/bash

# Script de instalación de dotfiles con GNU Stow
# Uso: ./install.sh [modulo1] [modulo2] ... o ./install.sh (instala todo)

set -e

# Colores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Directorio del repo
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DOTFILES_DIR"

# Módulos disponibles
MODULES="ghostty nvim tmux vim zsh"

# Función para hacer backup
backup_config() {
    local target="$1"
    local backup_name="${target}.backup.$(date +%Y%m%d_%H%M%S)"
    
    if [ -e "$target" ] || [ -L "$target" ]; then
        echo -e "${YELLOW}⚠️  Configuración existente detectada: $target${NC}"
        echo -e "${BLUE}📦 Haciendo backup en: $backup_name${NC}"
        mv "$target" "$backup_name"
        echo -e "${GREEN}✅ Backup completado${NC}"
    fi
}

# Función para instalar un módulo
install_module() {
    local module="$1"
    
    echo -e "\n${BLUE}📦 Instalando módulo: $module${NC}"
    
    case "$module" in
        "nvim")
            backup_config "$HOME/.config/nvim"
            stow "$module"
            echo -e "${GREEN}✅ Neovim configurado${NC}"
            ;;
        "ghostty")
            backup_config "$HOME/.config/ghostty"
            stow "$module"
            echo -e "${GREEN}✅ Ghostty configurado${NC}"
            ;;
        "tmux")
            backup_config "$HOME/.tmux.conf"
            backup_config "$HOME/.tmux"
            stow "$module"
            echo -e "${GREEN}✅ Tmux configurado${NC}"
            ;;
        "vim")
            backup_config "$HOME/.vimrc"
            stow "$module"
            echo -e "${GREEN}✅ Vim configurado${NC}"
            ;;
        "zsh")
            backup_config "$HOME/.zshrc"
            stow "$module"
            echo -e "${GREEN}✅ Zsh configurado${NC}"
            ;;
        *)
            echo -e "${RED}❌ Módulo desconocido: $module${NC}"
            return 1
            ;;
    esac
}

# Verificar que stow está instalado
if ! command -v stow &> /dev/null; then
    echo -e "${RED}❌ Error: GNU Stow no está instalado${NC}"
    echo "Instálalo con:"
    echo "  Ubuntu/Debian: sudo apt-get install stow"
    echo "  macOS: brew install stow"
    echo "  Arch: sudo pacman -S stow"
    exit 1
fi

echo -e "${BLUE}🚀 Instalador de dotfiles${NC}"
echo -e "${BLUE}========================${NC}"

# Si se proporcionan argumentos, instalar solo esos módulos
if [ $# -gt 0 ]; then
    echo -e "${BLUE}📋 Instalando módulos específicos: $@${NC}"
    for module in "$@"; do
        if [[ " $MODULES " =~ " $module " ]]; then
            install_module "$module"
        else
            echo -e "${RED}❌ Módulo no válido: $module${NC}"
            echo -e "${YELLOW}Módulos disponibles: $MODULES${NC}"
            exit 1
        fi
    done
else
    # Instalar todos los módulos
    echo -e "${BLUE}📋 Instalando todos los módulos...${NC}"
    for module in $MODULES; do
        install_module "$module"
    done
fi

echo -e "\n${GREEN}✅ Instalación completada!${NC}"
echo -e "${YELLOW}💡 Nota: Los backups se guardaron con extensión .backup.{timestamp}${NC}"
echo -e "${YELLOW}💡 Para desinstalar: stow -D <modulo>${NC}"
