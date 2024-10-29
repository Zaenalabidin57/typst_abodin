#let heading(doc) = [
  #set text(size: 16pt, weight: "bold")[#doc.title],
  #set text(font: "Andale Mono", size: 12pt)[#doc.author],
]
#set text(font: "Codelia Ligatures")
#set text(size: 12pt)
#set par(leading: 1.5em, first-line-indent: 1em)


/* bagian template desuwa*/

#align(center)[
#text(font: ("Times New Roman"), size: 26pt, weight: "bold")[ Tugas Perorangan]\
#text(font: ("Times New Roman"), size: 20pt, weight: "bold")[Tugas anu]\
\
\
\
#figure(
  image("images/logo.png",width: 60%)
)
\
\
\
 #text(font: "Times New Roman", size: 15pt)[
Mata Kuliah: anu \
Dosen Pengampu: anu
 ]
\
\
\
\
#set par(leading: 1em)
 #text(font: "Times New Roman", size: 20pt, weight: "bold")[
Teknik Informatika\
Fakultas Informatika\
STMIK Bandung\
2024
 ]
]
#pagebreak(to: "even")
#show: heading
Kelapa Muda