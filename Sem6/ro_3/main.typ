#set text(lang: "id")
#align(center)[
= TUGAS 1 
== 
=== Mata Kuliah: Struktur Data
=== Dosen: Uro Abdulrohim. M.T
\
Nama: Rifqi Fadil Fahrial \
NIM: 1222646 \ 
]

= latihan Mandiri: Sistem Antrian di Bengkel

Diketahui: 
- Jumlah slot servis $c$ = 4
- Laju kedatanganan $lambda$ = 5 Kendaraan per jam
- waktu servis rata-rata = 15 menit per kendaraan 
- Model Antrian = $M/M/c$ (Multiple server)

== Penyelesaian

=== Konversi waktu servis ke laju pelayanan:

$rho = frac(lambda, c mu) = frac(5,4 * 4) = frac(5,16) = 0.3125$

=== Probabilitas tidak ada kendaraan dalam sistem $(P_0)$:
#align(center)[
  $P_0 = lr[ sum_{n=0}^{c-1} frac(lambda mu^n, n!) + frac(lambda mu^c, c!) frac(1, 1 - rho) lr]^{-1}$
  //P_0 = \left[ \sum_{n=0}^{c-1} \frac{(\lambda / \mu)^n}{n!} + \frac{(\lambda / \mu)^c}{c!} \cdot \frac{1}{1 - \rho} \right]^{-1}
]
