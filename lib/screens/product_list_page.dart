import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_detail_page.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  static const List<Product> products = [
    Product(
      name: 'Pixel',
      tileText: 'pixel 1',
      description: 'Pixel is the most featureful phone ever',
      price: 800,
      rating: 1,
      color: Colors.blue,
    ),
    Product(
      name: 'Laptop',
      tileText: 'laptop',
      description: 'Laptop is most productive development tool',
      price: 2000,
      rating: 2,
      color: Colors.green,
    ),
    Product(
      name: 'Tablet',
      tileText: 'tablet',
      description: 'Tablet is the most useful device ever for meeting',
      price: 1500,
      rating: 3,
      color: Colors.lime,
    ),
    Product(
      name: 'Pendrive',
      tileText: 'pen drive',
      description: 'iPhone is the stylish phone ever',
      price: 100,
      rating: 2,
      color: Colors.deepOrange,
    ),
    Product(
      name: 'Floppy Drive',
      tileText: 'floppy',
      description: 'Floppy drive is useful rescue storage medium',
      price: 20,
      rating: 1,
      color: Colors.teal,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Navigation'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(product: product),
                ),
              );
            },
            child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
            child: SizedBox(
              height: 90,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    color: product.color,
                    alignment: Alignment.center,
                    child: Text(
                      product.tileText,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            product.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            product.description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 11),
                          ),
                          Text(
                            'Price: ${product.price}',
                            style: const TextStyle(fontSize: 11),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              3,
                              (i) => Icon(
                                i < product.rating
                                    ? Icons.star
                                    : Icons.star_border,
                                color: Colors.red,
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
          );
        },
      ),
    );
  }
}