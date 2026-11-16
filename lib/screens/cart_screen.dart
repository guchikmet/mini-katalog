// lib/screens/cart_screen.dart
import 'package:flutter/material.dart';
import '../data/mock_data.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: globalCart.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_outlined, size: 80, color: Colors.grey),
                  SizedBox(height: 16),
                  Text('Your cart is empty', style: TextStyle(fontSize: 18, color: Colors.grey)),
                ],
              ),
            )
          : ListView.builder(
              itemCount: globalCart.length,
              itemBuilder: (context, index) {
                final item = globalCart[index];
                return ListTile(
                  leading: Image.network(item.image, width: 50, height: 50),
                  title: Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(item.tagline),
                  trailing: Text(item.price, style: TextStyle(fontSize: 16)),
                );
              },
            ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
          onPressed: () {},
          child: Text('Checkout', style: TextStyle(color: Colors.white, fontSize: 18)),
        ),
      ),
    );
  }
}