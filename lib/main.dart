import 'package:flutter/material.dart';
import 'viewdetails.dart';


class Product {
  final String name;
  final String imagePath;
  final String price;
  final String desc;

  Product({required this.name, required this.imagePath, required this.price,required this.desc});
}





void main() {
  runApp(const MyApp());
}

List<Product> products = [
  Product(name: "Shawarma", imagePath: "assets/images/menu_2.png", price: "120RS",desc: "Shawarma is a Middle Eastern wrap made with thin slices of marinated meat (like chicken or beef), cooked on a vertical rotisserie and served in pita bread with veggies and sauces. It's juicy, flavorful, and perfect for a quick, tasty meal."),
  Product(name: "Choco Pie", imagePath: "assets/images/menu_3.png", price: "80RS",desc: "Choco Pie is a soft, chocolate-coated snack made of two fluffy cake layers with a sweet marshmallow filling in between. It’s light, spongy, and perfect for satisfying sweet cravings. Popular worldwide, it’s often enjoyed as a treat with tea or coffee"),
  Product(name: "Bread Sandwich", imagePath: "assets/images/menu_4.png", price: "50RS",desc: "Bread sandwich is a simple and versatile snack made by placing a variety of fillings—like vegetables, cheese, eggs, or meat—between two slices of bread. It can be served cold or toasted, and customized with sauces and spices. Perfect for a quick meal or snack anytime!"),
  Product(name: "cake", imagePath: "assets/images/menu_5.png", price: "300RS",desc: "Cake is a sweet, baked dessert made from a mixture of flour, sugar, eggs, and butter, often flavored with ingredients like vanilla, chocolate, or fruit. It’s soft, moist, and commonly enjoyed during celebrations like birthdays and weddings, topped with frosting, cream, or decorations."),
  Product(name: "Rice", imagePath: "assets/images/menu_6.png", price: "60RS",desc: "Rice is a staple food made from small, starchy grains, commonly boiled or steamed. It’s mild in flavor and pairs well with curries, vegetables, or meat. Popular worldwide, rice is a key part of daily meals in many cultures, especially in Asia."),
  Product(name: "Pasta", imagePath: "assets/images/menu_7.png", price: "100RS",desc: "Pasta is an Italian dish made from wheat flour dough, shaped into various forms like spaghetti, penne, or macaroni, and typically boiled. It’s often served with sauces like tomato, cheese, or pesto, and can include vegetables, meat, or seafood. Tasty, filling, and endlessly customizable!"),
  Product(name: "Combo Meal", imagePath: "assets/images/menu_8.png", price: "110RS",desc: "Combo meal is a set of food items served together as a single meal, usually including a main dish (like a burger or sandwich), a side (like fries), and a drink. It's convenient, budget-friendly, and great for a quick, complete meal."),
];


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp  (
    home: Scaffold(
      appBar: AppBar(title: Text('Shopping Catalogue')),
      
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Padding(
  padding: const EdgeInsets.all(20),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Image.asset(product.imagePath, width: 80, height: 80),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(product.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text("Price: ${product.price}", style: TextStyle(fontSize: 14)),
            ],
          ),
        ],
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ViewDetails(product: product)),
          );
        },
        child: Text("View Details"),
      ),
    ],
  ),
);
        },
      ),
    ),
  );
  }
}
