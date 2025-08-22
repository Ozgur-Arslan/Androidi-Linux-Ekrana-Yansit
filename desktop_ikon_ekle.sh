#!/bin/bash
# Dosyalar koyalanıyor.Masaüstüne kısayol ekleniyor.
# Özgür için hazırlandı :)

echo "✅ Dosyalar kopyalanıyor..."

# Scripti kullanıcı dizinine kopyala(/home/kullanıcı_adı/) çalıştırma izni ver.  
cp tablete_baglan.sh $HOME/
chmod +x $HOME/tablete_baglan.sh

# Unistall dosyasını (/home/kullanıcı_adı/)dizinine kopyala çalıştırma izni ver.
cp uninstall.sh $HOME/
chmod +x $HOME/uninstall.sh

# Masaüstüne kısayolu kopyala ve çalıtırşma izni ver.
cp tablete_baglan.desktop $HOME/Masaüstü/
chmod +x $HOME/Masaüstü/tablete_baglan.desktop

#Program klasörünü SİL
#find ~ -type d -exec sh -c '
 # for dir do
  #  if [ -f "$dir/kur.sh" ] && [ -f "$dir/desktop_ikon_ekle.sh" ] && [ -f "$dir/tablete_baglan.desktop" ] && [ -f "$dir/tablete_baglan.sh" ]; then
   #   echo "🗑️ Siliniyor: $dir"
    #  rm -rf "$dir"
    #fi
  #done
#' sh {} +

#find "$HOME" -type f \( -name "kur.sh" -o -name "desktop_ikon_ekle.sh" -o -name "tablete_baglan.desktop" -o -name "tablete_baglan.sh" \) | while read file; do
 #   dir=$(dirname "$file")
  #  if [ -f "$dir/kur.sh" ] && [ -f "$dir/desktop_ikon_ekle.sh" ] && [ -f "$dir/tablete_baglan.desktop" ] && [ -f "$dir/tablete_baglan.sh" ]; then
   #     rm -rf "$dir"
    #fi
#done


