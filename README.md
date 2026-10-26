# KulinerKu

**Resep Nusantara, Mudah di Rumah**

KulinerKu adalah aplikasi mobile berbasis Flutter untuk membantu pengguna menemukan inspirasi masakan Nusantara. Aplikasi menyediakan katalog resep, pencarian, filter kategori, serta detail resep yang berisi bahan dan langkah memasak.

Proyek ini dikembangkan untuk memenuhi tugas UTS mata kuliah Mobile Programming.

## Fitur Utama

- **Beranda:** Menampilkan kategori dan resep pilihan.
- **Katalog Resep:** Menampilkan koleksi resep masakan.
- **Pencarian:** Mencari resep berdasarkan nama masakan.
- **Filter Kategori:** Menyaring resep berdasarkan kategori.
- **Detail Resep:** Menampilkan foto, deskripsi, waktu memasak, jumlah porsi, bahan, dan langkah memasak.
- **Navigasi:** Memudahkan perpindahan antarhalaman.

## Daftar Resep

| Nama Resep | Kategori |
|---|---|
| Nasi Goreng Kampung | Makanan Utama |
| Soto Ayam | Sup |
| Pisang Goreng | Camilan |

Data resep pada versi ini disimpan secara lokal sebagai data dummy. Aplikasi belum memerlukan backend atau API eksternal.

## Teknologi

- Flutter
- Dart
- Material Design
- Git dan GitHub

## Struktur Proyek

```text
lib/
├── data/
│   └── recipe_data.dart
├── models/
│   └── recipe.dart
├── pages/
│   ├── home_page.dart
│   ├── recipe_list_page.dart
│   └── recipe_detail_page.dart
└── main.dart

assets/
└── images/
```

## Cara Menjalankan

Pastikan Flutter SDK dan perangkat Android atau emulator sudah tersedia.

1. Clone repositori:

   ```bash
   git clone https://github.com/JoJo-do/KulinerKu.git
   ```

2. Masuk ke folder proyek:

   ```bash
   cd KulinerKu
   ```

3. Unduh dependensi:

   ```bash
   flutter pub get
   ```

4. Jalankan aplikasi:

   ```bash
   flutter run
   ```

## Pengujian

| Pengujian | Hasil |
|---|---|
| Pencarian resep | Lulus |
| Filter kategori | Lulus |
| Detail resep | Lulus |
| Navigasi kembali | Lulus |
| Kondisi tanpa hasil | Lulus |
| `flutter analyze` | Lulus |
| Build APK | Berhasil |

## Rencana Pengembangan

Pengembangan selanjutnya dapat mencakup penambahan resep, fitur favorit, integrasi API atau database, serta peningkatan aksesibilitas dan responsivitas antarmuka.

## Pengembang

Dikembangkan sebagai proyek UTS mata kuliah Mobile Programming.

---

*KulinerKu — Resep Nusantara, Mudah di Rumah.*
