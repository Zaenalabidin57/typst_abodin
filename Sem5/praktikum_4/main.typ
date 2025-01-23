#set text(lang: "id")
#align(center)[
= PRAKTIKUM 4
== Mata Kuliah: Sistem basis data
== Dosen: Muhammad Rizki Pratama Suhernawan. S, S.Kom.
\
Nama: Rifqi Fadil Fahrial \
NIM: 1222646 \ 
]

= 1. Temukan jumlah transaksi costumer, lalu urutkan dari yang paling banyak ke yang paling sedikit
\
\
```sql
select customer_id, sum(amount) as total
from orders
group by customer_id
order by total desc;
```
#figure(
  image("images/gambar1.jpg", width: 80%), caption: [Screenshot Hasil Query],
)


= 2. Temukan jumlah total transaksi per bulan

```sql
select extract(month from order_date) as bulan, sum(amount) as total
from orders
group by bulan
order by bulan asc;
```
#figure(
  image("images/gambar2.jpg", width: 80%), caption: [Screenshot Hasil Query],
)
= 3.Temukan jumlah total transaksi kostumer di bulan Oktober, urutkan dari yang paling besar ke yang paling kecil
\
\
```sql
select customer_id, sum(amount) as total
from orders
where extract(month from order_date) = 10
group by customer_id
order by total desc;
```

#figure(
  image("images/gambar3.jpg", width: 80%), caption: [Screenshot Hasil Query],
)
= 4. Temukan jumlah transaksi kostumer yang diatas rata-rata, lalu urutkan dari paling rendah sampai paling tinggi
\
\
```sql
select customer_id, amount
from orders
where amount > (select avg(amount) from orders)
group by customer_id, amount
order by amount asc;
```

#figure(
  image("images/gambar4.jpg", width: 80%), caption: [Screenshot Hasil Query],
)