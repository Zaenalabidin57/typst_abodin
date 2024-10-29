#set page(margin: (
  top: 3cm,
  bottom: 2cm,
  x: 1.5cm,
))

#set text(lang: "id")
#align(center)[
= PRAKTIKUM 5
== Mata Kuliah: Sistem basis data
== Dosen: Muhammad Rizki Pratama Suhernawan. S, S.Kom.
\
Nama: Rifqi Fadil Fahrial \
NIM: 1222646 \ 
]

= 1. Cantumkan name dan course :id dari relasi instructor dan teaches. Gunakan Natural Join

```sql
SELECT name, course_id
FROM instructor NATURAL JOIN teaches;
```

#figure(
  image("images/gambar1.jpg", width: 50%), caption: [Screenshot Hasil Query],
)


= 2. Cantumkan name, course_id dan title dari relasi instructor, teaches dan course. Gunakan NATURAL JOIN.

```sql
SELECT name, course_id, title
FROM instructor NATURAL JOIN teaches NATURAL JOIN course;
```

#figure(
  image("images/gambar2.jpg", width: 50%), caption: [Screenshot Hasil Query],
)

= 3. Cantumkan semua data dari relasi instructor dan teaches termasuk juga instruktur yang tidak mengajar. Gunakan variasi LEFT JOIN.

```sql
SELECT *
FROM instructor LEFT JOIN teaches 
ON instructor.ID = teaches.ID;
```

#figure(
  stack(
    dir: ltr,
    spacing: 2mm,
    image("images/gambar3.jpg", width: 50%),
    image("images/gambar4.jpg", width: 50%),
  ),
  caption: "Hasil query"
)


= 4. Cantumkan ID student, beserta nama student, dan ID instructor, beserta nama instructor untuk mengetahui mahasiswa beserta pembimbingnya.

```sql
SELECT s.ID AS student_id, 
       s.name AS student_name,
       i.ID AS instructor_id,
       i.name AS instructor_name
FROM student s
JOIN advisor a ON s.ID = a.s_id
JOIN instructor i ON a.i_id = i.ID;
```

#figure(
  image("images/gambar5.jpg", width: 50%), caption: [Screenshot Hasil Query],
)

= 5. Cantumkan semua data dari relasi student, dan takes. Gunakan NATURAL JOIN, dan INNER JOIN. Cari perbedaannya.

== Natural Join
=== perbedaannya Natural Join
- Otomatis mencocokan semua kolom dengan nama yang sama 
- tidak perlu menentukan kondisi JOIN secara eksplisit 
- Lebih ringkas tetapi lebih beresiko jika ada kolom dengan nama sama yang seharusnya tidak di join 

```sql
SELECT *
FROM student NATURAL JOIN takes;
```


#figure(
  image("images/gambar6.jpg", width: 50%), caption: [Screenshot Hasil Query],
)

== Inner Join

=== perbedaannya Inner Join
- Perlu menentukan kondisi JOIN secara eksplisit (ON clause)
- Lebih jelas dan terkontrol karena kita menentukan sendiri kolom mana yang akan dijadikan dasar penggabungan
- Lebih aman karena kita tahu persis bagaimana tabel digabungkan


```sql
SELECT *
FROM student s INNER JOIN takes t 
ON s.ID = t.ID;
```

#figure(
  image("images/gambar7.jpg", width: 50%), caption: [Screenshot Hasil Query],
)