# \# KulinerKu

# 

# \*\*Resep Nusantara, Mudah di Rumah\*\*

# 

# \## Deskripsi

# 

# KulinerKu adalah aplikasi mobile berbasis Flutter yang dirancang untuk membantu pengguna menemukan inspirasi masakan Nusantara. Aplikasi ini menyediakan katalog resep, pencarian berdasarkan nama masakan, filter kategori, serta detail resep yang mencakup bahan dan langkah-langkah memasak.

# 

# Aplikasi ini dikembangkan sebagai bagian dari tugas Ujian Tengah Semester (UTS) mata kuliah Mobile Programming.

# 

# \## Fitur Aplikasi

# 

# \- \*\*Beranda:\*\* Menampilkan pengenalan aplikasi, kategori masakan, dan resep pilihan.

# \- \*\*Katalog Resep:\*\* Menampilkan daftar resep yang tersedia.

# \- \*\*Pencarian Resep:\*\* Memungkinkan pengguna mencari resep berdasarkan nama masakan.

# \- \*\*Filter Kategori:\*\* Memungkinkan pengguna menyaring resep berdasarkan kategori.

# \- \*\*Detail Resep:\*\* Menampilkan foto, deskripsi, durasi memasak, jumlah porsi, bahan-bahan, dan langkah-langkah memasak.

# \- \*\*Navigasi:\*\* Memudahkan pengguna berpindah antarhalaman aplikasi.

# 

# \## Daftar Resep

# 

# Resep yang tersedia pada versi saat ini:

# 

# 1\. Nasi Goreng Kampung

# 2\. Soto Ayam

# 3\. Pisang Goreng

# 

# Data resep menggunakan data dummy lokal dan belum memerlukan backend maupun API eksternal.

# 

# \## Teknologi yang Digunakan

# 

# \- Flutter sebagai framework pengembangan aplikasi.

# \- Dart sebagai bahasa pemrograman.

# \- Material Design sebagai dasar komponen antarmuka.

# \- Git untuk pengelolaan versi.

# \- GitHub untuk penyimpanan source code.

# 

# \## Struktur Proyek

# 

# ```text

# kulinerku/

# ├── assets/

# │   └── images/

# ├── lib/

# │   ├── data/

# │   │   └── recipe\_data.dart

# │   ├── models/

# │   │   └── recipe.dart

# │   ├── pages/

# │   │   ├── home\_page.dart

# │   │   ├── recipe\_list\_page.dart

# │   │   └── recipe\_detail\_page.dart

# │   └── main.dart

# ├── test/

# ├── pubspec.yaml

# └── README.md

# ```

# 

# \## Persyaratan

# 

# Sebelum menjalankan aplikasi, pastikan perangkat telah memiliki:

# 

# \- Flutter SDK.

# \- Dart SDK yang sesuai dengan instalasi Flutter.

# \- Android Studio atau editor kode yang mendukung Flutter.

# \- Emulator Android atau perangkat Android untuk menjalankan aplikasi.

# 

# \## Cara Menjalankan Aplikasi

# 

# 1\. Clone repositori GitHub:

# 

# &#x20;  ```bash

# &#x20;  git clone https://github.com/JoJo-do/KulinerKu.git

# &#x20;  ```

# 

# 2\. Masuk ke direktori proyek:

# 

# &#x20;  ```bash

# &#x20;  cd KulinerKu

# &#x20;  ```

# 

# 3\. Unduh dependensi:

# 

# &#x20;  ```bash

# &#x20;  flutter pub get

# &#x20;  ```

# 

# 4\. Jalankan aplikasi:

# 

# &#x20;  ```bash

# &#x20;  flutter run

# &#x20;  ```

# 

# \## Membuat APK

# 

# Untuk membangun APK release, jalankan:

# 

# ```bash

# flutter build apk --release

# ```

# 

# Apabila proses build berhasil, file APK biasanya tersedia di:

# 

# ```text

# build/app/outputs/flutter-apk/app-release.apk

# ```

# 

# \## Hasil Pengujian

# 

# Pengujian yang telah dilakukan pada aplikasi:

# 

# | No. | Pengujian | Hasil |

# |---|---|---|

# | 1 | Pencarian resep menggunakan kata kunci `soto` | Lulus |

# | 2 | Filter kategori Camilan | Lulus |

# | 3 | Menampilkan foto, bahan, dan langkah memasak pada detail resep | Lulus |

# | 4 | Navigasi kembali ke katalog | Lulus |

# | 5 | Menampilkan pesan ketika resep tidak ditemukan | Lulus |

# | 6 | Pemeriksaan kode menggunakan `flutter analyze` | Lulus |

# | 7 | Build aplikasi Android | Berhasil |

# 

# \## Rencana Pengembangan

# 

# Pengembangan selanjutnya dapat mencakup penambahan koleksi resep, fitur favorit, integrasi API atau database, serta peningkatan aksesibilitas dan responsivitas antarmuka.

# 

# \## Pengembang

# 

# Proyek ini dikembangkan untuk memenuhi tugas UTS mata kuliah Mobile Programming.

# 

# \---

# 

# \*\*KulinerKu — Resep Nusantara, Mudah di Rumah.\*\*

