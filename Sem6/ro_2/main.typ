#set page(width: auto, height: auto, margin: 1cm)
#set text(font: "Arial", size: 11pt)

#align(center)[
Nama: Rifqi Fadil Fahrial  \
NIM: 1222646 \
Tugas Sistem Operasi 2 Metode Simplex\
]
== Fungsi Tujuan: \
$"Maskimumkan" Z = 60X_1 + 30X_2 + 20X_3$ \
Pembatas: \
+ $8X_1 + 6X_2 + X_3 <= 48$
+ $4X_1 + 2X_2 + 1.5X_3 <= 20$
+ $2_1 + 1.5X_2 + 0.5X_3 <= 8$
+ $X_2 <= 5$
+ $X_1,X_2,X_3 >= 0$


= Jawaban

== 1. Tabel Simplex
#table(
  columns: (auto,auto,auto,auto,auto,auto,auto,auto,auto),
  align: center,
  stroke: (left: 1pt, right: 1pt, top: 1pt, bottom: 1pt),
  [Basis], [$X_1$], [$X_2$], [$X_3$], [$S_1$], [$S_2$], [$S_3$], [$S_4$], [Solusi],
[$S_1$],  [8],    [6],    [0],      [1],  [0],  [0],  [0],  [48],
[$S_2$],  [4],    [2],    [1.5],    [0],  [1],  [0],  [0],  [20],
[$S_3$],  [2],    [1.5],  [0.5],    [0],  [0],  [1],  [0],  [8],
[$S_4$],  [0],    [1],    [0],      [0],  [0],  [0],  [1],  [5],
[$Z$],    [-60],  [-30],  [-20],    [0],  [0],  [0],  [0],  [0],
)

== 2. Fungsi Tujuan
$ Z = 60X_1 + 30X_2 + 20X_3 + 0S_1 + 0S_2 + 0S_3 + 0S_4$

== 3. Iterasi 1
#table(
  columns: (auto,auto,auto,auto,auto,auto,auto,auto,auto),
  align: center,
  stroke: (left: 1pt, right: 1pt, top: 1pt, bottom: 1pt),
  [Basis], [$X_1$], [$X_2$], [$X_3$], [$S_1$], [$S_2$], [$S_3$], [$S_4$], [Solusi],
[$S_1$],  [0],    [0],    [-1],      [1],  [0],  [-4],  [0],  [16],
[$S_2$],  [0],    [-1],    [0.5],    [0],  [1],  [-2],  [0],  [4],
[$S_3$],  [1],    [0.75],  [0.25],    [0],  [0],  [0.5],  [0],  [4],
[$S_4$],  [0],    [1],    [0],      [0],  [0],  [0],  [1],  [5],
[$Z$],    [0],  [15],  [-5],    [0],  [0],  [30],  [0],  [240],
)

== 4. Iterasi 2
#table(
  columns: (auto,auto,auto,auto,auto,auto,auto,auto,auto),
  align: center,
  stroke: (left: 1pt, right: 1pt, top: 1pt, bottom: 1pt),
  [Basis], [$X_1$], [$X_2$], [$X_3$], [$S_1$], [$S_2$], [$S_3$], [$S_4$], [Solusi],
[$S_1$],  [0],    [0],    [-1],      [1],  [0],  [-4],  [0],  [16],
[$S_2$],  [0],    [0],    [0.5],    [0],  [1],  [-2],  [1],  [9],
[$S_3$],  [1],    [0],  [0.25],    [0],  [0],  [0.5],  [-0.75],  [0.25],
[$S_4$],  [0],    [1],    [0],      [0],  [0],  [0],  [1],  [5],
[$Z$],    [0],  [0],  [-5],    [0],  [0],  [30],  [-15],  [165],
)

Koefisien $X_3$ pada baris $Z$ adalah $-5$(negatif) dan koefisien variabel slack ($S_3$) adalah 30.\ Karena peningkatatan $S_3$ tidak meningkatkan nilai $Z$, solusi optimal tercapai.

== Solusi optimal
 $X_1 = 0.25,\ X_2 = 5,\ X_3 = 0$\
 $Z = 165$

== Verifikasi Pembatas:
+ $8(0.25) + 6(5) + 0 = 2 + 30 = 32 <= 48$
+ $4(0.25) + 2(5) + 0 = 1 + 10 = 11 <= 20$
+ $2(0.25) + 1.5(5) + 0 = 0.5 + 7.5 = 7.5 <= 8$
+ $X_2 = 5 <= 5$
Semua Pembatas terpenuhi.

== Nilai Variabel slack:
$S_1 = 16 \ S_2 = 9 \ S_3 = 0.25 \ S_4 = 5$

