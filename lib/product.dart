import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),

      body: const Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text('Product Page'),
            SizedBox(height: 60,),
            btnDetail(contex),
          ],
        ),
      ),
    );
  }

  Widget btnDetail(BuildContext contex){
    return TextButton(
      onPressed: () => Navigator.push(
        contex, 
        MaterialPageRoute(builder: (contex) => ProductDetail())),
      child: const Text('Product Detail'));
  }
}