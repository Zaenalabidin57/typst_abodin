#set text(lang:"id")
#set text(font:"CodeliaLigatures Nerd Font")
#align(center)[
  = Tugas membuat Contoh tata bahasa
  === Mata Kuliah : Teori Bahasa dan Automata
  === Dosen: Khoirida Aelani, M.T.
  \
  Nama: Rifqi Fadil Fahrial \
  NIM: 1222646 \
]

Buatlah Masing-Masing 5 buah contoh tata bahasa yang memnuhi aturan tata bahasa: \

=== Unrestricted
Bahasa bebas tanpa batasan \
+ Abc --> def
+ Cda --> Abd
+ A -> B
+ C -> Def
+ D -> Abc

=== Context Sensitive
Panjang string pada ruas kiri <= dari panjang ruas kanan (|a| <= |b| ).\
+ A -> Bcd
+ CDe -> efGh
+ AD -> bcf
+ ab -> CEF
+ dB -> ABC

=== Context Free
Batasannya bertambah satu lagi dengan ruas kiri haruslah tepat satu simbol variabel / Non Terminal. \
+ B -> CDeF
+ A -> CdBf
+ C -> Def
+ D -> Abc
+ E -> BcdF

=== Regular 
Batasannya bertambah dengan ruas kanan memiliki sebuah simbol variabel yang terletak di bagian paling kanan. \

+ A -> Bcd
+ C -> eD
+ D -> abcF
+ E -> A
+ F -> abcdE
