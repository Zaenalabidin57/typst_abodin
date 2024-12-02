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
== Pendeteksian Gejala awal kanker dengan metode histopathological image analysis dengan bantuan machine learning
=== Mata Kuliah: Sistem basis data
=== Dosen: Muhammad Rizki Pratama Suhernawan. S, S.Kom.
\
Nama: Rifqi Fadil Fahrial \
NIM: 1222646 \ 
]


#set par(justify: true, leading: 1.5em, first-line-indent: 2em)

= Pendahuluan
//menjelaskan bagaimana kanker itu berbahaya dan dapat terjadi kepada siapa saja
Kanker adalah penyakit mematikan yang menjadi penyebab kematian nomor 2 yang dapat menyerang siapa saja, berdasarkan data dari WHO di indonesia sendiri pada tahun 2018 ada sekitar 348.809 kasus kanker dengan jumlah kematian yang disebabkan oleh kanker sebanyak 207,210. hal ini menjadikan kanker adalah sebuah momok mematikan yang menghantui semua orang.

// https://www.who.int/publications/m/item/cancer-idn-2020
// menjelaskan apa itu kanker 
kanker ialah suatu klasifikasi penyakit yang mana sel tubuh tumbuh secara tidak terkendali dan dapat menyebar kepada sel lainnya. tubuh manusia terbentuk dari triliun lebih sel dan salah satu dari sel tersebut dapat bermutasi dan menginfeksi sel lainnya, namun tubuh manusia sendiri memiliki kekebalan yang dapat menghancurkan sel yang bermutasi sebelum menyebar ke sel lainnya.


Kanker dapat terjadi secara biologis karena suatus kegagalan pada proses apoptosis yakni ketika sistem kematian sel yang terpogram yang memungkinkan sel untuk menghancurkan diri sendiri ketika dirangsang oleh pemicu yang tepat sehingga dapat menyebabkan sel kanker yang mampu bertahan hidup secara otonom dalam tubuh kemudian kanker bermutasi sampai dapat memiliki kemampuan untuk menghindari  sel _imunokompeten_ termasuk sel T sitoksis(TCL) dan sel _Natural Killer_(NKsel) yang memiliki kemampuan untuk menghancurkan sel yang bermutasi.

kanker dapat diketahui berdasarkan pertumbuhan sel yang tidak terkendali dan dapat menuju ke daerah oragan lain yang lebih jauh (metastasis) yang bermula dengan menyebar pada organ asal kemudian menyebar ke organ terdekat dan kemudian menuju ke organ lain. Metastatis penyakit kanker menuju ke organ lain bisa melalui berbagai cara, yaitu aliran darah (hematogen) dan kelenjar limfe (limfogen). 

//faktor faktor
Faktor faktor yang mempengaruhi terjadinya kanker itu dapat berasal dari manusia sendiri (endoge) atau faktor dari luar (eksogen). Faktor-faktor endogen dapat berupa gen regulator/ pengatur sel, hormon, sistem imun maupun psikis dan dapat juga berasal dari herediter / keturunan. Sedangkan faktor eksoken lebih kompleks lagi karena sangat banyak variabel yang dapat berkontribusi seperti faktor biologi berupa bakteri, virus, jamur; faktor kimia bisa berasal dari makanan, minuman, bahan kosmetik, bahan pembersih/ pencuci, udara, sanitasi lingkungan; sedangkan faktor fisis seperti elektronik, radiasi; walaupun radiasi juga dibagi menjadi beberapa jenis, contoh radiasi sinar matahari, sinar X, radiasi alat-alat radioaktif dll.
//https://www.bing.com/ck/a?!&&p=a280621be4b39d407476caed02598bea4c94629da3a2cbd2c57e3f408abd8bb0JmltdHM9MTczMTQ1NjAwMA&ptn=3&ver=2&hsh=4&fclid=361ea560-29bd-6018-1a84-b04728a661ce&psq=Dr.+Theresia+Indah+Budhy%2c+drg.%2c+M.+Kes.%2c+Sp.PMM+(K).+2019.+Mengapa+Terjadi+Kanker.+Pusat+Penerbitan+dan+Percetakan+UNAIR%2c+Jawa+TImur.+Airlangga+University+Press.&u=a1aHR0cHM6Ly9yZXBvc2l0b3J5LnVuYWlyLmFjLmlkLzkxODg3LzYvQnVrdUthbmtlcjAxLnBkZg&ntb=1

//https://pmc.ncbi.nlm.nih.gov/articles/PMC6169832/

//klasifikasi kanker
//https://pmc.ncbi.nlm.nih.gov/articles/PMC4306340/
penamaan kanker dibagi menjadi dua yakni jaringan asal epitel dan jaringan dasar mesenkimal. Jaringan epitel adalah jaringan yang melapisi permukaan dan rongga tubuh, bila suatu kanker berasa dari jaringan epitel atau parenkimnya adalah epitel, baik yang terjadi pada mukosa maupun kelenjar liur, maka diberi nama karsinoma. seperti contoh pada kanker mukosa yang berasal dari epitel skuamus rongga mulut, amaka bernama "Karsinoma sel skuamus" karena kanker tersebut berasal dari epitel sel skuamus. Bila berasal dari keelnjar (adeno) maka bernama "Adeno Karsinoma". Kemudian apabila jaringan asal atau parenkimnya adalah mesenkimal,yakni sel-sel tulang otot, ligamen, tendon dan lemak akan diberi tambahan nama Sarkoma. Seperti contoh kanker yang berasal dari mesenkim tulang(Ostea), maka bernama "Osteo Sarkoma". Contoh lain misalkan berasal dari jaringan ikan (fibrous) akan diberi nama menjadi "Fibro Sarkoma", bila berasal dari lemak (lipid) diberi nama "Liposarkoma".

//klasifikasi tingkat kanker
//https://pmc.ncbi.nlm.nih.gov/articles/PMC4306340/
dikarenakan kanker itu memiliki tingkat keparahan yang berbeda beda maka diberikan sebuah konvensi penamaan dari tingkatan keparahan dari kanker dengan tingkatan "Stadium" dengan karakteristik berikut:
- Stadium 0: sel kanker baru tumbuh dan belum menyebar ke jaringan atau organ lain di sekitarnya. Kanker stadium 0 yang disebut juga sebagai karsinoma in situ biasanya tidak bergejala sehingga, banyak orang yang tidak menyadari bahwa ada sel kanker yang hinggap di dalam tubuhnya. jika sel kanker terdeteksi saat masih stadium 0, keberhasilan pengobatan akan cukup tinggi.
- Stadium 1: sel kanker mulai tumbuh dan membentuk jaringan tumor berukuran kecil. Pertumbuhan sel atau jaringan kanker pada stadium ini umumnya tidak menimbulkan gejala khas, sehingga banyak orang yang tidak mengetahui bahwa dirinya menderita kanker.
sel kanker pada stadium ini juga belum tumbuh hingga ke dalam jaringan tubuh atau belum menyebar ke bagian tubuh lainnya
- Stadium 2: sel kanker sudah berkembang dan tumbuh dengan ukuran yang lebih besar. Namun sel kanker ini masih berada di tempat awal tumbuh dan belum menyebar ke bagian tubuh lainnya. Kanker stadium 2 yang tidak segera ditangani bisa berkembang menjadi kanker stadium lanjut.
- Stadium 3: sel kanker sudah mulai tumbuh lebih dalam dan mulai menyebar seperti pada kelenjar getah bening dan sekitarnya, namun penyebarannya belum sampai ke bagian tubuh lain yang jauh dari lokasi awal munculnya sel kanker.
- Stadium 4: sel kanker sudah menyebar ke organ tubuh lain. misalnya sel kanker yang awalnya tumbuh di paru-paru dapat menyebar ke otak ketika sudah mencapai stadium 4. 

//https://www.who.int/publications/m/item/cancer-idn-020
// dampak kanker dan bagaimana kanker harus diketahui dari awal agar tidak naik ke stadium tinggi
Kanker merupakan penyakit yang berbahaya dan sulit dideteksi tanpa bantuan dokter sehingga penyakit kanker akan terdeteksi ketika pasien mulai merasakan nyeri yang mana kemungkinan besar kanker tersebut sudah membesar dan semakin sulit untuk diobati sehingga pengidap kanker harus segera di deteksi dan diobati secepat mungkin sebelum penyakit nya mulai memburuk dan menyebar ke seluruh tubuh.
//  metode pendeteksian kanker

Untuk mendeteksi kanker ada beberapa cara yakni dengan cara pemeriksaan fisik, dengan cara ini dokter memeriksa apakan ada benjolan yang tidak seharusnya ada, contohnya adalah gejalan kanker limfoma. kemudian ada juga cara pemeriksaan hematologi yakni memeriksa kandungan darah dalam tubuh, tes urine dan pemeriksaan sel jaringan tertentu (biopsi), hal ini dapat membantu untuk mengetahui jumlah sel darah yang dapat dipengaruhi oleh adanya sel kanker. kemudian tes yang paling sering digunakan adalah tes pencitraan yakni sebuah tes yang menghasilkan sebuah gambaran dari tubuh pasien menggunakan sebuah teknologi untuk melihat adanya sel-sel yang tidak normal, seperti CT (computed tomography) scan, scan tulang, MRI (Magnetic Resonance Imaging) scan, PET(Positron Emission Tomography) scan, USG(Ultrasonografi) dan lain lain.

//penjelasan mengenai biopsi

Salah satu cara untuk mendeteksi kanker adalah biopsi, Biopsi adalah sebuah tes yang mengambil sampel jaringan atau sel dari tubuh pasien yang dicurigai memiliki kanker yang kemudian di analisa lebih lanjut di laboratorium. dengan sampel jaringan tersebut dokter dapat memberikan hasil yang lebih akurat dibandingkan dengan metode lain karena berhubungan dengan jaringan langsung, tidak seperti metode lainnya yang hanya meraba raba.

//penjelasan Histopathological Image Analysis 
//https://www.researchgate.net/publication/277512060_Histopathological_Image_Analysis_Deteksi_Kanker_Dengan_Metode_Contour_Improvement

Histopathological Image Analysis adalah cabang ilmu pengetahuan dari pendeteksian kanker yang menggunakan sampel data yang diambil dari metode biopsi untuk mendeteksi adanya anomali dalam sel, namun sel yang diambil itu memiliki warna transparan dan sulit untuk ditangkap gambarnya jadi perlu melakukan proses "mewarnai" sampel dengan Hematoxyllin and Eosin (H&E) yang dapat memunculkan kontras dalam gambar jaringan sel.
#figure(
  image("images/gambar_contoh.png", width: 80%), caption: [Hasil gambar jaringan sel setelah "pewarnaan"],
)

//  https://www.mdpi.com/2079-9292/10/5/562
setelah itu dapat di deteksi adanya kanker pada jaringan tersebut dengan mencari irregularity pada sel, namun untuk mendeteksinya diperlukan waktu yang lama dikarenakan seulitnya pendeteksiannya karena jaringan sel yang kecil dan kemungkinann terlewat ketika di deteksi oleh mata manusia saja maka oleh sebab itu maka diperlukan sebuah sistem yang dapat membantu untuk memproses hasil biopsi ini.

= Implementasi Machine Learning
Awal mula analisis gambar dimulai dari mengidentifikasi dari struktur dari nuclei (sel yang mengatur sel-sel lainnya seperti dalam hal berkembang seperti metabolisme) yang dapat memberikan informasi mengenai struktur dasar dari nuclei tersebut seperti jumlah nuclei per area, ukuran nuclei dan formatnya yang dapat membantu untuk mendeteksi apakah ada anomali dari sampel tersebut. namun setelah itu masalah dari analisis ini adalah pada bagian pendefinisian struktur low-level dan high-level, yang mana low-level berfokus pada segmentasi dari nuclei  yang menjadi langkah awal dalam proses analisis, setelah itu diteruskan ke struktur high-level yang menganalisis jaringan sel pada area (gambaran besar). pada awalnya perkembangan sistem pembantu dalam memproses gambar hanya pada area low-level saja dikarenakan keterbatasan teknologi, namun pada zaman sekarang mulai terbentuk sistem-sistem yang dapat membantu dalam menganalisa struktur high-level dengan bantuan machine learning. 

= Aplikasi Machine Learning dalam Pathologi

== Comupter Asisted Diagnosis(CAD)
Sistem Computer Asisted Diagnosis (CAD) Menjadi topik hangat di kalangan peneliti di bidang teknologi pada ilmu pathologi, yang dapat membantu untuk mempermudah dalam mendiagnosa pasien seperti dengan memberikan akurasi dalam pendiagnosaan yang lebih tinggi dikarenakan error yang terjadi pada CAD ini bisa di training kembali agar mencapai status yang memuaskan dan dapat membantu dokter patologi.

== Content Based Image Retrival(CBIR)
Content Based Image Retrieval adalah teknik yang menganalisa gambar dan mencocokan gambar yang ada pada query, hal ini sangat berguna dalam beberapa kasus, terutama dalam mendiagnosa penyakit yang ada, memberikan sebuah label pada data dan penelitian, salah satu contohnya adalah dalam pendidikan seorang dokter patologi memberikan kuliah kepada mahasiswa dalam menganalisa kasus penyakit yang ada dalam sampel, juga sistem ini dapat membantu para profesional dalam mengenali kasus kanker yang langka.

== Penemuan Baru dalam Clinipathological Relationship
Dalam sejarahnya, banyak penemuan mengenai penyakit seperti kanker dan penyakit infeksi telah ditemukan oleh dokter dan peneliti yang meneliti dan mengobservasi penyakit tersebut secara menyeluruh, namun hal tersebut dapat memakan banyak waktu dan bisa saja memakan korban jiwa jika terlambat dalam menciptakan obatnya, salah satu contoh kasusnya adalah bakteri _H. pylori_ yang di observasi oleh patologis yang sedang melakukan tes pada jaringan gastric mucosa pada  pasien dengan penyakit gastritis 
// Weinstein JN, Collisson EA, Mills GB, Shaw KRM, Ozenberger BA, Ellrott K, et al. The 565 cancer genome atlas pan-cancer analysis project. Nat Genet 2013;45:1113–20.

= Masalah dalam implementasi Histopathological Image Analysis

meski memiliki banyak manfaat yang didapatkan dalam sistem implemetasi dari Histopathological Image Analysis, masih banyak kendala yang terjadi dalam implementasinya diantaranya:
== Gambar yang sangat besar
dalam pemotretan sampel menggunakan microskop itu menghasilkan gambar sebesar 10.000 x 10.000 pixel yang dapat membebani beban kalkulasi dari komputer, kemudian dalam training data dari machine learning rata-rata dalam sampelnya hanya seukuran 256 x 256 pixel jadi perbandingannya sangat jauh, sehingga pada training data nya menggunakan mematok area menjadi beberapa bagian (patches) sebesar 256 x 256 pixel, namun dengan begitu akan mengurangi informasi yang ada pada setiap area karena pada setiap sampel yang ada membutuhkan lebih dari ukuran yang dipatok tersebut karena bisa saja jaringan sehat dianggap menjadi jaringan sakit (false positive), namung dengan perkembangan sistem kalkulasi machine learning sekarang rata-rata patch size 960 x 960 pixel yang dapat berkontribusi dalam menambah akurasi dari hasil training. 
#figure( 
  image("images/gambar_perbandingan.png", width: 80%), caption:
  [perbandingan antara ukuran sampel dengan ukuran patch]
)

== Kekurangan Pelabelan Gambar
Masalah terbesar yang dialami pada training data ini adalah hanya ada sedikit sampel yang telah diberi label yang tersedia. kunci sukses dari machine learning pada dasarnya ada pengenalan gambar yang sesuai dengan labelnya / mirip. dengan besarnya gambar yang ada maka sangatlah sulit untuk memberikan label pada tingkatan patch, sehingga label yang diberikan hanya pada area yang memiliki kemungkinan tertinggi kanker (area terdeteksi kanker), jadi 

== Perbedaan level informasi dalam setiap level dari pembesaran gambar

Tissue adalah sekumpulan sel yang memiliki struktur yang sama dan bekerja sama dalam melakukan aksi tertentu, dalam tubuh terdiri dari sel yang memiliki bentuk sama yang mana dalam gambar yang diambil akan memiliki informasi yang sama, namun akan berbeda jika di zoom ke area low-level yang menampilkan informasi mengenai lebih detail yang tidak di tangkap oleh pembesaran sebelumnya, sehingga pada tingkat pembesaran gambar tertentu memiliki informasi berbeda dengan satu sama lain, sehingga data nya tidak bisa di gabungkan. sehingga untuk kondisi tertentu diperlukan jumlah pembesaran yang sesuai agar informasi yang diinginkan muncul dan memberikan informasi yang tepat, hal ini dapat bergantung pada tipe penyakit yang akan di deteksi dan algoritma dari machine learning yang akan digunakan. 

== gambar dsw

#figure(
  image("images/gambar_keseluruhan.png", width: 80%), caption: [gambar keseluruhan]
)

// WSI Whole Slide Image (gambar keseluruhan sampel)
// ROI Region of Interest (daerah yang diinginkan)
//