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

//BAB fucking 1

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

Kemudian setelah dilakukan pewarnaan maka dapat diteliti dan dicari iregularitas dari sel yang ada, jika terdeteksi ada iregularitas maka dapat dipastikan adanya kanker pada jaringan sel tersebut dan dapat didapatkan informasi tambahan mengenai kondisi kanker yang diidap seperti stadium berapa dan sudah berkembang biak sebanyak apa dan apakah sudah menyebar atau belum.
//  https://www.mdpi.com/2079-9292/10/5/562
namun untuk mendeteksinya diperlukan waktu yang lama dikarenakan seulitnya pendeteksiannya karena jaringan sel yang kecil dan kemungkinann terlewat ketika di deteksi oleh mata manusia saja maka oleh sebab itu maka diperlukan sebuah sistem yang dapat membantu untuk memproses hasil biopsi ini.

//bab fucking 3

= Implementasi Machine Learning
Awal mula analisis gambar dimulai dari mengidentifikasi dari struktur dari nuclei (sel yang mengatur sel-sel lainnya seperti dalam hal berkembang seperti metabolisme) yang dapat memberikan informasi mengenai struktur dasar dari nuclei tersebut seperti jumlah nuclei per area, ukuran nuclei dan formatnya yang dapat membantu untuk mendeteksi apakah ada anomali dari sampel tersebut. namun setelah itu masalah dari analisis ini adalah pada bagian pendefinisian struktur low-level dan high-level, yang mana low-level berfokus pada segmentasi dari nuclei  yang menjadi langkah awal dalam proses analisis, setelah itu diteruskan ke struktur high-level yang menganalisis jaringan sel pada area (gambaran besar). pada awalnya perkembangan sistem pembantu dalam memproses gambar hanya pada area low-level saja dikarenakan keterbatasan teknologi, namun pada zaman sekarang mulai terbentuk sistem-sistem yang dapat membantu dalam menganalisa struktur high-level dengan bantuan machine learning. 

pada gambar anu menggambarkan langkah dalam histopathological image analysis menggunakan machine learning, sebelum menggunakan machine learning, dibutuhkan preprocessing dahulu seperti ketika area kanker terdeteksi pada gambar maka area tersebut akan diambil sekitar 256x256 pixel untuk diberikan label  dan diberikan klasifikasi mengenai informasi yang ada pada area tersebut. tujuan dilakukan ekstraksi data ini untuk mengambil informasi yang berguna untuk tugas machine learning. berbagai informasi yang ada seperti gray level co-occurrence matrix (GLCM) dan local binary pattern (LBP) digunakan untuk Histopathological Image Analysis. namun algoritma deep learning dimulai dari tahap ekstrasi fitur, fitur dan klasifikasi secara bersamaan di optimasisasi pada deep learning dan features learned pada deep learning sering kali lebih baik daripada metode tradisional dalam histopathological image analysis.

metode machine learning yang sering digunakan dalam histopathological image analysis ini dibagi menjadi dua segment yakni supervised learning dan unsupervised learning. tujuan dari supervised learning adalah untuk membuat sebuah kesimpulan dari sebuah fungsi yang dapat memetakan gambar input ke label yang sesuai (kanker) dengan baik berdasarkan dari training data. label diambil dari informasi yang ada pada gambar atau pada area yang ada pada gambar, algoritma yang digunakan pada supervised learning termasuk Support Vector Machine (SVM), random forest dan Convolusional Neural Network (CNN). sedangkan tujuan unsupervised leaning  untuk mencari sebuah struktur tertentu yang janggal pada gambar atau anomali dari gambar yang ada, algoritma ini memiliki tugas untuk clustering, deteksi anomali dan reduksi dimensi. algoritma untuk unupservised learning meliputi k-means, autoencoders dan principal component analysis (PCA).

Teknik machine learning yang sering digunakan dalam analisis gambar patologi digital dibagi menjadi pembelajaran terawasi dan pembelajaran tidak terawasi. 77 Tujuan dari pembelajaran terawasi adalah untuk menyimpulkan fungsi yang dapat memetakan gambar masukan ke label yang sesuai (misalnya kanker) dengan baik menggunakan data pelatihan. 78 Label dihubungkan dengan WSI atau objek dalam WSI. Algoritma untuk pembelajaran terawasi meliputi mesin vektor pendukung, hutan acak dan jaringan saraf konvolusi. Di sisi lain, tujuan dari pembelajaran tidak terawasi adalah untuk menyimpulkan fungsi yang dapat menjelaskan struktur tersembunyi dari gambar yang tidak berlabel. 82 Tugas-tugas ini meliputi clustering, deteksi anomali dan reduksi dimensi. Algoritma untuk pembelajaran tidak terawasi meliputi k-means, autoencoder dan analisis komponen utama. Ada derivatif dari dua pembelajaran ini seperti pembelajaran semi-terawasi dan pembelajaran instance ganda .

#figure(
  image("images/gambar_keseluruhan.png", width: 80%), caption: [gambar keseluruhan proses machine learning]
)

// untuk metode machine learning yang digunakan dalam Histopathological image Analysis ini dibagi menjadi beberapa segment berdasarkan informasi yang dibutuhkan dan segmentasi dari data yang digunakan apakah dari low-level atau yang berfokus pada segmentasi dari nuclei, high-level yang berfokus pada keseluruhan gambar yakni:

// == unsupervised

// metode ini menggunakan data raw (mentah) yang tidak diberi label.
// algoritma k-means adalah metode machine learning unsupervised yang sering digunakan dalam segmentasi dari pixel gambar. dalam metode ini menjadi tulang punggung dalam metode lainnya. Fatakdawala et al ((cite this mf)) mengusulkan metode expectation-maximization dari kontur geodesic aktiv untuk mendeteksi lymphocyte nuclei (sel darah putih) yang kemudian dapat mendapatkan informasi mengenai 4 struktur, lymphocyte nuclei, stroma(sel penghubung), nuclei terjangkit kanker dan background. prosesnya dimulai dengan menginisiasi segmentasi menggunakan algoritma k-means yang kemudian mengelompokan pixel dengan intensitas yang sama dan kemudian cluster tersebut di improve dengan algoritma expectation-maximization, setelah itu mengidentifikasi kontur berdasarkan teori interaksi magnetik, setelah definisi kontur, setelah itu mencari nuclei yang tumpang tindih yang artinya terdapat kanker, ekperimen ini dilakukan menggunakan dataset kanker payudara.

// kemudian Mazo et al (cite this mf too) mengusulkan untuk menggunakan k-means untuk melakukan segmentasi area jantung menjadi 3 bagian, yakni bagian stroma (sel penghubung), area terang dan jaringan epitel (jaringan penyaring), metode ini menghasilkan akurasi 85%, kemudian Tosun mengusulkan segmentasi ini dibagi lagi menjadi 3 kategori (ungu, pink, putih) yang kemudian dibagi lagi menjadi sub kategori berdasarkan intensitas dari warna pixel yang ada, metode ini menambah akurasi dari 85% menjadi 94,89%. Nativ et al (cite this mf too) menggunakan k-means untuk melakukan segmentasi dari gambar tetesan lemak menggunakan model kontur aktif, metode ini menambah akurasi dari 86,78% menjadi 94,89%.


// == supervised
// algoritma ini menggunakan data yang telah diberikan label, sehingga data yang diberikan lebih akurat. 
// Yu dan ip (cite this mf) menggunakan pendekatan menggunakan prosedur patching dan metode yang dinamakan Spatial Markov Model (SHMM). setiap patch (sebesar 256 x 256 pixel) direpresentasikan dengan vector yang menggunakan campuran dari Gabor energy (metode yang mepresentasikan intensitas cahaya dengan vektor) dan gray-level features. dengan metode ini menambahkan akurasi dari 4% menjadi 17% lebih akurat dalam beberapa tissue dibandingkan dengan metode markov saja.


// #image("images/gabor.jpg", width: 50%)

// == feature extraction
// metode ini bergantung pada informasi yang di ekstrak dari data mentah sebelum melakukan klasifikasi. metode ini memproses gambar dan memberikan informasi mengenai fitur yang ada pada gambar, metode ini bertujuan untuk mengurangi ke kompleksitas gambar dan hanya menonjolkan informasi yang relevan yang berhubungan dengan topik yang dicari. 

// masalah yang dihadapi dalam mengekstrak informasi dari gambar adalah karakteristik dari struktur yang ada pada gambar dan informasi yang ada pada high-level yang revelan yang dalam beberapa kasus rusak karena abnormalitas dari struktur yang terjadi secara alami ataupun karena masalah dari penanganan sampel (sampel rusak), contohnya ketika nuclei ter deformasi karena perubahan sel dan abnormalitas dari jumlah sel yang ada, sel yang menghilang karena sobek, dengan sebab itu maka biasanya peneliti menggunakan metode texture descriptors atau frequency descriptor (frekuensi sel yang ada) untuk mendapatkan informasi yang revelan yang kemudian informasi tersebut dibagi menjadi beberapa jenis dimulai dari bentuk, ukuran, tekstur, fraktal, dan kombinasi dari fitur-fitur tersebut.

// Metode shallow yang diawasi bergantung pada fitur yang diambil dari data mentah sebelum melakukan klasifikasi. Metode ekstraksi fitur memproses gambar dan memberikan jumlah fitur yang wajar yang merangkum informasi gambar. Metode tersebut bertujuan untuk mengurangi dimensionalitas gambar dan menyoroti informasi yang relevan terkait dengan masalah, seperti keberadaan atau tidak adanya struktur tertentu, jumlah elemen individu, tekstur, dan bentuk struktur. Idealnya, fitur harus independen terhadap translasi, skala, dan rotasi. Tantangan utama dalam mengekstrak fitur dari HIs adalah ekstraksi karakteristik morfologis dari struktur yang ada pada gambar tersebut dan mencari representasi tingkat tinggi yang memungkinkan mengcapture informasi yang relevan untuk diagnosis medis. Karakteristik morfologis terkait dengan mengidentifikasi perubahan seluler, seperti inti yang cacat karena masalah tertentu atau fase mitotik, atau perubahan jaringan, seperti densitas atau kuantitas abnormal sel. Karakteristik morfologis terkait dengan cara patologis menganalisis HIs, mencari justifikasi spesifik untuk mengategorikan HI. Di sisi lain, fitur tingkat tinggi adalah abstraksi dari semua struktur pada HIs, tidak hanya struktur seluler. Oleh karena itu, peneliti sering mengeksploitasi deskriptor tekstur atau representasi pada domain frekuensi. Beberapa fitur telah digunakan dengan HIs, seperti bentuk, ukuran, tekstur, fraktal, atau bahkan kombinasi dari fitur-fitur tersebut. Tabel 6 merangkum artikel yang terkait dengan ekstraksi fitur.

= Aplikasi Machine Learning dalam Pathologi

== Comupter Asisted Diagnosis(CAD)
Sistem Computer Asisted Diagnosis (CAD) Menjadi topik hangat di kalangan peneliti di bidang teknologi pada ilmu pathologi, yang dapat membantu untuk mempermudah dalam mendiagnosa pasien seperti dengan memberikan akurasi dalam pendiagnosaan yang lebih tinggi dikarenakan error yang terjadi pada CAD ini bisa di training kembali agar mencapai status yang memuaskan dan dapat membantu dokter patologi.

== Content Based Image Retrival(CBIR)
Content Based Image Retrieval adalah teknik yang menganalisa gambar dan mencocokan gambar yang ada pada query, hal ini sangat berguna dalam beberapa kasus, terutama dalam mendiagnosa penyakit yang ada, memberikan sebuah label pada data dan penelitian, salah satu contohnya adalah dalam pendidikan seorang dokter patologi memberikan kuliah kepada mahasiswa dalam menganalisa kasus penyakit yang ada dalam sampel, juga sistem ini dapat membantu para profesional dalam mengenali kasus kanker yang langka.

== Penemuan Baru dalam Clinipathological Relationship
Dalam sejarahnya, banyak penemuan mengenai penyakit seperti kanker dan penyakit infeksi telah ditemukan oleh dokter dan peneliti yang meneliti dan mengobservasi penyakit tersebut secara menyeluruh, namun hal tersebut dapat memakan banyak waktu dan bisa saja memakan korban jiwa jika terlambat dalam menciptakan obatnya, salah satu contoh kasusnya adalah bakteri _H. pylori_ yang di observasi oleh patologis yang sedang melakukan tes pada jaringan gastric mucosa pada  pasien dengan penyakit gastritis 
// Weinstein JN, Collisson EA, Mills GB, Shaw KRM, Ozenberger BA, Ellrott K, et al. The 565 cancer genome atlas pan-cancer analysis project. Nat Genet 2013;45:1113–20.




//bab fucking 4 
= Masalah dalam implementasi Histopathological Image Analysis

meski memiliki banyak manfaat yang didapatkan dalam sistem implemetasi dari Histopathological Image Analysis, masih banyak kendala yang terjadi dalam implementasinya diantaranya:
== Gambar yang sangat besar
dalam pemotretan sampel menggunakan microskop itu menghasilkan gambar sebesar 10.000 x 10.000 pixel yang dapat membebani beban kalkulasi dari komputer, kemudian dalam training data dari machine learning rata-rata dalam sampelnya hanya seukuran 256 x 256 pixel jadi perbandingannya sangat jauh, sehingga pada training data nya menggunakan mematok area menjadi beberapa bagian (patches) sebesar 256 x 256 pixel, namun dengan begitu akan mengurangi informasi yang ada pada setiap area karena pada setiap sampel yang ada membutuhkan lebih dari ukuran yang dipatok tersebut karena bisa saja jaringan sehat dianggap menjadi jaringan sakit (false positive), namung dengan perkembangan sistem kalkulasi machine learning sekarang rata-rata patch size 960 x 960 pixel yang dapat berkontribusi dalam menambah akurasi dari hasil training. 
#figure( 
  image("images/gambar_perbandingan.png", width: 80%), caption:
  [perbandingan antara ukuran sampel dengan ukuran patch]
)

== Kekurangan Pelabelan Gambar
Masalah terbesar yang dialami pada training data ini adalah hanya ada sedikit sampel yang telah diberi label yang tersedia. kunci sukses dari machine learning pada dasarnya ada pengenalan gambar yang sesuai dengan labelnya / mirip. dengan besarnya gambar yang ada maka sangatlah sulit untuk memberikan label pada tingkatan patch, sehingga label yang diberikan hanya pada area yang memiliki kemungkinan tertinggi kanker (area terdeteksi kanker). untuk melabeli gambar yang ada diperlukan seseorang yang ahli dalam bidang patologi yang dapat menentukan area mana yang memiliki informasi yang berguna sehingga hal ini tidak dapat di outsource pada orang lain yang tidak memiliki pengetahuan dalam bidangnya yang biasa digunakan dalam machine learning.

== Perbedaan level informasi dalam setiap level dari pembesaran gambar

Tissue adalah sekumpulan sel yang memiliki struktur yang sama dan bekerja sama dalam melakukan aksi tertentu, dalam tubuh terdiri dari sel yang memiliki bentuk sama yang mana dalam gambar yang diambil akan memiliki informasi yang sama, namun akan berbeda jika di zoom ke area low-level yang menampilkan informasi mengenai lebih detail yang tidak di tangkap oleh pembesaran sebelumnya, sehingga pada tingkat pembesaran gambar tertentu memiliki informasi berbeda dengan satu sama lain, sehingga data nya tidak bisa di gabungkan. sehingga untuk kondisi tertentu diperlukan jumlah pembesaran yang sesuai agar informasi yang diinginkan muncul dan memberikan informasi yang tepat, hal ini dapat bergantung pada tipe penyakit yang akan di deteksi dan algoritma dari machine learning yang akan digunakan. 


== WSI gambar tekstur tak beraturan
Berbeda dengan gambar anjing atau kucing yang ada di alam, yang dapat menunjukan sebuah aturan dan struktur tertentu, gambar jaringan sel tidak memiliki struktur yang jelas, sehingga akan sulit untuk menentukan area mana saja yang memiliki kemungkinan tertinggi kanker, sehingga gambarnya mendekati tekstur daripada objet, dalam machine learning jenis CNN mengambil perbedaan dari beberapa pooling operations, yang mana dapat mengolah tekstur gambar berdasarkan augmentasi dari perbedaan.

== Variasi warna dan Artifak 
WSI diciptakan melalui banyak proses, tissue (sampel jaringan) dipotong dan disimpan di dalam slide glass, kemudian diwarnai oleh Hematoxyllindan eosin (He) yang kemudian di scan menjadi sebuah gambar, dalam beberapa proses tersebut dapat terjadi hal yang tidak diinginkan yang dapat menambah noise dalam gambar seperti ketika tissue dipotong dan disimpan di slide glass, ada kemungkinan tissue tersebut tertekuk / terlipat sehingga tidak lurus, atau terdapat debu yang hinggap di tissue pada proses tersebut, perbedaan ketebalan tissue dalam pengambilan sampel, sehingga dapat menambah noise pada sampel gambar, kemudian variasi warna dari perbedaan jumlah perwarna (He) menjadi salah satu faktor terbesar dikarenakan perbedaan kandungan warna dari beberapa manufaktur, yang kemudian hal-hal tersebut menghambat dalam machine learning. untuk saat ini dalam mengatasi masalah ini menggunakan conversi gambar ke grayscale (gambarnya menjadi hitam putih), color normalization (mengedit warna gambar menjadi serupa) dan color augmentation(menconversi gambar menjadi warna tertentu). konversi ke gambar grayscale adalah metode yang paling mudah tetapi akan menghilangkan beberapa informasi penting yang ada di dalam warna pada menjadi salah satu poin yang digunakan oleh patologis, untuk metode color normalization ini mencoba untuk menormalisasi warna dengan mengatur variasi warna nya serupa dari pixel ke pixel sehingga serupa dengan warna sampel lainnya, hal ini sangat menghabiskan banyak waktu untuk menormalisasikan semua sampel, untuk mengurangi warnu pemrosesan gambar maka dapat dilakukan proses color augmentation yang menberikan warna, saturasi, kecerahan dan kontrasi yang random sehingga semua gambar bersatu pada titik tersebut, hal ini lebih mudah daripada mencocokan warna sampel satu satu namun metode ini lebih cocok untuk sampel yang memiliki variasi warna yang sedikit (tidak terlalu jauh) agar informasi yang ada tidak terhapus oleh metode ini sehingga untuk menyelesaikan masalah ini bisa menggunakan variasi dari color normalization dan color augmentation secara bersamaan.
#figure( 
  image("images/gambar_variasi.png", width: 80%), caption: [variasi warna dan artifak]
)

// Please cite this article as: Komura D, Ishikawa S, Machine Learning Methods for Histopathological Image Analysis, Comput Struct Biotechnol J(2018), https://doi.org/10.1016/j.csbj.2018.01.001





// WSI Whole Slide Image (gambar keseluruhan sampel)
// ROI Region of Interest (daerah yang diinginkan)
//


= kesimpulan
kanker adalah momok menakutkan yang dapat menyerang siapa saja, sebagai penyakit nomor 2 yang merenggut banyak orang maka kanker sangat ditakuti oleh semua orang, hal ini diperparah oleh sulitnya pendeteksian kanker yang hanya bisa terdeteksi jika tanpa ada perawatan lebih lanjut hanya dapat terasa jika sudah parah saja, dengan perawatan kanker yang lebih baik lebih cepat sebelum menyebar ini menjadi alasan mengapa harus mendeteksi kanker secepat mungkin, untuk mendeteksi kanker sebelum ke tahap parah maka diperlukan tes-tes yang dapat memberikan informasi apakah positif terjangkit kanker ataupun tidak ada, salah satu metodenya adalah biopsi yakni metode yang mengambil sampel dari tissue (daging/ potongan area tubuh) yang kemudian diolah sedemikian rupa untuk dapat diekstrak informasinya untuk mendapatkan informasi lebih akurat mengenai kanker yang ada pada tubuh. meski lebih akurat, metode ini memakan banyak waktu dan membutuhkan tenaga kerja profesional yang dapat mengetahui gejala awal dari kanker berdasarkan informasi yang ada, maka diperlukan suatu sistem yang dapat membantu untuk mempercepat dan mempermudah dalam mendiagnosa kanker menggunakan metode ini, dengan beberapa teknik machine learning yang telah diteliti oleh banyaknya peneliti dapat disimpulkan bahwa masuknya machine learning ke sektor patologi ini sangat membantu untuk meningkatkan akurasi dan kecepatan dari diagnosa dari kanker ini, namun machine learning masih memiliki beberapa kekurangan yang terkait dengan hasil sampel dan kekurangan dari teknologi masa sekarang sehingga masih belum matang untuk penggunakan umum dan masih tertahan pada bidang pendidikan saja, namun semoga saja dengan cepatnya perkembangan machine learning saat ini dapat mempercepat adopsi dari implementasi machine learning untuk membantu dalam mendeteksi kanker agar mempercepat dan membantu dalam pendeteksian awal kanker. 