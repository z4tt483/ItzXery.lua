# ItzXery.lua — Dokumentasi Lengkap & Profesional

**A curated collection of Lua executor scripts for Roblox by _ItzXery_.**  
Script ini dibuat untuk executor yang mendukung `HttpGet` dan `loadstring`. Dokumentasi ini merangkum dua script utama aktif: **ESP-Players** dan **AntiLag2025**, beserta fitur lengkap, kegunaan, dan catatan profesional.

---

## 📦 Ringkasan Script Utama

| Script            | Deskripsi Singkat                                                                 |
|------------------|---------------------------------------------------------------------------------|
| **ESP-Players**   | Utilitas ESP untuk menyorot pemain lain secara real-time, dengan pilihan warna dan auto-update pemain baru/keluar. |
| **AntiLag2025**   | Paket optimasi performa dan visual Roblox: FPS boost, lighting ultra, anti-shadow, ragdoll R6/R15, splash screen, jump button resizer, dan fitur kualitas hidup lainnya. |

---

## 1. ESP-Players

**Deskripsi Lengkap:**  
ESP-Players adalah utilitas yang menyorot pemain lain di map Roblox, dirancang untuk meningkatkan awareness dalam PvP, roleplay, atau debugging. Script ini ringan, sehingga tidak menurunkan performa, dan kompatibel untuk perangkat Android maupun PC.

**Fitur Utama**
- **Highlight Pemain Real-Time:** Pemain lain akan terlihat melalui dinding atau objek (box, outline, label).  
- **Pilihan Warna ESP:** Pengguna dapat menyesuaikan warna highlight sesuai preferensi.  
- **Self-Exclusion:** Pemain sendiri tidak akan disorot.  
- **Auto-Update:** Otomatis mendeteksi pemain baru yang masuk atau keluar game.  
- **Optimasi Performa:** Dibuat ringan untuk mengurangi overhead, menjaga FPS stabil.  
- **Kompatibilitas Luas:** Berfungsi pada berbagai map dan game Roblox, baik di Android maupun PC.

**Catatan**
- ESP hanya berfungsi pada executor yang mendukung `HttpGet` dan `loadstring`.  
- Cocok digabung dengan script optimasi performa lain seperti AntiLag2025.  
- Tidak mengganggu interaksi normal karakter pemain.

---

## 2. AntiLag2025

**Deskripsi Lengkap:**  
AntiLag2025 adalah paket optimasi komprehensif untuk Roblox. Fokus pada peningkatan FPS, stabilitas visual, dan kenyamanan gameplay, tanpa merusak estetika asli game. Cocok untuk perangkat Android & PC, serta map dengan banyak efek visual.

**Tujuan Utama**
- Mempercepat rendering dan mengurangi lag.  
- Menurunkan penggunaan resource visual tanpa mengubah aset penting.  
- Menambahkan fitur kualitas hidup (QoL) seperti splash screen, ragdoll, dan pengaturan tombol lompat.

**Fitur Lengkap**

### 🔹 Optimasi Visual & Performa
- **FPS Boost:** Menonaktifkan efek visual berat dan mengoptimalkan rendering.  
- **Lighting Ultra:** Shadow dan cahaya dinamis dikurangi untuk stabilitas FPS.  
- **Anti Shadow:** Meminimalkan atau menonaktifkan shadow part tertentu untuk performa maksimal.  
- **Material & Transparansi Otomatis:** Menyetel part menjadi material ringan, kecuali part penting bernama `DamageBrick`.  
- **Pembersihan Efek:** Menghapus particle, blur, dan post-processing berat.  
- **Pengaturan Transparansi:** Part dengan transparansi tinggi dioptimalkan untuk mengurangi lag visual.

### 🔹 GUI & Kontrol
- **Splash Screen:** Halaman awal dengan teks *"Tap To Remove Page"*, sementara CoreGui dan kontrol dikunci.  
- **Rainbow Text GUI:** Efek warna dinamis pada GUI, meningkatkan estetika.  
- **Jump Button Resizer:** Tombol lompat dapat diperbesar dan digeser sesuai preferensi pengguna.  
- **Kontrol Dinamis:** Splash screen dan tombol *Skip Loading* memungkinkan aktivasi GUI dan kontrol secara instan.

### 🔹 Gameplay & Quality-of-Life (QoL)
- **Ragdoll on Death (R6 & R15):** Karakter jatuh secara realistis saat mati atau reset.  
- **Respawn Cepat:** Proses respawn dipercepat untuk pengalaman gameplay lebih lancar.  
- **Pengecualian DamageBrick:** Part bernama `DamageBrick` tidak diubah material, transparansi, atau shadow-nya.  
- **Kompatibilitas Map:** Fitur AntiLag bekerja pada berbagai map dan skala game.  
- **Efek Visual Ringan:** Tetap mempertahankan estetika game tanpa menyebabkan lag.  

### 🔹 Stabilitas & Kompatibilitas
- **Multi-Platform:** Optimasi untuk Android & PC.  
- **Executor-Friendly:** Hanya membutuhkan executor yang mendukung `HttpGet` dan `loadstring`.  
- **Konfigurasi Aman:** Tidak mengubah aset penting game dan menjaga interaksi normal karakter.

---

## 3. Rekomendasi Penggunaan

- Jalankan **AntiLag2025** terlebih dahulu untuk memaksimalkan FPS dan stabilitas visual.  
- Jalankan **ESP-Players** setelahnya untuk menyorot pemain lain tanpa menurunkan performa.  
- Aktifkan fitur FPS Boost & Lighting Ultra saat bermain di server besar atau map berat.  
- Gunakan tombol *Skip Loading* untuk langsung mengaktifkan GUI & kontrol saat splash screen muncul.  
- Hindari pengaktifan efek part yang mungkin konflik dengan mekanik game.  

---

## 4. Best Practices & Etika

- Gunakan script untuk **pengembangan, testing, atau personal use**.  
- Hindari penggunaan yang merugikan pemain lain atau melanggar Terms of Service.  
- Script diuji pada executor yang mendukung `HttpGet` & `loadstring`. Perilaku bisa berbeda pada executor terbatas.  
- Selalu pertimbangkan performa perangkat sebelum mengaktifkan semua fitur sekaligus.  

---

## 5. Kontak & Kontribusi

- **Pembuat / Maintainer:** ItzXery  
- Kontribusi (pull request / issue) dapat dilakukan melalui repo GitHub utama, dengan deskripsi jelas tentang perubahan dan alasan teknis.  

---

## 6. Lisensi (Opsional)

- Disarankan menggunakan **MIT License** atau **Unlicense** agar pengguna lain memahami hak penggunaan dan kontribusi.

---

**Catatan Akhir:**  
Dokumentasi ini siap untuk dimasukkan ke file `README.md` resmi repository. Sudah mencakup semua fitur, deskripsi, dan tips penggunaan untuk **ESP-Players** dan **AntiLag2025**, tanpa contoh load atau snippet tambahan.

---

## 7. Loadstring / Cara Jalankan Script

Gunakan snippet ini untuk langsung menjalankan kedua script di executor Roblox:

```lua
-- Load AntiLag2025
pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ItzXery/ItzXery.lua/main/AntiLag-ItzXery.lua"))()
end)

-- Load ESP-Players
pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ItzXery/ItzXery.lua/main/Esp-Players.lua"))()
end)
