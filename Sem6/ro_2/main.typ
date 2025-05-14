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

$Z = 60X_1 + 30X_2 + 20X_3 -> Z - 60X_1 - 20X_2 -20X_3 = 0  $ \
$8X_1 + 6X_2 + X_3 <= 48 -> 8X_2 + 6X_2 + X_3 + S_1 = 48   $ \
$4X_1 + 2X_2 + 1.5X_3 <=20 -> 4X_1 + 2X_2 + 1.5X_3 + S_2 = 20  $ \
$2X_1 + 1.5X_2 + 0.5X_3 <=8 -> 2X_1 + 2X_2 + 1.5X_3 + S_3 =8  $ \
$X_2 <= 5 -> X_2 + S_4 = 5 $ \

== Iterasi 0
#table(
  columns: (auto,auto,auto,auto,auto,auto,auto,auto,auto,auto,auto),
  align: center,
  stroke: (left: 1pt, right: 1pt, top: 1pt, bottom: 1pt),
  [Basis],[Z], [$X_1$], [$X_2$], [$X_3$], [$S_1$], [$S_2$], [$S_3$], [$S_4$], [RK], [Rasio],
[$Z$],    [1], [-60], [-30],  [-20],    [0],  [0],  [0],  [0],  [0],[],
[$S_1$],  [0],   [8],   [6],    [0],      [1],  [0],  [0],  [0],  [48],[6],
[$S_2$],  [0],   [4],   [2],    [1.5],    [0],  [1],  [0],  [0],  [20],[5],
[$S_3$],  [0],   [*2*],   [1.5],  [0.5],    [0],  [0],  [1],  [0],  [8],[4],
[$S_4$],  [0],   [0],   [1],    [0],      [0],  [0],  [0],  [1],  [5],[-],
)

== Angka Kunci (Elemen Pivot) = 2


== Iterasi 1
Semua angka di baris kunci dibagi angka kunci awal
#table(
  columns: (auto,auto,auto,auto,auto,auto,auto,auto,auto,auto,auto),
  align: center,
  stroke: (left: 1pt, right: 1pt, top: 1pt, bottom: 1pt),
[BASIS],    [Z],    [$X_1$],  [$X_2$],   [$X_3$],   [$S_1$],  [$S_2$],  [$S_3$],  [$S_4$],  [RK],   [RASIO],
[$Z$],      [1],    [0],      [15],      [-5],      [0],      [0],      [0],      [30],     [240],  [],
[$S_1$],    [0],    [0],      [0],       [-1],      [1],      [0],      [-4],     [0],      [16],   [-16],
[$S_2$],    [0],    [0],      [-1],      [0.5],     [0],      [1],      [-2],     [0],      [4],    [8],
[*$X_1$*],  [*0*],  [*1*],    [*0.75*],  [*0.25*],  [*0*],    [*0*],    [*0.5*],  [*0*],    [*4*],  [*16*],
[$S_4$],    [0],    [0],      [1],       [0],       [0],      [0],      [0],      [1],      [5],    [0],
)

== 4. Iterasi 2

#table(
  columns: (auto,auto,auto,auto,auto,auto,auto,auto,auto,auto,auto),
  align: center,
  stroke: (left: 1pt, right: 1pt, top: 1pt, bottom: 1pt),
[BASIS],    [Z],    [$X_1$],  [$X_2$],  [$X_3$],  [$S_1$],  [$S_2$],  [$S_3$],  [$S_4$],  [RK],   [RASIO],
[$Z$],      [1],    [0],      [5],      [0],      [0],      [10],     [10],     [0],      [280],  [],
[$S_1$],    [0],    [0],      [-2],     [1],      [1],      [2],      [-8],     [0],      [24],   [],
[*$X_2$*],  [*0*],  [*0*],    [*-2*],   [*0*],    [*0*],    [*2*],    [*-4*],   [*0*],    [*8*],  [],
[$X_1$],    [0],    [1],      [1.25],   [0],      [0],      [-0.5],   [1.5],    [0],      [2],    [],
[$S_4$],    [0],    [0],      [1],      [0],      [0],      [0],      [0],      [1],      [0],    [],
)
