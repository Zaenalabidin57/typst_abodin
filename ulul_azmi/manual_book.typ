#set page(margin: (
  top: 3cm,
  bottom: 2cm,
  x: 1.5cm,
))

#set text(lang: "id",
  font:"Codelia Ligatures",
  size: 12pt,
)
#align(center)[
== Manual Book Aplikasi Ulul Azmi
=== Mata Kuliah: Pemrograman 5
=== Dosen: Muhammad Rizki Pratama Suhernawan. S, S.Kom.
\
Nama: Rifqi Fadil Fahrial \
NIM: 1222646 \ 

Nama: Eli Nurjanah \
NIM: 1224700
]

= 1. Tampilan utama

#figure(
  image("images/halaman_utama.png", width: 40%)
)
\
Pada halaman awal dibagi menjadi 2 Bagian yakni navigasi utama dan navigasi bawah,

== 1.1 Navigasi utama
bagian ini menampilkan beberapa tombol yang mengarahkan ke halaman yang ada, yang mana:
+ Halaman para nabi
+ halaman Quiz
+ halaman Tentang kami

yang mana pada saat ditekan akan terbuka halaman yang dimaksud

== 1.2 Navigasi bawah
bagian ini menampilkan beberapa tombol yang mengarahkan ke halaman yang ada, yang mana:
+ Tombol Home yang mengarahkan kembali ke halaman awal
+ Tombol Quiz yang mengarahkan ke halaman Quiz
+ Tombol About yang mengarahkan ke halaman tentang kami

#pagebreak()
= 2. Tampilan halaman para nabi

#figure(
  image("images/halaman_nabi.png", width: 40%)
)

Pada Halaman ini menampilkan informasi mengenai para nabi yang termasuk dalam Ulul Azmi, seperti nabi Nuh AS, nabi Musa AS, nabi Ibrahim AS, nabi Isa AS dan nabi Muhammad SAW. 

untuk kembali ke halaman utama dapat menekan tombol kembali yang ada di bagian kiri atas layar agar kembali ke halaman utama ataupun dapat menggunakan navigasi bawah untuk ke halaman yang lain.

#pagebreak()
= 3. Tampilan halaman Quiz

#figure(
  image("images/halaman_quiz.png", width: 40%)
)
pada halaman ini menampilkan quiz tentang Ulul Azmi,
#pagebreak()
== 3.1 Fitur Quiz

#figure(
  image("images/fitur_quiz.png", width: 40%)
)

dimulai dari atas:
+ Informasi dari jumlah quiz dan nominal jawaban yang benar, jika jawaban salah maka nilai tidak akan bertambah.
+ Informasi soal dari quiz, menampilkan soal quiz.
+ Pilihan ganda.
+ tombol submit

jika jawaban benar maka akan keluar notifikasi

#figure(
  image("images/benar.png", width: 40%)
)

namun apabila salah maka akan tampil notifikasi yang berisi jawaban yang benar

#figure(
  image("images/salah.png", width: 60%)
)

Setelah menyelesaikan semua quiz maka akan tampil informasi hasil dari quiz tersebut dan jumlah jawaban yang benar.

#figure(
  image("images/quiz_selesai.png", width: 40%)
)

setelah 3 detik maka quiz akan reset kembali.

#pagebreak()

= 4. Tampilan halaman tentang kami

pada halaman ini menampilkan informasi tentang kami, seperti nama, NIM, 

#figure(
  image("images/halaman_about.png", width: 40%)
)
