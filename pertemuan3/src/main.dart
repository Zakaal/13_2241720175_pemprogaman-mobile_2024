void main() {
  String namaLengkap = "Mochammad Zakaro Al Fajri";
  String nim = "2241720175";

  print(
      "Bilangan prima dari 0 hingga 201:\n----------------------------------------------------------");

  for (int x = 2; x <= 201; x++) {
    bool isPrime = true;

    for (int y = 2; y <= x / 2; y++) {
      if (x % y == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      print("Bilangan prima: $x");
      print("Nama : $namaLengkap,\nNIM : $nim");
      print("----------------------------------------------------------");
    }
  }
}
