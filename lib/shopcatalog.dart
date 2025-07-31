import 'package:flutter/material.dart';
import 'viewdetails.dart';


class Product {
  final String name;
  final String image;
  final String price;
  final String desc;

  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.desc,
  });
}


List<Product> products = [
  Product(name: "Shawarma", image:"https://images.unsplash.com/photo-1662116765994-1e4200c43589?w=700&h=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hhd2FybWF8ZW58MHx8MHx8fDA%3D", price: "120RS",desc: "Shawarma is a Middle Eastern wrap made with thin slices of marinated meat, served in pita bread with veggies and sauces."),
  Product(name: "Choco Pie", image:"https://images.unsplash.com/photo-1644250818097-35aaf31c9568?w=700&h=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y2hvY29waWV8ZW58MHx8MHx8fDA%3D", price: "80RS",desc: "Choco Pie is a chocolate-coated snack made of two fluffy cake layers with marshmallow filling."),
  Product(name: "Bread Sandwich", image:"https://images.unsplash.com/photo-1700937244987-92488ab2ada5?w=700&h=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YnJlYWQlMjBzYW5kd2ljaHxlbnwwfHwwfHx8MA%3D%3D", price: "50RS",desc: "Bread sandwich includes vegetables, cheese, eggs, or meat between two slices of bread."),
  Product(name: "Cake", image:"https://plus.unsplash.com/premium_photo-1713447395823-2e0b40b75a89?w=700&h=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2FrZXxlbnwwfHwwfHx8MA%3D%3D", price: "300RS",desc: "Cake is a baked dessert made with flour, sugar, eggs, and flavorings like vanilla or chocolate."),
  Product(name: "Biriyani", image:"https://images.unsplash.com/photo-1589302168068-964664d93dc0?w=700&h=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmlyaXlhbml8ZW58MHx8MHx8fDA%3D", price: "60RS",desc: "Rice is a staple grain food, commonly boiled or steamed and paired with curry or meat."),
  Product(name: "Pasta", image:"https://images.unsplash.com/photo-1621996346565-e3dbc646d9a9?w=700&h=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGFzdGF8ZW58MHx8MHx8fDA%3D", price: "100RS",desc: "Pasta is an Italian dish served with sauces like tomato or cheese, and toppings like vegetables or meat."),
  Product(name: "Combo Meal", image:"https://plus.unsplash.com/premium_photo-1683657860508-e0dd4d2fbd2a?w=700&h=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGNvbWJvJTIwbWVhbHxlbnwwfHwwfHx8MA%3D%3D", price: "110RS",desc: "Combo meal includes a main dish, side item, and a drink — served as a single affordable package."),
];

// ShopCatalogue screen
class ShopCatalogue extends StatelessWidget {
  const ShopCatalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shopping Catalogue')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.network(product.image, width: 80, height: 80),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 5),
                        Text("Price: ${product.price}", style: const TextStyle(fontSize: 14)),
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ViewDetails(product: product),
                      ),
                    );
                  },
                  child: const Text("View Details"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}



