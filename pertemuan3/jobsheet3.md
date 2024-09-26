# *Pertemuan 03 | Pengantar Bahasa Pemrograman Dart*

**Nama** : Mochammad Zakaro Al Fajri

**NIM** : 2241720175

**Kelas** : TI-3F

**No Absen** : 14

## Praktikum 1 | Menerapkan Control Flows ("if/else")

```dart
void main() {
    String test = "test2";
    if (test == "test1") {
        print("Test1");
    } else If (test == "test2") {
        print("Test2");
    } Else {
        print("Something else");
    }

    if (test == "test2") print("Test2 again");
}
```
### Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

Output:



Jawab : Yang terjadi adalah muncul pesan error yang disebabkan karena terdapat penulisan huruf kapital yang tidak sesuai pada else if dan else. Pada Dart, keyword if, else if, dan else semuanya harus menggunakan huruf kecil
