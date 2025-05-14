#align(center)[
  Nama: Rifqi Fadil Fahrial \
  NIM: 1222646 \
  Tugas Pengujian Perangkat Lunak \
]

== Soal 1
#figure(
  grid(
    columns: 2, // Two columns for side-by-side arrangement
    gutter: 10pt, // Adjust spacing between images as needed
    image("images/gambar11.png", width: 200pt),
    image("images/gambar1.png", width: 200pt),
  ),
  caption: "Soal 1"
)
Jumlah Node : 5 \
Jumlah Edge : 5 \
Jumlah Region : 2 \

PATH: 
- $1,2,3,5$
- $1,2,3,4,5$

\
$V(G) = "Edge" - "Node" + 2 \
V(G) =  5 - 5 + 2 \
V(G) = 2$ \
\


== Soal 2
#figure(
  grid(
    columns: 2, // Two columns for side-by-side arrangement
    gutter: 10pt, // Adjust spacing between images as needed
    image("images/gambar22.png", width: 200pt),
    image("images/gambar2.png", width: 200pt),
  ),
  caption: "Soal 2"
)
Jumlah Node : 7 \
Jumlah Edge : 8 \

Jumlah Region : 3 \

PATH:\
- $1,2,3,4,7$
- $1,2,3,5,2,3,4,7$
- $1,2,3,4,6,2,3,4,7$
\

$V(G) = "Edge" - "Node" + 2 \
V(G) =  8 - 7 + 2 \
V(G) = 3$ \
\

== Soal 3
#figure(
  grid(
    columns: 2, // Two columns for side-by-side arrangement
    gutter: 10pt, // Adjust spacing between images as needed
    image("images/gambar33.png", width: 200pt),
    image("images/gambar3.png", width: 200pt),
  ),
  caption: "Soal 3"
)
Jumlah Node : 9 \
Jumlah Edge : 11 \
Jumlah Region : 4 \

PATH: \
- $1,2,3,4,5,7,10,1,11$\
- $1,2,3,4,6,7,10,1,11$\
- $1,2,3,8,9,10,1,11$\
- $1,11$\

\
$V(G) = "Edge" - "Node" + 2 \
V(G) =  11 - 9 + 2 \
V(G) = 4$ \
\

