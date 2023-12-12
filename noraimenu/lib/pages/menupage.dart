import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:noraimenu/components/button.dart';
import 'package:noraimenu/models/food.dart';
//import 'package:noraimenu/theme/colors.dart';
import '../components/food_tile.dart';
import 'food_material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  //food menu
  List foodmenu = [
    Food(
        name: "Tikka Masala",
        price: "15",
        imagePath: "lib/images/indian_cuisine.jpg",
        rating: "9"),
    Food(
        name: "Chicken Teryaki",
        price: "16",
        imagePath: "lib/images/japanese_cuisine.jpg",
        rating: "8.5"),
    Food(
        name: "Kuro maki",
        price: "9",
        imagePath: "lib/images/chinese_cuisine.jpg",
        rating: "9"),
    Food(
        name: "Green curry",
        price: "15",
        imagePath: "lib/images/thai_cuisine.jpg",
        rating: "9"),
  ];

  //navigate to food item detials page

  void navigateToFoodDetails(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailsPage(
          food: foodmenu[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Saida',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //promo banner
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 124, 2, 2),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //promo message
                    const Text(
                      'Get 32% Promo',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      //style: GoogleFonts.dmSerifDisplay(
                      // fontSize: 20,
                      //color: Colors.white,
                      //),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    //redeem button
                    MyButton(text: 'Redeem', onTap: () {}),
                  ],
                ),

                //image
                Image.asset(
                  'lib/images/sushi.png',
                  height: 100,
                )
              ],
            ),
          ),

          const SizedBox(height: 25),

          //search bar

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Search here..",
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),
          //menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Food Menu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodmenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodmenu[index],
                onTap: () => navigateToFoodDetails(index),
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          //popular food

          Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 5),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //image
                Row(
                  children: [
                    Image.asset(
                      'lib/images/nigirituna.png',
                      height: 60,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    // name and price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //name
                        Text(
                          "Salmon Eggs",
                          style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        //pirce

                        Text(
                          '\$4.5',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ],
                ),

                //heart
                Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
