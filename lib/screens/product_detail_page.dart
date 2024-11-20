import 'package:flutter/material.dart';
import 'package:cutieshop/models/product_entry.dart';  // Import model ItemEntry

class ItemDetailPage extends StatelessWidget {
  final ProductEntry item;

  const ItemDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9BF),  // Match background color with previous pages
      appBar: AppBar(
        title: const Text('Ordered Detail'),
        backgroundColor: const Color.fromARGB(255, 162, 2, 90),  // Match header color with ItemEntryPage
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${item.fields.name}", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Description: ${item.fields.description}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text("Price: ${item.fields.price}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text("Stock: ${item.fields.stock}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);  // Kembali ke halaman daftar item
              },
              child: const Text('Back to Item List'),
            ),
          ],
        ),
      ),
    );
  }
}