import 'package:flutter/material.dart';
import 'package:restorant/common/widgets/textfield/custom_textfield.dart';
import 'package:restorant/presentation/manage_item/screens/add_item.dart';
import 'package:restorant/presentation/menu/screens/item_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  final TextEditingController _searchController = TextEditingController();

  final List<Map<String, dynamic>> desserts = [
    {
      "title": "French Apple Pie",
      "time": "5 Minute",
      "rating": 4.5,
      "category": "Desserts",
      "image": "https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg",
    },
    {
      "title": "Dark Chocolate Cake",
      "time": "8 Minute",
      "rating": 4.8,
      "category": "Cakes",
      "image": "https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg",
    },
    {
      "title": "Street Shake",
      "time": "3 Minute",
      "rating": 4.2,
      "category": "Cafe Beverages",
      "image": "https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg",
    },
    {
      "title": "Fudgy Chewy Brownies",
      "time": "9 Minute",
      "rating": 4.7,
      "category": "Desserts",
      "image": "https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg",
    },
    {
      "title": "Fudgy Chewy Brownies",
      "time": "9 Minute",
      "rating": 4.7,
      "category": "Desserts",
      "image": "https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg",
    },
    {
      "title": "Fudgy Chewy Brownies",
      "time": "9 Minute",
      "rating": 4.7,
      "category": "Desserts",
      "image": "https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Menu Items"),),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => AddItem()
                )
            );
          },
          shape: CircleBorder(),
          child: Icon(Icons.add, size: 42,),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: CustomTextField(hintText: "Search", controller: _searchController, noOfLines: 1, keyboardType: TextInputType.text, obscure: false,)
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt), iconSize: 32,)
                ],
              ),
              SizedBox(height: 10,),
              Expanded(
                child: ListView.builder(
                  itemCount: desserts.length,
                  itemBuilder: (context, index) {
                    final dessert = desserts[index];
                    return InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => ItemScreen()
                            )
                        );
                      },
                      child: DessertCard(
                        title: dessert['title'],
                        time: dessert['time'],
                        rating: dessert['rating'],
                        category: dessert['category'],
                        image: dessert['image'],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget DessertCard({ required String title, required double rating, required String time, required String category, required String image }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          // Background image with rounded corners
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              image,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          // Overlay content
          Positioned(
            left: 15,
            bottom: 15,
            right: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Dessert title
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    // Rating stars and value
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    SizedBox(width: 4),
                    Text(
                      '$rating',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 10),
                    // Time required
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 10),
                    // Category of the dessert
                    Text(
                      category,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
