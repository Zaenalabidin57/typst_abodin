#import "@preview/unify:0.6.0": qty
#set page(margin: (
  top: 3cm,
  bottom: 2cm,
  x: 1.5cm,
))

#set text(lang: "id",
  font:"Times New Roman",
  size: 12pt,
)
#align(center)[
TUGAS FISIKA \
 Mata Kuliah: Fisika 1\
 Dosen: Koeshandoyo Ariono\
\
Nama: Rifqi Fadil Fahrial \
NIM: 1222646 \ 
]


//#set par(justify: true, leading: 1.5em)
== Soal 9.5
#set enum(numbering: "a")
  + Jelaskan perbedaan antar percepatan singgung dan percepatan radial
  + sebuah roda-gila berputar dengan kecepatan sudut konstan. Apakah sebuah ttik di tepi roda itu mempunyai percepatan singgung
  + sebuah roda-gila berputar dengan percepatan sudut konstan. Apakah sebuah titik di tepi roda itu mempunayi percepatan singgung? percepatan radial? apakah besar percepatan-percepatan ini konstan?


=== a. Perbedaan antara percepatan singgung dan radial
- *percepatan singgung* ($a_t$) didefisinikan sebagai percepatan yang terjadi pada arah tangensial terhadap jalur lintasan suatu objek yang bergerak melingkar. percepatan singgung muncul ketika ada perubahan pada kecepatan linier objek. rumus $a_t = R dot alpha$ dimana $R$ adalah jari-jari lingkaran dan $alpha$ adalah percepatan sudut.\\
- *percepatan radian* ($a_r$) didefinisikan sebagai percepatan yang mengarah menuju pusat lingkaran ketika objek bergerak dalam lintasan melingkar. percepatan radial terjadi meskipun kecepatan sudut tetap konstan, karena arah kecepatan linier objek berubah. rumus $a_r = frac(v^2, R)$ atau $a_r = R dot omega^2$ , dimana $v$ adalah kecepatan linier dan $omega$ adalah kecepatan sudut.
=== b. Sebuah roda-gila berputar dengan kecepatan sudut konstan. Apakah sebuah ttik di tepi roda itu mempunyai percepatan singgung?
- *percepatan singgung* tidak ada, karena kecepatan sudut konstan ($alpha = 0$). hal ini berarti tidak ada perubahan kecepatan linier pada titik di tepi roda.
- *percepatan radial* ada, karena arah kecepatan linier di tepi roda terus berubah meskipun besar kecepatan tetap konstan.

=== c. Sebuah roda-gila berputar dengan percepatan sudut konstan. Apakah sebuah titik di tepi roda itu mempunayi percepatan singgung? percepatan radial? apakah besar percepatan-percepatan ini konstan?

- *percepatan singgung* ada, karena ada perubahan dalam kecepatan linier seiring waktu. dengan percepatan sudut konstasn, percepatan tangensial juga akan konstan.
- *percepatan radial* juga ada karena titik di tepi roda masih bergerak dalam lintasan melingkar sehingga percepatan radial selalu ada. 
- *konsistensi magnitude* percepatan singgung ($a_t$) akan konstan jika percepatan sudu ($alpha$) konstan. percepatan radial ($a_r$) mungkin tidak konstan karena bergantung pada kecepatan linier $v$ yang berubah seiring waktu. namun, karena kecepatan linier $v$ berkaitan dengan $alpha$ yang konstan, percepatan radial bisa menjadi konstan pada rentang waktu tertentu. 
jadi percepatan singgung ada dan konstan sedangkan percepatan radian ada juga tetapi bisa bervariasi tergantung pada perubahan kecepatan linier.\


== Soal 9.6
Sebuah roda berdiameter 30 inchi berputar terhadap sebuah sumbu tetap dengan kecepatan sudut awal 2 putaran per detik, percepatan 3 putaran per $s^2$.
+ hitunglah kecepatan sudut setelah 6 sekon
+ berapa besar sudut yang dilalui roda itu dalam selang waktu ini?
+ berapa kecepatan singgung sebuah titik di tepi roda itu pada waktu t = 6 sekon?
+ berapa percepatan resultan sebuah titik di tepi roda itu pada t = 6 sekon
diketahui:\
Diameter roda : $D = 30 "inchi" = 30 times 0.0254 "meter" = 0.762 "meter"$ \
Jari-jari roda : $R = frac("D",  a)= frac(0.762, 2 = 0.381 "meter")$ \
Kecepatan sudut awal : $omega_0 = frac(2 "Putaran", s^2 ) =3 times 2pi frac("rad", s^2)= 4pi frac("rad", s^2)$ \
percepatan sudut : $alpha = 3 frac("2 putaran", s^2)= 3 times 2pi frac("rad", s^2)= 6pi frac("rad", s^2)$ \
waktu : $ t = 6 " s (detik)"$ \
=== a. hitunglah kecepatan sudut setelah 6 sekon
Rumus untuk kecepatan sudut adalah:\
#align(center)[
$ omega = omega_0 + alpha * t$
]

kemudian subtitusi kan nilainya:\
#align(center)[
  $omega = 4pi + (6pi)(6) = 4pi + 36pi = 40 pi "rad/s"$
]
jadi kecepatan sudut setelah 6 detik adalah : * 40 $pi$ rad/s*

=== b. hitung sudut yang dilalui roda dalam selang waktu ini
Rumus untuk sudut adalah:\
#align(center)[
$theta = omega_0 t + frac(1,2)  alpha  t^2$
]
kemudian subtitusi kan nilainya:\
#align(center)[
$theta = 4pi (6) + frac(1,2) (6pi)(6^2)  $ \
$= 24pi + frac(1,2)(6pi)(36) $ \
$= 24pi + 108pi = 132pi "rad"$ \
]

jadi sudut yang dilalui roda itu adalah: * 132 $pi$ rad*

=== c. hitung kecepatan singgung sebuah titik di tepi roda pada waktu $t = 6 "detik"$
Rumus kecepatan linier($v$) adalah: 
#align(center)[
  $v = R omega$
]

substitusi nilai:
#align(center)[
  $v = 0.381 times (40pi) = 15.24pi "m/s"$
]
jadi kecepatan singgung pada waktu $t = 6 "detik"$ adalah : * 15.24 $pi$ m/s*

=== d. hitung percepatan resultan sebuah titik di tepi roda pata waktu $t = 6 "detik"$
Rumus percepatan resultan terdiri dari 2 komponen yakni :
+ percepatan tangensial ($a_t$):
#align(center)[
  $a_t = alpha R = (6pi)(0.381)$\
  $ = 2.286pi "m/s"$\
]
+ percepatan radial ($a_r$):
#align(center)[
  $a_r = frac(v^2, R)= frac((15.24pi)^2, 0.381)$\
  $ = frac(232.67 pi^2, 0.381) approx 1935.58 "m/s"$
]

percepatan resultan adalah:
#align(center)[
  $a_"total"= sqrt(a_t^2 + a_r^2)$\
  $= sqrt((2.285pi)^2 + (1935.58pi)^2)$
]
perhitungan:
#align(center)[
  $(a_t)^2 approx (2.286pi)^2 approx 16.496 frac(m^2, s^4) $\
  $(a_t)^2 approx (1935.59)^2 approx 3747044.86frac(m^2, s^4)$\
  $(a_"total") approx sqrt(16.496 + 3747044.86)$\
  $approx sqrt(3747061.36) approx 1936.2 frac(m, s^2)$
]

jadi percepatan resultan pada waktu $t = 6 "s"$ adalah : * 1936.2 $m/s^2$*