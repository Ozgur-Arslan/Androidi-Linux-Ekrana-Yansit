#!/bin/bash
# Bağlanan cihaz bilgisayara tanıtılıyor. Tabletin IP'i bulunuyor. Wifi üzerinden bağlantı kuruluyor. 
# PORT değişkenine 5555 port değeri atanıyor

PORT="5555"

# USB ile bağlı cihazı kontrol et
DEVICE=""
while [ -z "$DEVICE" ]; do
    DEVICE=$(adb devices | awk '$2=="device"{print $1; exit}')
    if [ -z "$DEVICE" ]; then
        echo "👉 USB ile bağlı cihaz bulunamadı! Lütfen cihazı bilgisayara takınız."
        read -p "👉 USB cihazı bağlayınız ve ENTER tuşuna basınız."
    fi
done

echo "✅ USB cihaz bulundu: $DEVICE"

# Tabletten IP adresini öğren
IP=$(adb -s "$DEVICE" shell ip -f inet addr show wlan0 | grep 'inet ' | awk '{print $2}' | cut -d/ -f1)

if [ -z "$IP" ]; then
    echo "❌ Tablet IP alınamadı!"
    exit 1
fi

echo "✅ Tablet IP bulundu: $IP"

# TCP/IP moduna geç
adb tcpip $PORT
sleep 2

# Wifi ile bağlan
adb connect $IP:$PORT

# Çakışmayı önlemek için USB bağlantısını kopar
#adb disconnect $DEVICE

# scrcpy başlat
scrcpy -s $IP:$PORT
