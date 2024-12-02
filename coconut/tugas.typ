== Nama: Hasby Nauril Atoriq  
== Mata Pelajaran: TIK
== Kelas: X-1

\
== 1. Jelaskan Pengertian Jaringan Komputer

jaringan komputer adalah sebuah sistem yang menghubungkan dua atau lebih
perangkat komputer, seperti komputer desktop, laptop, smartphone atau server
sehingga mereka dapat saling berkomunikasi dan berbagi data. jaringan komputer
itu seperti jalan raya yang dapat menghubungkan beberapa tempat dan kita dapat
mengaksesnya dengan mudah cukup dengan menggungan jalan tersebut, yang mana
dalam perangkat teknologi itu jaringan komputer.

== 2. Jelaskan Macam-macan jaringan komputer bersama dengan letak geografisnya
- Personal Area Network (PAN)
adalah koneksi jaringan yang berada di area yang dekat seperti jarak handphone
dengan headset bluetooth, komputer dengan mouse wireless dan kartu NFC.
- Local Area Network (LAN)
setelah itu ada koneksi jaringan local yang sebesar kantor / rumah atau satu
bangunan saja, seperti jaringan wifi, jaringan Ethernet lokal dengan printer,
jaringan home server.
- Campus Area Network (CAN)
jangakuan CAN ini lebih luas dan mencakup lebih dari satu bangunan namun masih
berada di jarak yang berdekatan, contohnya di area sekolah, kampus dan
perkantoran, contohnya seperti jaringan Acces point yang dapat mengakses server
untuk yang terkoneksi dengan wifi yang sama.
- Metropolitan Area Network (MAN)
setelah itu ada MAN yang mencakup satu kota seperti instansi pemerintah daerah
yang dapat berkomunikasi antara cabang dengan mudah.
- Wide Area Network (WAN)
adalah jangkauan terjauh dari jaringan komputer yang mencakup provinsi bahkan
negara agar bisa terhubung dengan satu sama lain maka diperlukan sebuah jasa
atau provider yang dapat membantu dalam mengakses jaringan ini..

#pagebreak()
== 3. Gambarkan macam-macan topologi jaringan beserta kelemahan dan kelebihannya
=== 1. Topologi bus
#figure(
  image("images/topologi_mesh.png", width: 50%), 
  caption: "gambar topologi mesh"
)
topologi mesh merupakan metode untuk menghubungkan perangkat secara langsung
tanpa ada perantara, kelebihannya adalah kesalahan pengiriman data bisa
ditemukan dengan mudah dan data bisa lebih cepat dan aman karena melalui rute
khusus, kelemahannya ada perlu membutuhkan biaya yang besar untuk penyediaan
kabel jaringan.


=== 2. topologi star
#figure(
  image("images/topologi_star.png", width: 50%), 
  caption: "gambar topologi star"
)

dinamakan topologi star karena bentuk jaringan rute dan perangkatnya berbentuk
bintang, metode ini memiliki keunikan karena metode untuk menghubungkan antara
perangkat itu perlu menggunakan satu perantara, yang mana perantara ini
dinamakan hub yang bertugas untuk mengatur lalu lintas jaringan yang terhubung,
kelebihannya adalah mudah untuk digunakan karena hanya perlu menyetel hub saja,
kelemahannya yakni perlu menggunakan perangkat khusus untuk membuat jaringan.

=== 3. topologi bus

#figure(
  image("images/topologi_bus.png", width: 50%), 
  caption: "gambar topologi bus"
)

topologi bus adalah metode menghubungkan komputer menggunakan satu kabel
jaringan, keuntungannya adalah hanya perlu satu kabel sehingga biayanya murah
namun kelemahannya adalah dapat terjadi tabrakan lalu lintas karena hanya ada
satu jalur saja yang ada.

=== 4. topologi ring

#figure(
  image("images/topologi_ring.png", width: 50%), 
  caption: "gambar topologi ring"
)

topologi ring ini memiliki metode yang memungkinkan seluruh perangkat terhubung
namun hanya perlu dua koneksi saja, untuk menghubungkan ke perangkat yang tidak
terhubung bisa melalui perangkat yang terhubung yang menjadi repeater dan
mengirim data ke tujuan, kelebihannya lebih fleksibel untuk memperluas jaringan
dan biaya pemasangannya yang murah, kelemahannya adalah kesulitan untuk
mengidentifikasi ketika terjadi error.

=== 5. topologi tree
#figure(
  image("images/topologi_tree.png", width: 50%), 
  caption: "gambar topologi tree"
)
topologi tree adalah metode jaringan yang menggunakan sistem hirerarki yang
memiliki 2 sistem transisi data, yakni perangkat utama dan perangkat sekunder,
yang mana perangkat sekunder terhubung ke perangkat utama yang menghubungkan
semua jaringan. keuntungannya adalah mudah untuk memperluas jaringan karena
hanya perlu menambahkan hub sekunder untuk membuat jaringan, kelemahannya
adalah lebih kompleks.

=== 6. topologi hybrid

#figure(
  image("images/topologi_hybrid.png", width: 50%), 
  caption: "gambar topologi hybrid"
)
metode ini menggabungkan beberapa jenis topologi untuk mengikuti kebutuhan agar
jaringan terhubung dengan baik.

#pagebreak()
== 4. tuliskan perangkat keras jaringan komputer beserta gambarnya

=== 1. Kabel jaringan

*Fungsi*: menghubungkan perangkat jaringan secara fisik
*Jenisnya*: kabel fiber optik, Etherner (UTP,STP), kabel Coaxial
#figure(
  image("images/kabel_ethernet.jpg", width: 50%), 
  caption: "gambar Kabel ethernet"
)


=== 2. network interface card (NIC)

*Fungsi*: antar muka yang menghubungkan jaringan dengan perangkat komputer
#figure(
  image("images/nic.jpg", width: 50%), 
  caption: "gambar network interface card"
)

=== 3. hub

*Fungsi*: menggabungkan beberapa perangkan ke dalam satu jaringan
*kelemahan*: semua data yang diterima akan diteruskan ke semua port, sehingga
dapat menyebabakan penurunan kinerja jika banyak perangkat terhubung
#figure(
  image("images/hub.jpg", width: 50%), 
  caption: "gambar hub"
)
=== 3. switch

*Fungsi*: menggabungkan beberapa perangkat ke dalam satu jaringan namun lebih
baik daripada hub, switch hanya meneruskan data ke perangkat tujuan sehingga
meningkatkan kinerja.
#figure(
  image("images/switch.jpg", width: 50%), 
  caption: "gambar switch"
)
=== 4. Router

*Fungsi*: mengarahkan data antar jaringan yang berbeda.
#figure(
  image("images/router.jpg", width: 50%), 
  caption: "gambar router"
)
=== 5. modem

*Fungsi*: mengubah sinyal digital dari komputer menjadi sinyal analog yang
dapat dikirim melalui saluran telepon atau kabel untuk mengakses internet
#figure(
  image("images/modem.jpg", width: 50%), 
  caption: "gambar modem"
)
=== 6. access point (AP)

*Fungsi*: memungkinkan perangkat wireless (hp, laptop) untuk terhubung dengan
jaringan
#figure(
  image("images/ap.jpg", width: 50%), 
  caption: "gambar access point"
)

=== 7. repeater

*Fungsi*: memperkuat sinyal jaringan pada jarak jauh
#figure(
  image("images/repeater.jpg", width: 50%), 
  caption: "gambar repeater"
)

=== 8. bridge

*Fungsi*: menghubungkan dua segmen jaringan yang berbeda
#figure(
  image("images/bridge.jpg", width: 50%), 
  caption: "gambar bridge"
)
