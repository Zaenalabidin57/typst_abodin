#set text(font: "Arial", size: 12pt)

#align(center)[
Nama: Rifqi Fadil Fahrial  \
NIM: 1222646 \
UTS Sistem keamanan Komputer \
]

= Sistem Pengamanan Komputer dan Keamanan Siber

== 1. Definisi Sistem Pengamanan Komputer
Sistem pengamanan komputer adalah serangkaian teknik, prosedur, dan perangkat lunak yang dirancang untuk melindungi data, informasi, dan sumber daya komputer dari ancaman keamanan seperti akses tidak sah, kerusakan, pencurian, atau gangguan. Tujuan utamanya adalah menjaga Kerahasiaan, Integritas, dan Ketersediaan (Confidentiality, Integrity, Availability) dari sistem dan data.

== 2. Apa itu Kriptografi?
Kriptografi adalah ilmu dan seni untuk mengamankan informasi dengan cara mengubah data menjadi format yang tidak dapat dibaca oleh pihak yang tidak berwenang. Data tersebut hanya dapat dibaca kembali oleh pihak yang memiliki kunci untuk mendekripsinya.

Dua jenis kriptografi yang umum digunakan:
- *Simetris (Symmetric Cryptography):* Menggunakan satu kunci yang sama untuk enkripsi dan dekripsi. Contoh algoritma: AES (Advanced Encryption Standard), DES (Data Encryption Standard).
- *Asimetris (Asymmetric Cryptography):* Menggunakan dua kunci berbeda, yaitu kunci publik untuk enkripsi dan kunci privat untuk dekripsi. Contoh algoritma: RSA (Rivest-Shamir-Adleman), ECC (Elliptic Curve Cryptography).

== 3. Perbedaan Enkripsi dan Dekripsi
- *Enkripsi:* Proses mengubah data asli (*plaintext*) menjadi data terenkripsi (*ciphertext*) sehingga tidak dapat dibaca oleh pihak yang tidak berwenang.
- *Dekripsi:* Proses mengembalikan data terenkripsi (*ciphertext*) menjadi data asli (*plaintext*) menggunakan kunci yang sesuai.

Contoh:
- Enkripsi: "Rifqi" → "SchYb" (menggunakan algoritma dan kunci)
- Dekripsi: "SchYb" → "Rifqi" (menggunakan kunci yang sama atau berbeda)

== 4. Apa itu Serangan Phishing?
Serangan phishing adalah bentuk penipuan online di mana penyerang mencoba mendapatkan informasi sensitif (seperti kata sandi, nomor kartu kredit, atau data pribadi) dengan menyamar sebagai entitas tepercaya melalui email, situs web palsu, atau pesan lainnya. Tujuannya adalah untuk memanipulasi korban agar memberikan informasi rahasia secara sukarela.

Contoh: Email palsu dari bank yang meminta pengguna untuk memperbarui informasi akun mereka.

== 5. Apa itu Serangan Denial of Service (DoS)?
Serangan Denial of Service (DoS) adalah serangan yang bertujuan untuk membuat sistem atau layanan tidak tersedia bagi pengguna yang sah dengan cara membanjiri sistem tersebut dengan permintaan (*traffic*) yang sangat besar. Akibatnya, sistem tidak mampu menangani permintaan yang valid.

*Dampak:*
- Layanan menjadi lambat atau tidak responsif.
- Pengguna yang sah tidak dapat mengakses layanan.
- Kerugian finansial dan reputasi bagi organisasi.

Jenis lain: Distributed Denial of Service (DDoS), di mana serangan dilakukan dari banyak perangkat yang tersebar.

== 6. Apa itu Buffer Overflow?
Buffer overflow adalah kondisi di mana program mencoba menulis lebih banyak data ke dalam buffer (area penyimpanan sementara) daripada kapasitas yang dimiliki buffer tersebut. Hal ini dapat menyebabkan data berlebih ditulis ke area memori lain, yang dapat dieksploitasi oleh penyerang untuk menjalankan kode berbahaya atau merusak sistem.

Contoh: Penyerang memanfaatkan buffer overflow untuk mengeksekusi perintah arbitrer pada sistem target.

== 7. Mekanisme Keamanan Sistem Operasi
Mekanisme keamanan sistem operasi dirancang untuk mencegah akses yang tidak sah melalui berbagai cara, antara lain:
- *Otentikasi (Authentication):* Memverifikasi identitas pengguna melalui username, password, atau metode lain seperti biometrik.
- *Otorisasi (Authorization):* Menentukan hak akses pengguna terhadap sumber daya tertentu (misalnya, file, folder, atau aplikasi).
- *Audit dan Logging:* Mencatat aktivitas pengguna untuk memantau potensi pelanggaran keamanan.
- *Firewall:* Memblokir lalu lintas jaringan yang mencurigakan.
- *Sandboxing:* Membatasi lingkup eksekusi program untuk mencegah kerusakan sistem.

== 8. Apa itu Malware?
Malware (*malicious software*) adalah perangkat lunak yang dirancang untuk merusak, mencuri data, atau mengganggu operasi sistem komputer tanpa izin pengguna.

Tiga jenis malware yang umum:
- *Virus:* Program yang menyebar dengan menempelkan dirinya ke file atau program lain dan menginfeksi sistem saat file tersebut dijalankan.
- *Worm:* Malware yang menyebar secara mandiri melalui jaringan tanpa memerlukan interaksi pengguna.
- *Trojan:* Malware yang menyamar sebagai program sah tetapi sebenarnya dirancang untuk membahayakan sistem.

== 9. Cara Kerja Program Antivirus
Program antivirus bekerja dengan cara mendeteksi, mencegah, dan menghapus malware dari sistem komputer. Berikut mekanismenya:
- *Signature-based Detection:* Membandingkan file atau program dengan database tanda tangan (*signature*) malware yang dikenal.
- *Behavior-based Detection:* Menganalisis perilaku program untuk mendeteksi aktivitas mencurigakan, seperti modifikasi file sistem atau koneksi jaringan yang tidak biasa.
- *Real-time Protection:* Memantau aktivitas sistem secara real-time untuk mencegah infeksi malware.
- *Quarantine:* Mengisolasi file yang terinfeksi untuk mencegah penyebaran lebih lanjut.

== 10. Perbedaan Antara Virus dan Worm

- Dalam Penyebarannya: Virus menyebar dengan menempel pada file atau program lain. Worm menyebar secara mandiri melalui jaringan tanpa memerlukan host.
- Dalam Ketergantungan: Virus Membutuhkan interaksi pengguna (misalnya, menjalankan file yang terinfeksi). Worm Tidak memerlukan interaksi pengguna; dapat menyebar secara otomatis.
- Dampak Utama: Virus Merusak file atau sistem setelah diaktifkan. Worm Menghabiskan bandwidth jaringan dan dapat membawa payload berbahaya.

