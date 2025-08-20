#!/bin/bash
# Scrcpy + ADB otomatik kurulum
# Özgür için hazırlandı :)


# Paket kontrol ve kurulum fonksiyonu
paket_kur() {
    PAKET=$1
    if dpkg -s "$PAKET" &>/dev/null; then
        echo "✅ $PAKET zaten kurulu."
    else
        echo "📦 $PAKET kurulmadı, şimdi kuruluyor..."
        sudo apt install -y "$PAKET"
    fi
}

echo "Paket listesi güncelleniyor..."
sudo apt update -y

paket_kur adb
paket_kur scrcpy

#Masaüstüne kısayol ekle sikriptini çalıştır.
./desktop_ikon_ekle.sh

echo "✅ Kurulum tamamlandı!"
echo "👉 DİKKAT ! Tabletinizi yada telefonunuzu USB ile bilgisayara bağlayınız."
echo "👉 Masaüstündeki 'Tablete Bağlan' simgesine çift tıklayarak çalıştırabilirsiniz."
echo "👉 Kurulum sağlandıktan sonra USB'den cihazı çıkarın."
