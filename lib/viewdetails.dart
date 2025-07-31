import 'package:flutter/material.dart';
import 'shopcatalog.dart';

class ViewDetails extends StatelessWidget {
  final Product product;
  const ViewDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // appBar: AppBar(title: Text('Product Details'));
    return Scaffold(
      
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Image.network(product.image, width: 300, height: 350),
            SizedBox(height: 10),
            Text(product.name, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            SizedBox(height: 10),
            Text("Price: ${product.price}", style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
            SizedBox(height: 15),
            Text(product.desc,style: TextStyle(fontSize: 16),textAlign: TextAlign.center),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Added to cart')),
                );
              },
              child: Text("ADD TO CART"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context
                );
              },
              child: Text("BACK"),
            ),
          ],
        ),
      ),
    );
  }
}
