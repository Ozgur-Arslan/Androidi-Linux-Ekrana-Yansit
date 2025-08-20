# Android Cihazi Linux Ekrana Yansitma
Androit-Linux
Scrcpy Wi-Fi ile Android 7.0 Tablet Ekranını ve Kontrolünü Pardus'a Yansıtma Rehberi

---

**1. Android Tablet Hazırlığı**

1. Geliştirici Seçeneklerini Aç:

   - Ayarlar → Telefon Hakkında → Yapım Numarası'na 7 kez dokun → Geliştirici Modu açılır.

2. USB Debugging'i Aç:

   - Ayarlar → Geliştirici Seçenekleri → USB Debugging aktif.

3. USB ile İlk Yetkilendirme:

   - Tablet ile bilgisayarı USB kablo ile bağla.
   - Ekranda çıkan “Bu bilgisayara izin ver?” sorusuna Allow de.

4. Sıkıştırılmış klasörü Masaüstüne (zip, rar, tar.gz) Aç:

5. Terminali (uç birim) Aç:

   - cd /home/arslan/Masaüstü/kur_yansıt_v1.0/
   - ./kur.sh komutu ile kuruluma başla ekrandaki yönergeleri takip et.


**2. Önemli Notlar**

- İlk USB yetkilendirmesi zorunlu. Sonraki bağlantılar Wi-Fi üzerinden olur.
- Tablet ve bilgisayar aynı Wi-Fi ağına bağlı olmalı.
- Scrcpy hem ekran görüntüsü hem kontrol sağlar, VNC’den farkı budur.

