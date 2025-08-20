#!/bin/bash

echo "🚀 Uninstall işlemi başlatılıyor..."

# 1. adb ve scrcpy kaldırılıyor
echo "📦 adb ve scrcpy kaldırılıyor..."
sudo apt remove --purge -y adb scrcpy
sudo apt autoremove -y
sudo apt clean

# 2. Ev dizininden tablete_baglan.sh dosyası siliniyor
if [ -f "$HOME/tablete_baglan.sh" ]; then
    echo "🗑 $HOME/tablete_baglan.sh siliniyor..."
    rm "$HOME/tablete_baglan.sh"
else
    echo "ℹ️ $HOME/tablete_baglan.sh bulunamadı."
fi

# 3. Masaüstünden tablete_baglan.desktop dosyası siliniyor
if [ -f "$HOME/Masaüstü/tablete_baglan.desktop" ]; then
    echo "🗑 $HOME/Masaüstü/tablete_baglan.desktop siliniyor..."
    rm "$HOME/Masaüstü/tablete_baglan.desktop"
else
    echo "ℹ️ $HOME/Masaüstü/tablete_baglan.desktop bulunamadı."
fi

echo "✅ Kaldırma işlemi tamamlandı!"
