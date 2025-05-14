#align(center)[
  Nama: Rifqi Fadil Fahrial \
  NIM: 1222646 \
  Tugas Struktur Data \
]
\
#align(center)[= Sorting Random Data Menggunakan Bahasa COBOL Memakai Bubble, Insertion, Selection Sort ]
untuk programnya dibuat dengan menggunakan bahasa cobol yang di compile di linux dan ada juga versi windowsnya, yang mana Cobol ini adalah bahasa yang dibuat pada tahun 1959 yang mana masih dalam sistem vacuum tube dan punch cards, yang mana kode program ini juga masih terbatasi oleh aturan punch cards dalam membuat program, yang mana 6 huruf pertama disediakan untuk nomor baris dan tanda baris (5 nomor baris 1 tanda baris) dan Huruf pertama dimulai dari huruf ke 7 dan batas maksimal huruf yang ada di satu baris adalah 80 huruf dan jika melewati itu maka program error. \
#image("images/gambar1.png", width: 50%)
Dan juga untuk fiturnya masih terbatas, seperti fitur mengambil waktu yang hanya terbatas mengambil DATE (Waktu) hanya terbatas sampai ke Detik saja dan untuk mendapatkan waktu detail sampai microseconds harus menggunakan aplikasi lain, yang mana saya mengunakan sistem Bawaan dari Linux yakni command "time"  yang mengeluarkan hasil berupa waktu yang diperlukan untuk sebuah aplikasi dieksekusi, yang mana bisa detail sampai microseconds. 
#image("images/gambar2.png", width: 80%)

#figure(
  image("images/gambar3.png", width: 70%),
  caption: "Antar Muka dari aplikasi"
)
#figure(
  image("images/gambar4.png", width: 70%),
  caption: "Aplikasi Berjalan"
)
#figure(
  image("images/gambar5.png", width: 70%),
  caption: "Hasil Waktu Sortingnya"
)

#figure(
  image("images/gambar6.png", width: 70%),
  caption: "Hasil Akhir menjalankan Sorting bubble (pilihan 2)"
)
#figure(
  image("images/gambar9.png", width: 70%),
  caption: "Random Array 5000 buah pada Bubble Sort"
)
#figure(
  image("images/gambar10.png", width: 70%),
  caption: "Hasil Bubble Sort 5000 Buahh"
)

#figure(
  image("images/gambar7.png", width: 70%),
  caption: "Aplikasi Dapat langsung dijalankan dengan Argumen langsung"
)
#figure(
  image("images/gambar8.png", width: 70%),
  caption: "Jika input array lebih dari 5 Huruf maka akan buffer overflow karena tidak dapat menampung data"
)


Dengan Bahasa pemrogramman jadul ini masih bisa melakukan Sorting Algoritm sederhana, denan waktu bubble sort yang lambat dibandingkan keduanya.

= Kode Program
== App.sh (Shell program untuk interface program Cobol)
```sh 
#! /bin/sh

resume=true

keluar() {
 read -p "Apakah anda ingin melanjutkan? (y/n) " ans
  if [ "$ans" = "y" ] || [ "$ans" = "Y" ]; then
    resume=true
  else
    resume=false
  fi
}

while [ "$resume" = "true" ];
do

clear
chafa ~/Pictures/fish.png

echo "=================="
echo "Selamat datang di aplikasi sorting"
echo "=================="
echo "1. Selection Sort"
echo "2. Bubble Sort"
echo "3. Insertion Sort"
echo "4. Perbandingan Ketiganya"

read -p "Masukan pilihan anda: " pilihan
case $pilihan in   
    1)
        echo "Anda memilih Selection Sort"
        read -p "Masukan jumlah data yang akan diurutkan: " n
        time ./cobol selection $n
        keluar
        ;;
    2)
        echo "Anda memilih Bubble Sort"
        read -p "Masukan jumlah data yang akan diurutkan: " n
         time ./cobol bubble $n
        keluar
        ;;
    3)
        echo "Anda memilih Insertion Sort"
        read -p "Masukan jumlah data yang akan diurutkan: " n
        time ./cobol insertion $n
        keluar
        ;;
    4)
      read -p "Masukan jumlah data yang akan diurutkan: " n

      echo "memulai Selection Sort"
      selection_time=$({ time ./cobol selection $n; } 2>&1 | grep real | awk '{print $2}')
      echo "Selection sort Selesai"
      echo "memulai Bubble Sort"
      bubble_time=$({ time ./cobol bubble $n; } 2>&1 | grep real | awk '{print $2}')
      echo "Bubble sort Selesai"
      echo "memulai insertion Sort"
      insertion_time=$({ time ./cobol insertion $n; } 2>&1 | grep real | awk '{print $2}')
      echo "insertion sort Selesai"

      clear
      echo "============="
      echo "==HASIL SORTING $n buah ==="
      echo "============="
      echo "Selection Sort: $selection_time"
      echo "Bubble Sort: $bubble_time"
      echo "Insertion Sort: $insertion_time"
        keluar


      ;;
    *)
        echo "Pilihan tidak tersedia"
        resume=false
        ;;
  esac
done
```

== Program Sorting Bahasa Cobol 
Program ini menerima input Args dari terminal untuk menentukan jenis sortingg dan jumlah Random array yang diurutkan, untuk jumlah array hanya sampai 99.999 (5 Huruf) karena batas jumlah huruf dan waktu sortin yang sangat lambat

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Sorting.
       AUTHOR. Rifqi Fadil Fahrial 1222646
       DATE-WRITTEN. January 21 2025.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       Working-Storage Section.
       01 ARRAY-SIZE          PIC 9(5).
       01 ARRAY.
           05 ARRAY-ELEMENT   PIC 9(5) OCCURS 99999 TIMES 
               DEPENDING ON ARRAY-SIZE.
       01 I                   PIC 9(5).
       01 J                   PIC 9(5).
       01 TEMP                PIC 9(5).
       01 SWAP-TIMES                PIC 9(5) VALUE ZERO.
       01 MIN-INDEX                PIC 9(5).
       01 SWAPPED             PIC X VALUE 'Y'.
           88  SWAPPED-YES     VALUE 'Y'.
           88  SWAPPED-NO      VALUE 'N'.
       01 RANDOM-NUM          PIC 9(5).

       01 COMMAND-LINE-ARGS   PIC X(100).
       01 ARG-LENGTH          PIC 9(5).
       01 ARG-1               PIC X(20).
       01 ARG-2               PIC X(20).
       01 SORT-TYPE           PIC X(20).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *  Menerima Argumen dari Command Line
           ACCEPT COMMAND-LINE-ARGS FROM COMMAND-LINE
           MOVE FUNCTION TRIM(COMMAND-LINE-ARGS) TO COMMAND-LINE-ARGS
           MOVE FUNCTION LENGTH(FUNCTION TRIM(COMMAND-LINE-ARGS)) 
               TO ARG-LENGTH

      *  Memisakhan Argumen menjadi ARG-1 dan ARG-2
           UNSTRING COMMAND-LINE-ARGS
               DELIMITED BY SPACE
               INTO ARG-1, ARG-2
           END-UNSTRING

           MOVE FUNCTION NUMVAL(ARG-2) TO ARRAY-SIZE

           PERFORM GENERATE-RANDOM-ARRAY.

           PERFORM DISPLAY-ARRAY.
           DISPLAY "MULAI MENSORTING".

      *    Memilih Sorting Algorithm
           EVALUATE ARG-1
               WHEN "bubble"
                 PERFORM BUBBLE-SORT
                 MOVE "Bubble Sort" TO SORT-TYPE
               WHEN "selection"
                 PERFORM SELECTION-SORT
                 MOVE "SELECTION SORT" TO SORT-TYPE
               WHEN "insertion"
                 PERFORM INSERTION-SORT
                  MOVE "INSERTION SORT" TO SORT-TYPE
               WHEN OTHER
                   DISPLAY "Invalid sorting algorithm. Use 'bubble' "
      -             "(bubble sort), 'selection' (selection sort), or "
      -             "'insertion' (insertion sort)."
                   STOP RUN
           END-EVALUATE.

           PERFORM DISPLAY-ARRAY.
           DISPLAY "SELESAI MENSORTING MENGGUNAKAN ALGORITMA " 
      -     SORT-TYPE.

           STOP RUN.

       GENERATE-RANDOM-ARRAY.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > ARRAY-SIZE
               COMPUTE RANDOM-NUM =
                   FUNCTION RANDOM * 99999
               MOVE RANDOM-NUM TO ARRAY-ELEMENT(I)
           END-PERFORM.

       DISPLAY-ARRAY.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > ARRAY-SIZE
               DISPLAY "Element " I ": " ARRAY-ELEMENT(I)
           END-PERFORM.
       BUBBLE-SORT.
           PERFORM UNTIL SWAPPED-NO
               MOVE 'N' TO SWAPPED
               PERFORM VARYING I FROM 1 BY 1 UNTIL I >= ARRAY-SIZE
                   IF ARRAY-ELEMENT(I) > ARRAY-ELEMENT(I + 1)
                       MOVE ARRAY-ELEMENT(I) TO TEMP
                       MOVE ARRAY-ELEMENT(I + 1) TO ARRAY-ELEMENT(I)
                       MOVE TEMP TO ARRAY-ELEMENT(I + 1)
                       MOVE 'Y' TO SWAPPED
                   END-IF
               END-PERFORM
           END-PERFORM.

       SELECTION-SORT.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I = ARRAY-SIZE
               MOVE I TO MIN-INDEX
               COMPUTE TEMP = I + 1
               PERFORM VARYING J FROM TEMP BY 1 UNTIL J > ARRAY-SIZE
                   IF ARRAY-ELEMENT(J) < ARRAY-ELEMENT(MIN-INDEX)
                       MOVE J TO MIN-INDEX
                   END-IF
               END-PERFORM
               IF MIN-INDEX NOT = I
                   MOVE ARRAY-ELEMENT(I) TO TEMP
                   MOVE ARRAY-ELEMENT(MIN-INDEX) TO ARRAY-ELEMENT(I)
                   MOVE TEMP TO ARRAY-ELEMENT(MIN-INDEX)
               END-IF
           END-PERFORM.


       INSERTION-SORT.
           PERFORM VARYING I FROM 2 BY 1 UNTIL I > ARRAY-SIZE
             MOVE ARRAY-ELEMENT(I) TO TEMP
             COMPUTE J = I - 1
             PERFORM UNTIL J < 1 OR ARRAY-ELEMENT(J) <= TEMP
                MOVE ARRAY-ELEMENT(J) TO ARRAY-ELEMENT(J + 1)
                SUBTRACT 1 FROM J
             END-PERFORM
             MOVE TEMP TO ARRAY-ELEMENT(J + 1)
       END-PERFORM.

       END PROGRAM Sorting.

```
#show link: underline
== Menjalankan Program
Untuk mengcompile program diatas perlu memperlukan compiler "GnuCobol" yang dapat mengcompile bahasa COBOL ke machine code agar dapat dieksekusi, 
Link Downloadsnya #link("https://gnucobol.sourceforge.io/") \
Atau Source Code langsung (Ada file Exe nya) #link("https://yadi.sk/d/os9EpIl1Eeg1Zg")\


