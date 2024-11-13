#set page(margin: (
  top: 3cm,
  bottom: 2cm,
  x: 1.5cm,
))

#set text(lang: "id")
#align(center)[
= UTS Sistem Basis Data
== Mata Kuliah: Sistem basis data
== Dosen: Muhammad Rizki Pratama Suhernawan. S, S.Kom.
\
Nama: Rifqi Fadil Fahrial \
NIM: 1222646 \ 
]

== 1. Buatlah sebuah database menggunakan skema di atas. Perhatikan primary key (Increment Integer), foreign key, dan domain data yang diperlukan untuk menyusun database! Setelah membuat database, import data dengan nama inventory_data.sql ke dalam database. (30 poin)
\
#figure(
  image("images/gambar1.png", width: 80%), caption:("inisialisasi database")
)

#figure(
  image("images/gambar2.png", width: 80%), caption:("inisialisasi tabel products")
)
#figure(
  image("images/gambar3.png", width: 80%), caption:("inisialisasi tabel transactions")
)
#figure(
  image("images/gambar4.png", width: 80%), caption:("inisialisasi tabel procurements")
)
#figure(
  image("images/gambar5.png", width: 80%), caption:("inisialisasi tabel disbursement")
)
#figure(
  image("images/gambar6.png", width: 80%), caption:("import Inventory_data.sql")
)

== 2. Cari nama kostumer dengan nama yang berawalan huruf ‘A’! (10 poin)
\
```sql
SELECT customer_name 
from transactions
where customer_name like 'A%';
```
#figure(
  image("images/gambar7.png", width: 80%), caption:("Cari nama kostumer dengan nama yang berawalan huruf ‘A’")
)

== 3. Cari data pengadaan barang (procurements) pada bulan Oktober 2024, gabungkan berdasarkan product_id! (10 poin)
\
```sql
select
p.product_id,
sum(pr.stock) as total_stock
from procurements pr
join products p on pr.product_id = p.product_id
where pr.created_at between '2024-10-01' and '2024-10-31'
group by p.product_id
order by p.product_id;
```
#figure(
  image("images/gambar8.png", width: 80%), caption:("outputnyah")
)

== 4. Ubah stok produk, jika stok >= 50 maka tambahkan stok sebanyak 25% dari stok sebelumnya, jika stok < 50 maka tambahkan stok sebanyak 100% dari stok!(10 poin)
\
```sql
update products
set stock =
case
when stock >= 50 then round(stock * 1.25)
else stock * 2
end;
```
#figure(
  image("images/gambar9.png", width: 80%), caption:("outputnyah")
)

=== 5. Cari data barang inventori saat ini dengan cara mencari stok masing-masing produk pada tabel produk, dikurangi dengan pengeluaran barang masing-masing produk! (20 poin)
\
```sql
select
p.product_name,
p.stock as stock_barang,
sum(d.stock) as barang_keluar,
p.stock - sum(d.stock) as sisa_barang
from products p
left join disbursements d on p.product_id = d.product_id
group by p.product_id, p.product_name, p.stock
order by p.product_id;
```

#figure(
  image("images/gambar10.png", width: 80%), caption:("Hasilnya")
)
== 6. Buat view untuk merekap data stok barang dengan nama rekap_barang_masuk_keluar yang berisi nama barang, stok saat ini, stok barang masuk, stok barang keluar, sisa barang (stok saat ini + stok barang masuk – stok barang keluar), dan bulan. Query di grup per bulan. (20 poin)
\
```sql
create view rekap_barang_masuk_keluar as
select
p.product_name,
p.stock as stok_barang,
sum(pr.stock) as barang_masuk,
sum(d.stock) as barang_keluar,
p.stock + sum(pr.stock) - sum(d.stock) as sisa_barang,
extract(month from pr.created_at) as bulan
from products p
left join procurements pr on p.product_id = pr.product_id
left join disbursements d on p.product_id = d.product_id
group by p.product_id,
p.product_name,
p.stock,
extract(month from pr.created_at)
order by
extract(month from pr.created_at),
p.product_id;
```

#figure(
  image("images/gambar11.png", width: 50%), caption:("Hasilnya")
)
#figure(
  image("images/gambar12.png", width: 50%), caption:("Hasilnya")
)