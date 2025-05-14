#set text(font: "Arial", size: 12pt)
#set heading(numbering: "1")
#show heading: set text(size: 14pt, style: "oblique")

#align(center)[
Nama: Rifqi Fadil Fahrial  \
NIM: 1222646 \
UTS Struktur Data \
]

= Soal 1
Jika terdapat algoritma untuk bubble-sort sebagai berikut:
```
a = {5,4,8,9,7}
n = 4
for i <- 0 to n-1 do 
  for j <- i+1 to n do 
    if (a[i] > a[j]) then 
      t <- a[i]
      a[i] <- a[j]
      a[j] <- t 
    end if 
  end for j 
end for i
```
Tuliskan keadaan urutan data pada variabel a[] dalam setiap langkahnya

== Jawaban:

i= 0 \
#table(
  columns: (auto,auto,auto,auto,auto),
  align: center,
  stroke: (left: 1pt, right: 1pt, top: 1pt, bottom: 1pt),
  [*4*],[*5*],[8],[9],[7],
)
i= 1 \
#table(
  columns: (auto,auto,auto,auto,auto),
  align: center,
  stroke: (left: 1pt, right: 1pt, top: 1pt, bottom: 1pt),
  [4],[5],[8],[9],[7],
)

i= 2 \
#table(
  columns: (auto,auto,auto,auto,auto),
  align: center,
  stroke: (left: 1pt, right: 1pt, top: 1pt, bottom: 1pt),
  [4],[5],[*7*],[9],[*8*],
)

i= 3 \
#table(
  columns: (auto,auto,auto,auto,auto),
  align: center,
  stroke: (left: 1pt, right: 1pt, top: 1pt, bottom: 1pt),
  [4],[5],[7],[*8*],[*9*],
)

= Soal 2
Berikan gambaran umum bagaimana proses kerja dari metode pencarian dengan menggunakan binary search (quick-search)
- binary search memerlukan array yang sudah diurutkan
- kemudian membandingkan nilai terpilih dengan nilai tengah
- jika nilai terpilih sama dengan nilai tengah maka selesai
- jikai nilai terpilih lebih besar dari nilai tengah maka berfokus ke dari nilai tengah sampai nilai akhir, nilai awal sampai nilai akhir bisa dilepas atau dibiarkan
- jika nilai terpilih lebih kecil dari nilai tengah maka berfokus ke nilai awal sampai nilai tengah, nilai tengah sampai nilai akhir bisa dilepas atau dibiarkan.
- Terus sampai menemukan lokasi nilai terpilih 

= Soal 3
Jika kita mempunyai data terstruktur (Struct) untuk tanggal sbb nama_hari, no_tgl, nama_bulan,no_bulan dan tahun, dan data terstruktur (Struct) untuk karyawan sbb: NIP, nama_kar, tanggal_lahir dan golongan. Dimana tanggal_lahir merujuk pada data terstruktur tanggal diatas. (Struktur dalam struktur)
- Definisikan struktur data diatas sesuai dengan bahasa pemrograman yang anda kuasai untuk jumlah karyawan sebanyak 20 orang. (Array of sctruct)
- Tuliskan prosedur input data (memasukan data) untuk 20 orang karyawan tersebut

```zig
// menggunakan bahasa pemrograman zig
const std = @import("std");
const MAX_KARYAWAN = 20;

// Struktur Tanggal
const Tanggal = struct {
    nama_hari: [10]u8,
    no_tgl: i32,
    nama_bulan: [10]u8,
    no_bulan: i32,
    tahun: i32,
};

// Struktur Karyawan
const Karyawan = struct {
    NIP: [20]u8,
    nama_kar: [50]u8,
    tanggal_lahir: Tanggal,
    golongan: [5]u8,
};

// Array untuk menyimpan data karyawan
var daftarKaryawan: [MAX_KARYAWAN]Karyawan = undefined;

// Fungsi Input Karyawan
pub fn inputDataKaryawan() void {
    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();

    stdout.print("=== INPUT DATA KARYAWAN ===\n", .{}) catch {};

    var i: usize = 0;
    while (i < MAX_KARYAWAN) : (i += 1) {
        stdout.print("\nData Karyawan ke-{d}\n", .{i + 1}) catch {};

        // Input NIP
        stdout.print("NIP: ", .{}) catch {};
        readStringIntoBuffer(&daftarKaryawan[i].NIP, stdin) catch |err| {
            std.debug.print("Error reading NIP: {}\n", .{err});
            continue;
        };

        // Input Nama
        stdout.print("Nama: ", .{}) catch {};
        readStringIntoBuffer(&daftarKaryawan[i].nama_kar, stdin) catch |err| {
            std.debug.print("Error reading Name: {}\n", .{err});
            continue;
        };
        // Input Golongan karyawan
        stdout.print("Golongan: ", .{}) catch {};
        readStringIntoBuffer(&daftarKaryawan[i].golongan, stdin) catch |err| {
            std.debug.print("Error reading Employee Class: {}\n", .{err});
            continue;
        };

        stdout.print("==========\nInput Data Tanggal Lahir:\n", .{}) catch {};

        // Input Nama Hari
        stdout.print("Nama Hari: ", .{}) catch {};
        readStringIntoBuffer(&daftarKaryawan[i].tanggal_lahir.nama_hari, stdin) catch |err| {
            std.debug.print("Error membaca nama Hari: {}\n", .{err});
            continue;
        };

        // Input Tanggal
        stdout.print("Tanggal: ", .{}) catch {};
        daftarKaryawan[i].tanggal_lahir.no_tgl = readInt(i32, stdin) catch |err| {
            std.debug.print("Error membaca Tanggal: {}\n", .{err});
            continue;
        };

        // Input Nama Bulan
        stdout.print("Nama Bulan: ", .{}) catch {};
        readStringIntoBuffer(&daftarKaryawan[i].tanggal_lahir.nama_bulan, stdin) catch |err| {
            std.debug.print("Error Membaca nama Bulan: {}\n", .{err});
            continue;
        };

        // Input Nomor Bulan
        stdout.print("Nomor Bulan: ", .{}) catch {};
        daftarKaryawan[i].tanggal_lahir.no_bulan = readInt(i32, stdin) catch |err| {
            std.debug.print("Error membaca Nomor BUlan: {}\n", .{err});
            continue;
        };

        // Input Tahun
        stdout.print("Tahun: ", .{}) catch {};
        daftarKaryawan[i].tanggal_lahir.tahun = readInt(i32, stdin) catch |err| {
            std.debug.print("Error membaca Tahun: {}\n", .{err});
            continue;
        };
    }

    stdout.print("\nData {d} karyawan berhasil diinput!\n", .{MAX_KARYAWAN}) catch {};
}

// fungsi membaca string untuk fixed size buffer dari input
fn readStringIntoBuffer(buffer: []u8, reader: anytype) !void {
    var line_buf: [100]u8 = undefined;
    if (try reader.readUntilDelimiterOrEof(&line_buf, '\n')) |line| {
        const len = @min(line.len, buffer.len - 1);
        for (0..len) |i| {
            buffer[i] = line[i];
        }
        buffer[len] = 0; // Null terminator
    }
}

// Helper function to read an integer from stdin
// fungsi membaca integer dari input
fn readInt(comptime T: type, reader: anytype) !T {
    var line_buf: [100]u8 = undefined;
    if (try reader.readUntilDelimiterOrEof(&line_buf, '\n')) |line| {
        // Trim the line to remove any trailing newlines or carriage returns
        var trimmed_line = line;
        while (trimmed_line.len > 0 and (trimmed_line[trimmed_line.len - 1] == '\n' or trimmed_line[trimmed_line.len - 1] == '\r')) {
            trimmed_line = trimmed_line[0 .. trimmed_line.len - 1];
        }
        return std.fmt.parseInt(T, trimmed_line, 10);
    } else {
        return error.InvalidInput;
    }
}

// menjalankan program
pub fn main() void {
    inputDataKaryawan();
}

```

= Berdasarkan gambar berikut, berikan urutan perintah PUSH() dan POP() yang terjadi pada stack
berikut ini:

```
//memindahkan balok O
POP(C,4) //pop balok O
PUSH(F,2) //push balok O ke F2

//memindahkan balok p
POP(C,3) //pop balok P
PUSH(A,3) // push balok P ke A3

//memindahkan balok O ke semula
POP(F,2) // pop balok O
PUSH(C,3) // push balok O ke A1

POP(A,3) //pop balok P
PUSH(C,4) //push balok P ke C4

POP(J,5) //pop balok Y
PUSH(F,2) //push balok Y ke F2

POP(i,4) //pop balok W
PUSH(F,3) //push balok W ke F3

POP(J,4) //pop balok W
PUSH(F,4) //push balok W ke F4

POP(J,3) //pop balok R
PUSH(A,3) //push balok R ke A3

POP(I,3) //pop balok R
PUSH(A,4) //push balok R ke A4

POP(H,3) //pop balok R
PUSH(A,5) //push balok R ke A5

POP(J,2) //pop balok T
PUSH(E,3) //push balok T ke E3

POP(I,2) //pop balok T
PUSH(E,4) //push balok T ke E4

POP(H,2) //pop balok T
PUSH(E,5) //push balok T ke E5

//kembalikan R ke balok biasa
POP(A,5) //pop balok R
PUSH(J,2) //push balok R ke J2

POP(A,4) //pop balok R
PUSH(I,2) //push balok R ke I2

POP(A,3) //pop balok R
PUSH(H,2) //push balok R ke H2

//kembalikan T ke balok biasa
POP(E,5) //pop balok T
PUSH(J,3) //push balok T ke J3

POP(E,4) //pop balok T
PUSH(I,3) //push balok T ke I3

POP(E,3) //pop balok T
PUSH(H,3) //push balok T ke H3

//kembalikan balok R ke balok biasa
POP(F,4) //pop balok W
PUSH(J,4) //push balok W ke J4

POP(F,3) //pop balok W
PUSH(I,4) //push balok W ke I4

//kembalikan balok Y ke balok biasa
POP(F,2) //pop balok Y
PUSH(J,5) //push balok Y ke J5
```
#table(
  columns: (auto,auto,auto,auto,auto,auto,auto,auto,auto,auto),
  align: center,
  stroke: (left: 1pt, right: 1pt, top: 1pt, bottom: 1pt),
  [],[],[],[],[],[],[],[],[],[Y],
  [],[P],[],[],[],[],[],[],[W],[W],
  [P],[O],[P],[],[],[],[],[T],[T],[T],
  [K],[K],[K],[K],[K],[],[T],[R],[R],[R],
  [D],[D],[D],[D],[D],[D],[D],[D],[D],[D],
  [A],[B],[C],[D],[E],[F],[G],[H],[I],[J]
)



= Soal 5
Tuliskan code program dalam bahasa pemrograman yang anda kuasai untuk prosedur / fungsi
PUSH() dan POP() yang memperhatikan segala kemungkinan yang terjadi dalam programnya
misalkan stack nya penuh dst.
```zig
//ditulis dengan bahasa pemrograman zig
const std = @import("std");

pub const Stack = struct {
    data: [100]i32,
    top: i32,

    // inisialisasi stack
    pub fn init() Stack {
        return Stack{
            .data = undefined,
            .top = -1,
        };
    }

    // mengecek apakah stack kosong
    pub fn isEmpty(self: *Stack) bool {
        return self.top == -1;
    }

    // mengecek apakah stack penuh
    pub fn isFull(self: *Stack) bool {
        return self.top == 99; // MAX_SIZE - 1
    }

    // push elemen ke stack
    pub fn push(self: *Stack, value: i32) bool {
        // cek apakah stack penuh
        if (self.isFull()) {
            std.debug.print("Error: Stack overflow\n", .{});
            return false; // Push gagal
        }

        // tambah top dan tambah nilai
        self.top += 1;
        self.data[@as(usize, @intCast(self.top))] = value;
        std.debug.print("berhasil push nilai {d} ke stack\n", .{value});
        return true; // Push berhasil
    }

    // pop elemen dari stack
    pub fn pop(self: *Stack) ?i32 {
        // cek apakah stack kosong
        if (self.isEmpty()) {
            std.debug.print("Error: Stack underflow\n", .{});
            return null; // Pop gagal
        }

        // mengambil nilai atau dan mengurangi top
        const value = self.data[@as(usize, @intCast(self.top))];
        self.top -= 1;
        std.debug.print("berhasil pop nilai {d} dari stack\n", .{value});
        return value; // kembalikan value
    }
};

// demonstrasi penggunaan
pub fn demonstrateStack() void {
    var myStack = Stack.init();

    _ = myStack.push(10);
    _ = myStack.push(20);
    _ = myStack.push(30);

    if (myStack.pop()) |value| {
        std.debug.print("Popped value: {d}\n", .{value});
    }

    if (myStack.pop()) |value| {
        std.debug.print("Popped value: {d}\n", .{value});
    }

    if (myStack.pop()) |value| {
        std.debug.print("Popped value: {d}\n", .{value});
    }

    // memcoba pop dari atas
    if (myStack.pop() == null) {
        std.debug.print("tidak dapat pop dari stack kosong\n", .{});
    }
}

// memulai program
pub fn main() void {
    demonstrateStack();
}
```
