
#set text(lang: "id")
#align(center)[
= LAPORAN PRAKTIKUM 1 
== Instalasi PostgreSQL
=== Mata Kuliah: Sistem basis data
=== Dosen: Muhammad Rizki Pratama Suhernawan. S, S.Kom.
\
Nama: Rifqi Fadil Fahrial \
NIM: 1222646 \ 
]


Untuk instalasi postgreSQL ini akan dilakukan pada sistem operasi Arch linux, untuk menginstallnya menggunakan syntax "Sudo pacman -S postgresql" untuk menginstall postgreSQL pada perangkat.
#figure(
  image("images/gambar1.png", width: 80%), caption: [Proses Instalasi PostgreSQL],
)

setelah itu menginisialisasi database dari postgreSQL dengan syntax "Sudo -u postgres psql" untuk menjadi user postgres kemudian menginisialisasi database dengan syntax "initdb -D /var/lib/postgres/data" agar nantinya cache database tersimpan disana
#figure(
  image("images/gambar2.png", width: 80%), caption: [Proses Inisialisasi Database],
)
setelah menginisialisasi database maka perlu dijalankan postgreSQL nya sebagai _Daemon Service_ dengan syntax "Sudo systemctl start postgresql" dan untuk mengetahui status dari service nya maka gunakan syntax "Sudo systemctl status postgresql".
#figure(
  image("images/gambar3.png", width: 80%), caption: [Proses Memulai PostgreSQL],
)

kemudian membuka user interface dari postgreSQL contohnya yang akan digunakan adalah phppgadmin pada web browser.
#figure(
  image("images/gambar4.png", width: 80%), caption: [Interface phpPgAdmin],
)
kemudian klik create database dan masukan nama database yang diinginkan, untuk contohnya "UniversityDB" untuk database universitas. setleah itu klik "UniversityDB" kemudian klik "SQL" untuk membuka interface SQL pada database.
#figure(
  image("images/gambar5.png", width: 80%), caption: [Interface SQL],
)
kemudian klik tombol "Upload" pada bagian "or Upload an SQL scripts" untuk menjalankan scripts "UniversityDB.sql" yang telah disediakan
#figure(
  image("images/gambar6.png", width: 80%), caption: [Upload SQL Script],
)
tunggu beberapa saat untuk perangkat mengeksekusi scriptnya dan kemudian akan menampilkan hasilnya apakah error atau tidak.
#figure(
  image("images/gambar7.png", width: 80%), caption: [Output SQL],
)
kemudian lakukan hal yang sama pada "UniversityDBData.sql".

#figure(
  image("images/gambar8.png", width: 80%), caption: [Output SQL]
),

setelah itu maka data telah berhasil di import ke dalam postgreSQL.
#figure(
  image("images/gambar9.png", width: 80%), caption: [database postgres]
)
\
\
\
== Menjalankan Query
\
\
```sql
1. SELECT * FROM instructor;
```
#figure(
  image("images/gambar10.png", width: 80%), caption: [Menjalankan Query No. 1]
)
\
\
```sql
2. select name from instructor where dept_name = 'Comp. Sci.' and salary > 70000;
```
#figure(
  image("images/gambar11.png", width: 80%), caption: [Menjalankan Query No. 2]
)
\
\
```sql
3. select * from instructor, department where instructor.dept_name = department.dept_name;
```
#figure(
  image("images/gambar12.png", width: 80%), caption: [Menjalankan Query No. 3]
)