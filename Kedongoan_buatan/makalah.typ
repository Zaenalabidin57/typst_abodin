#set page(margin: (
  top: 3cm,
  bottom: 2cm,
  x: 1.5cm,
))

#set text(lang: "id",
  font:"Codelia",
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


Kanker dapat terjadi secara biologis karena suatus kegagalan pada proses apoptosis sehingga dapat menyebabkan sel kanker yang mampu bertahan hidup secara otonom dalam tubuh kemudian kanker bermutasi sampai dapat memiliki kemampuan untuk menghindari  sel _imunokompeten_ termasuk sel T sitoksis(TCL) dan sel _Natural Killer_(NKsel) yang memiliki kemampuan untuk menghancurkan sel yang bermutasi.

kanker dapat diketahui berdasarkan pertumbuhan sel yang tidak terkendali dan dapat menuju ke daerah oragan lain yang lebih jauh (metastasis) yang bermula dengan menyebar pada organ asal kemudian menyebar ke organ terdekat dan kemudian menuju ke organ lain. Metastatis penyakit kanker menuju ke organ lain bisa melalui berbagai cara, yaitu aliran darah (hematogen) dan kelenjar limfe (limfogen). 
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
//faktor faktor
Faktor faktor yang mempengaruhi terjadinya kanker itu dapat berasal dari manusia sendiri (endoge) atau faktor dari luar (eksogen). Faktor-faktor endogen dapat berupa gen regulator/ pengatur sel, hormon, sistem imun maupun psikis dan dapat juga berasal dari herediter / keturunan. Sedangkan faktor eksoken lebih kompleks lagi karena sangat banyak variabel yang dapat berkontribusi seperti faktor biologi berupa bakteri, virus, jamur; faktor kimia bisa berasal dari makanan, minuman, bahan kosmetik, bahan pembersih/ pencuci, udara, sanitasi lingkungan; sedangkan faktor fisis seperti elektronik, radiasi; walaupun radiasi juga dibagi menjadi beberapa jenis, contoh radiasi sinar matahari, sinar X, radiasi alat-alat radioaktif dll.
//https://www.bing.com/ck/a?!&&p=a280621be4b39d407476caed02598bea4c94629da3a2cbd2c57e3f408abd8bb0JmltdHM9MTczMTQ1NjAwMA&ptn=3&ver=2&hsh=4&fclid=361ea560-29bd-6018-1a84-b04728a661ce&psq=Dr.+Theresia+Indah+Budhy%2c+drg.%2c+M.+Kes.%2c+Sp.PMM+(K).+2019.+Mengapa+Terjadi+Kanker.+Pusat+Penerbitan+dan+Percetakan+UNAIR%2c+Jawa+TImur.+Airlangga+University+Press.&u=a1aHR0cHM6Ly9yZXBvc2l0b3J5LnVuYWlyLmFjLmlkLzkxODg3LzYvQnVrdUthbmtlcjAxLnBkZg&ntb=1

