#set text(lang: "id")
#align(center)[
= TUGAS 1 
== 
=== Mata Kuliah: Struktur Data
=== Dosen: Uro Abdulrohim. M.T
\
Nama: Rifqi Fadil Fahrial \
NIM: 1222646 \ 
]

= Latihan 1 Menggunakan Library kalkulator

=== kalku.cpp
```cpp
#include <iostream>
#include "kalkulator.h"

static int luas_persegi_panjang() {
  TKalkulator kalkulator;
  int panjang = kalkulator.get_bilangan1();
  int lebar = kalkulator.get_bilangan2();
  int hasil = panjang *lebar;

  return  hasil;

}

int main() {
    TKalkulator kalkulator;
    kalkulator.set_bilangan1(15);
    kalkulator.set_bilangan2(10);
    
    std::cout << "Bilangan 1: " << kalkulator.get_bilangan1() << std::endl;
    std::cout << "Bilangan 2: " << kalkulator.get_bilangan2() << std::endl;
    std::cout << "Hasil penjumlahan: " << kalkulator.penjumlahan() << std::endl;
    std::cout << "Hasil pengurangan: " << kalkulator.pengurangan() << std::endl;
    std::cout << "Hasil Perkalian:" << kalkulator.perkalian() << std::endl;
    std::cout << "Hasil pembagianbulat" << kalkulator.pembagianbulat() << std::endl;
    std::cout << "Hasil Pembagian Sisa" << kalkulator.pembagiansisa() << std::endl;

    // bikin perhitungan luas persegi
    std::cout << "perhitungan luas persegi panjang" << luas_persegi_panjang() <<std::endl;
    
    return 0;
}

```

=== kalkulator.cpp
```cpp
#include "kalkulator.h"

void TKalkulator::set_bilangan1(int opr1) {
    this->opr1 = opr1;
}

void TKalkulator::set_bilangan2(int opr2) {
    this->opr2 = opr2;
}

int TKalkulator::get_bilangan1() {
    return this->opr1;
}

int TKalkulator::get_bilangan2() {
    return this->opr2;
}

int TKalkulator::get_hasil() {
    return this->hasil;
}

int TKalkulator::penjumlahan() {
    return this->hasil = opr1 + opr2;
}

int TKalkulator::pengurangan() {
    return this->hasil = opr1 - opr2;
}

int TKalkulator::perkalian() {
    return this->hasil = opr1 * opr2;
}

int TKalkulator::pembagianbulat() {
    return this->hasil = opr1 / opr2;
}

int TKalkulator::pembagiansisa() {
    return this->hasil = opr1 % opr2;
}
```

=== kalkulator.h 
```cpp 
#ifndef KALKULATOR_H
#define KALKULATOR_H

class TKalkulator {
private:
    int opr1, opr2, hasil;

public:
    void set_bilangan1(int opr1);
    void set_bilangan2(int opr2);
    int get_bilangan1();
    int get_bilangan2();
    int get_hasil();
    int penjumlahan();
    int pengurangan();
    int perkalian();
    int pembagianbulat();
    int pembagiansisa();
};

#endif // KALK_H 
```

== Output program 
#align(center)[
  #image("gambar3.png")
]

= latihan 2 gambar Tnotebook

#align(center)[
  #image("gambar.png")
]

= Latihan 3 Implementasi kelas Tnotebook


== notebook.cpp
```cpp
#include "notebook.h"
#include <iostream>

void TNotebook::set_lebarLayar(std::string l) {
    this->layar = l;
}

std::string TNotebook::get_LebarLayar() {
    return this->layar;
}

int TNotebook::spek_Notebook() {
    view_spek(); // Memanggil method dari class parent
    std::cout << "Lebar Layar: " << this->layar << std::endl;
    std::cout << "=========================" << std::endl;
    return 0;
} 
```
== notebook.h
```cpp
#ifndef NOTEBOOK_H
#define NOTEBOOK_H

#include "komputer.h"
#include <string>

class TNotebook : public TKomputer {
private:
    std::string layar;

public:
    // Setter method
    void set_lebarLayar(std::string l);
    
    // Getter method
    std::string get_LebarLayar();
    
    // Additional method
    int spek_Notebook();
};

#endif 
```

== komputer.cpp
```cpp
#include "komputer.h"
#include <iostream>

void TKomputer::set_merek(std::string m) {
    this->merek = m;
}

void TKomputer::set_prosesor(std::string p) {
    this->prosesor = p;
}

void TKomputer::set_memori(std::string mm) {
    this->memori = mm;
}

std::string TKomputer::get_merek() {
    return this->merek;
}

std::string TKomputer::get_prosesor() {
    return this->prosesor;
}

std::string TKomputer::get_memori() {
    return this->memori;
}

int TKomputer::view_spek() {
    std::cout << "=== Spesifikasi Komputer ===" << std::endl;
    std::cout << "Merek: " << this->merek << std::endl;
    std::cout << "Prosesor: " << this->prosesor << std::endl;
    std::cout << "Memori: " << this->memori << std::endl;
    return 0;
}

int TKomputer::data_spek() {
    return 0;
} 

```

== komputer.h
```cpp
#ifndef KOMPUTER_H
#define KOMPUTER_H

#include <string>

class TKomputer {
private:
    std::string merek;
    std::string prosesor;
    std::string memori;

public:
    // Setter methods
    void set_merek(std::string m);
    void set_prosesor(std::string p);
    void set_memori(std::string mm);

    // Getter methods
    std::string get_merek();
    std::string get_prosesor();
    std::string get_memori();

    // Additional methods
    int view_spek();
    int data_spek();
};

#endif 
```

== main.cpp
```cpp
#include <iostream>
#include "notebook.h"

using namespace std;

int main() {
    TNotebook laptop1, laptop2;
    
    // Set spesifikasi untuk laptop pertama
    cout << "Setting laptop pertama..." << endl;
    laptop1.set_merek("Lenovo ThinkPad");
    laptop1.set_prosesor("Intel Core i7-1165G7");
    laptop1.set_memori("16GB DDR4");
    laptop1.set_lebarLayar("14 inch");
    
    // Set spesifikasi untuk laptop kedua
    cout << "\nSetting laptop kedua..." << endl;
    laptop2.set_merek("MacBook Pro");
    laptop2.set_prosesor("Apple M1 Pro");
    laptop2.set_memori("32GB Unified");
    laptop2.set_lebarLayar("16 inch");
    
    // Menampilkan spesifikasi kedua laptop
    cout << "\nSpesifikasi Laptop 1:" << endl;
    laptop1.spek_Notebook();
    
    cout << "\nSpesifikasi Laptop 2:" << endl;
    laptop2.spek_Notebook();
    
    // Contoh mengakses data individual
    cout << "\nMengakses data individual Laptop 1:" << endl;
    cout << "Merek: " << laptop1.get_merek() << endl;
    cout << "Ukuran Layar: " << laptop1.get_LebarLayar() << endl;
    
    return 0;
} 
```

== Output programnya 
#align(center)[
  #image("gambar2.png")
]

