#set page(margin: (
  top: 3cm,
  bottom: 2cm,
  x: 1.5cm,
))

#set text(lang: "id")
#align(center)[
= PRAKTIKUM 6
== Mata Kuliah: Sistem basis data
== Dosen: Muhammad Rizki Pratama Suhernawan. S, S.Kom.
\
Nama: Rifqi Fadil Fahrial \
NIM: 1222646 \ 
]

= 1. Buat view dengan nama view_student untuk menampilkan id, nama, departemen mahasiswa tanpa jumlah sks
```sql
CREATE VIEW view_student AS
SELECT 
    id,
    name,
    dept_name
FROM student;
```
#figure(
  image("images/gambar1.jpg", width: 50%), caption: [Screenshot Hasil Query],
)
\
= 2. Buat view dengan nama student_mentor untuk menampilkan id siswa, nama siswa, dengan id instruktor, nama instruktor
```sql

CREATE VIEW student_mentor AS
SELECT 
    s.id AS student_id,
    s.name AS student_name,
    i.id AS instructor_id,
    i.name AS instructor_name
FROM student s
JOIN advisor a ON s.id = a.s_id
JOIN instructor i ON i.id = a.i_id;
```
#figure(
  image("images/gambar2.jpg", width: 50%), caption: [Screenshot Hasil Query],
)
= 3. Buat view dengan nama student_classes untuk menampilkan id mata kuliah, nama mata kuliah, semester, tahun, gedung, nomor ruangan, nilai, dari semua mata kuliah yang pernah diambil oleh mahasiswa dengan nama "Patrick"
```sql
CREATE VIEW student_classes AS
SELECT 
    c.course_id,
    c.title AS course_name,
    t.semester,
    t.year,
    s.building,
    s.room_number,
    t.grade
FROM student st
JOIN takes t ON st.id = t.id
JOIN course c ON t.course_id = c.course_id
JOIN section s ON t.course_id = s.course_id 
    AND t.sec_id = s.sec_id 
    AND t.semester = s.semester 
    AND t.year = s.year
WHERE st.name = 'Patrick';
```
#figure(
  image("images/gambar3.jpg", width: 50%), caption: [Screenshot Hasil Query],
)
= 4. Buat transaction untuk memasukkan departmen baru dengan nama "Info. Sec." di gedung "Lamberton", dan instructor baru dengan nama "Yoko", ID "99999", departmen "Info. Sec.", gaji "150000"
```sql
BEGIN;
INSERT INTO department (dept_name, building, budget)
VALUES ('Info. Sec.', 'Lamberton', 100000);
INSERT INTO instructor (id, name, dept_name, salary)
VALUES ('99999', 'Yoko', 'Info. Sec.', 150000);
COMMIT;
```
#figure(
  image("images/gambar4.jpg", width: 50%), caption: [Screenshot Hasil Query],
)

