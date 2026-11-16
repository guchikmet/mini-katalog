// lib/screens/detail_screen.dart
import 'package:flutter/material.dart';
import '../models/product.dart';
import '../data/mock_data.dart';
import 'cart_screen.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  // Sayfalar arası veri taşıma (Route Arguments)
  DetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartScreen()),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(product.image, height: 250),
              ),
              SizedBox(height: 20),
              Text(product.name, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              Text(product.tagline, style: TextStyle(fontSize: 16, color: Colors.grey)),
              SizedBox(height: 20),
              Text('Description', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(product.description, style: TextStyle(fontSize: 16, height: 1.5)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
          onPressed: () {
            globalCart.add(product); // Sepete ekleme simülasyonu
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('${product.name} sepete eklendi!')),
            );
          },
          child: Text('Add to Cart - ${product.price}', style: TextStyle(color: Colors.white, fontSize: 18)),
        ),
      ),
    );
  }
}