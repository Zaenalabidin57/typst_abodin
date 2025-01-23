#set text(lang: "id")
#align(center)[
= LAPORAN PRAKTIKUM 3
== Mata Kuliah: Sistem basis data
== Dosen: Muhammad Rizki Pratama Suhernawan. S, S.Kom.
\
Nama: Rifqi Fadil Fahrial \
NIM: 1222646 \ 
]
#set raw(lang: "sql", block: true) 
#set heading(numbering: "1.1)")
= Import sql alter_column_order_date lalu jalankan

#figure(
  image("images/gambar1_impor_sql_alter.png", width: 80%), caption: [pembuatan tabel orders dan import alter_column_order_date],
)

= import sql orders.sql 
#figure(
  image("images/gambar2.png", width: 80%), caption: [import orders.sql],
)

= jalankan perintah berikut
== Temukan semua pesanan pelanggan yang memiliki ID pelanggan "1" dan "5", gunakan operasi set menggunakan UNION
\

```sql
select * from orders
where customer_id =1
union
select *
from orders
where customer_id =5;

```
#figure(
  image("images/gambar3.png", width: 80%), caption: [Hasil query],
)

== Temukan nilai rata-rata, nilai terkecil, nilai terbesar, dan jumlah amount dari pesanan pelanggan

```sql
SELECT 
  avg(amount) as rata_rata,
  min(amount) as nilai_terkecil,              
  max(amount) as nilai_terbesar,
  sum(amount) as jumlah
from orders;
```
#figure(
  image("images/gambar4.png", width: 80%), caption: [Hasil query],
)

== Temukan customer_id dan nilai rata-rata amount dari masing-masing pelanggan

```sql
AVG(amount) as rata_rata
from
orders
group by
customer_id;
```
#figure(
  image("images/gambar5.png", width: 80%), caption: [Hasil query],
)

== Dari query 3.3, temukan customer_id dan nilai rata-rata amount yang lebih besar dari 50000
```sql
select customer_id, rata_rata from (
select customer_id, avg(amount) as rata_rata
from orders
group by customer_id
) as customer_rata_rata
where rata_rata > 50000;
```
#figure(
  image("images/gambar6.png", width: 80%), caption: [Hasil query],
)
#figure(
  image("images/gambar7.png", width: 80%), caption: [Hasil query],
)

== Dari query 3.4, gunakan ekspresi subquery di dalam klausa "from"
```sql
select customer_id, amount
from orders
where orders.amount >(select avg(amount)
from (select * from orders where customer_id > 10) as s);
```
#figure(
  image("images/gambar8.png", width: 80%), caption: [Hasil query],
)
#figure(
  image("images/gambar9.png", width: 80%), caption: [Hasil query],
)

== Temukan customer_id dan jumlah order masing-masing pelanggan menggunakan subquery skalar

```sql
select customer_id, 
(select sum(amount) from orders o2 where o2.customer_id = 01.customer_id) as total_amount
from orders o1
group by customer_id
order by total_amount desc;
```

#figure(
  image("images/gambar14.png", width: 80%), caption: [Hasil query],
)
#figure(
  image("images/gambar15.png", width: 80%), caption: [Hasil query],
)

== Hapus semua transaksi yang nominalnya dibawah 500 

```sql
delete from orders
where amount < 500;
```
#figure(
  image("images/gambar12.png", width: 80%), caption: [Hasil query],
)

== Masukkan beberapa tuple ke dalam order dengan amount berisi 500, order_date berisi waktu saat ini dan customer_id dimana pelanggan tersebut pernah melakukan transaksi dibawah 900, selesaikan menggunakan subquery insert

```sql
insert into orders (customer_id , amount, order_date)
select
69 as customer_id, 
500 as amount,
now() as order_date
from orders
where amount < 900
group by customer_id;
```

#figure(
  image("images/gambar13.png", width: 80%), caption: [Hasil query],
)

= Komentar mengenai PRAKTIKUM 

*MANTAP PYUSINGGGG*

tapi lumayan banget buat pengalaman buat memakai SQL langsung yang mana pada sistem aplikasi saat ini sudah di abstraksi dalam framework yang digunakan, dan juga susah banget kalau pake CLI langsung, GUI di linux jelek jelek 

#figure(
  image("images/kerangka.png")
)


