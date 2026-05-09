import 'package:flutter/material.dart';

class BarisKolom extends StatelessWidget {
  const BarisKolom({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data for products
    final List<Map<String, String>> products = [
      {
        "name": "Betadine 30ml",
        "unit": "Botol",
        "price": "Rp 25.000",
        "image": "https://images.unsplash.com/photo-1584308666744-24d5c474f2ae?q=80&w=400&auto=format&fit=crop",
      },
      {
        "name": "Paracetamol 500mg",
        "unit": "Strip",
        "price": "Rp 10.000",
        "image": "https://images.unsplash.com/photo-1585435557343-3b092031a831?q=80&w=400&auto=format&fit=crop",
      },
      {
        "name": "Vitamin C 1000mg",
        "unit": "Tube",
        "price": "Rp 45.000",
        "image": "https://images.unsplash.com/photo-1616671285442-78d9104fa28e?q=80&w=400&auto=format&fit=crop",
      },
      {
        "name": "Handsanitizer",
        "unit": "Botol",
        "price": "Rp 15.000",
        "image": "https://images.unsplash.com/photo-1584467541268-b040f83be3fd?q=80&w=400&auto=format&fit=crop",
      },
      {
        "name": "Masker Medis",
        "unit": "Box",
        "price": "Rp 35.000",
        "image": "https://images.unsplash.com/photo-1586941963564-4794e210310d?q=80&w=400&auto=format&fit=crop",
      },
      {
        "name": "Thermometer",
        "unit": "Pcs",
        "price": "Rp 120.000",
        "image": "https://images.unsplash.com/photo-1584036561566-baf245f967dc?q=80&w=400&auto=format&fit=crop",
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text(
          "Store",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.72,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductCard(
            name: product["name"]!,
            unit: product["unit"]!,
            price: product["price"]!,
            imageUrl: product["image"]!,
          );
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final String unit;
  final String price;
  final String imageUrl;

  const ProductCard({
    super.key,
    required this.name,
    required this.unit,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Image
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F3F5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.medication, size: 50, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                // Product Name
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A1F2B),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                // Product Unit
                Text(
                  unit,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 12),
                // Price
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF007BE0),
                  ),
                ),
              ],
            ),
          ),
          // Add Button
          Positioned(
            bottom: 12,
            right: 12,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFF007BE0),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF007BE0).withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
