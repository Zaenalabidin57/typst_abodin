// set page jadi F4 margin 
#set page(
  paper: "asia-f4",
  margin: (left: 2.5cm, right: 2cm, bottom: 2cm, top: 2cm),
)
// set font jadi times new roman
#set text(
  font: "Times New Roman",
)

#set par(
  leading: 1.5em,
)

// set referensi bib 


// idk, pake linguify buat nambah string bahasa
// #import "@local/linguify:0.4.1": *
// #let lang_data = toml("lang.toml")
// #set-database(lang_data);
// #set text(lang: "id")
//
//
// #linguify("bibliography")
// #linguify("title")
// panggil cover
#include("cover.typ")

// kata pengantar  desuwa
#show heading: set align(center)
#show heading: set block(above: 1em, below: 2em)

#set page(numbering: "I")
#counter(page).update(1)
= KATA PENGANTAR

#par(justify: true)[
Assalamualaikum Wr. Wb. Puji syukur kehadirat Allah SWT atas segala rahmat dan hidayah-Nya sehingga penulis dapat menyelesaikan tugas bimbingan konseling ini dengan judul “Pentingnya Kedisiplinan di Sekolah”. Tugas ini disusun sebagai salah satu persyaratan untuk memenuhi tugas mata pelajaran Bahasa Indonesia. 

Disiplin merupakan salah satu nilai penting yang harus dimiliki oleh setiap individu, terutama siswa. Dalam konteks pendidikan, kedisiplinan memiliki peran yang sangat krusial dalam membentuk karakter dan prestasi siswa. Melalui tugas ini, penulis berusaha untuk mengkaji lebih dalam mengenai pentingnya kedisiplinan di sekolah serta dampaknya terhadap kehidupan siswa. Penulis menyadari bahwa tugas ini masih jauh dari sempurna. Oleh karena itu, penulis sangat mengharapkan kritik dan saran yang membangun dari berbagai pihak. Semoga tugas ini dapat bermanfaat bagi semua pihak. Wassalamualaikum Wr. Wb.
]

#align(end + horizon)[
  Pasirjambu, November 2024\
  #v(3cm)
  Kelompok 2\
]

#pagebreak()
// panggil table of content
//
#outline()

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)

= BAB 1 \ PENDAHULUAN

#par(justify: true, first-line-indent: 2em)[
Sekolah merupakan sebuah wadah bagi pemerintah untuk merealisasikan pendidikan nasional yang diperuntukan oleh masyarakat.
hal ini menjadikan sekolah diharuskan membuat tata tertib untuk mengatur jalannya pendidikan agar berjalan sesuai dengan tujuan yang hendak dicapai. hal ini sesuai dengan Undang-undang tentang Sistem Pendidikan Nasional Bab V. Pasal 12, Ayat(2a) yang menjelaskan bahwa, setiap peserta didik berkewajiban menjaga norma-norma pendidikan untuk menjamin keberlangsungan proses dan keberhasilan pendidikan.

Alasan sekolah membuat tata tertib karena sekolah mempunyai tugas 
menjamin keberlangsungan proses dan keberhasilan pendidikan setiap siswa. 
Tentu saja tata tertib tidak akan berguna jika siswa-siswi tidak disiplin. Hal ini 
menyebabkan disiplin menjadi kunci siswa-siswi dapat mematuhi tata tertib. 

Tata tertib sekolah seharusnya mengajarkan apa yang boleh dilakukan dan tidak 
boleh dilakukan di sekolah mapun diluar sekolah ketika guru tidak dapat 
mengawasi. Tata tertib yang berlaku di sekolah harus diberikan secara jelas dan 
tegas kepada siswa, agar mereka dapat mematuhi sesuai dengan tujuan atau 
harapan sekolah

Tata tertib yang dibuat sekolah adalah upaya sekolah untuk membentuk 
karakter disiplin pada siswa karena sekolah merupakan tahap selanjutnya 
setelah pembentukan karakter oleh orang tua. Disiplin juga mempunyai dampak 
yang baik bagi anak dan kedepannya.@tu2004peran mengatakan perencanaan dan  implementasi
disiplin sekolah akan berdampak memelihara siswa selalu berada dalam tugasnya; membantu siswa bersikap dan bertingkah laku penuh tanggung jawab serta sesuai dengan disiplin yang berlaku di sekolah, membimbing dan mengarahkan serta mendorong para siswa bertingkah laku yang baik sehingga ada pertumbuhan pribadi yang baik pula, mencegah dan menekan serta meluruskan tingkah laku yang salah, mengusahakan hubungan yang baik di antara para siswa. 
Disiplin merupakan salah satu aspek yang sangat penting bagi keberhasilan prestasi 
akademik siswa . Disiplin sekolah berperan penting dalam pencapaian harapan dan 


Pihak sekolah jika menerapkan kedisplinan dengan baik maka sebenarynya akan mempunyai banyak manfaat. Salah satu manfaat menurut @Hurlock_1991 disiplin adalah cara untuk mendidik individu untuk mengembangkan kontrol diri dan arah diri serta mampu menyesuaikan diri dengan harapan yang diterima di lingkungan sosialnya sehingga individu dapat bertindak dan mengambil keputusan dengan bijaksana. Hal ini berarti apabila pendidik dapat mengontrol siswa dengan baik maka kedisiplinan merupan merupakan proses untuk membantu anak mengubah tingkah lakunya ke arah yang lebih baik.
]


= BAB II \ Permasalahan desuwa

#par(justify: true, first-line-indent: 2em)[

]





#bibliography("ref.bib", style: "apa")

