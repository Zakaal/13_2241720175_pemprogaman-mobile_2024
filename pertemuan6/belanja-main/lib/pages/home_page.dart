import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 15000,
        img: 'assets/sugar.png',
        stock: 25,
        rating: 5),
    Item(
        name: 'Salt',
        price: 5000,
        img: 'assets/salt.png',
        stock: 10,
        rating: 4),
    Item(
      name: 'Beef Shortplate',
      price: 38000,
      img: 'assets/beef.png',
      stock: 30,
      rating: 5,
    ),
    Item(
      name: 'Nutella',
      price: 60000,
      img: 'assets/nutella.png',
      stock: 3,
      rating: 5,
    ),
    Item(
      name: 'Butter',
      price: 30000,
      img: 'assets/butter.png',
      stock: 12,
      rating: 5,
    ),
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar
    var screenWidth = MediaQuery.of(context).size.width;

    // Tentukan jumlah kolom berdasarkan lebar layar
    int crossAxisCount = screenWidth > 600 ? 3 : 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Belanja - Mart',
          style: TextStyle(
              color: Colors.white), // Mengubah warna teks menjadi putih
        ),
        backgroundColor: const Color.fromARGB(255, 4, 235, 27),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount, // Jumlah kolom disesuaikan
            crossAxisSpacing: 16.0, // Tambahkan jarak antara kolom
            mainAxisSpacing: 16.0, // Tambahkan jarak antara baris
            childAspectRatio: 0.65, // Mengatur proporsi tampilan item
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Center(
                          child: Hero(
                            tag: item.img.toString(),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                item.img.toString(),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        item.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp${item.price.toString()},00',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent,
                            ),
                          ),
                          Text(
                            'Stock: ${item.stock.toString()}',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.redAccent,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: List.generate(5, (i) {
                          return Icon(
                            Icons.star,
                            size: 16,
                            color: i < item.rating
                                ? Colors.yellow
                                : Colors.grey.shade300,
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
