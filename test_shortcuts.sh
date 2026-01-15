#!/bin/bash

echo "=== Diagnóstico de Atalhos ==="
echo ""
echo "1. Verificando atalho Terminal (custom17):"
echo "   Binding: $(gsettings get org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom17/ binding)"
echo "   Command: $(gsettings get org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom17/ command)"
echo "   Name: $(gsettings get org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom17/ name)"
echo ""
echo "2. Verificando atalho Menu (custom18):"
echo "   Binding: $(gsettings get org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom18/ binding)"
echo "   Command: $(gsettings get org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom18/ command)"
echo "   Name: $(gsettings get org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom18/ name)"
echo ""
echo "3. Testando execução do comando do Terminal:"
eval "$(gsettings get org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom17/ command | tr -d "'")" &
echo "   Comando executado em background"
echo ""
echo "4. Verificando se há conflitos com atalhos do sistema:"
gsettings list-keys org.gnome.desktop.wm.keybindings | grep -i "return\|enter" | head -5
echo ""
echo "=== Fim do Diagnóstico ==="
