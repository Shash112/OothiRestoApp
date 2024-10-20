import 'package:flutter/material.dart';
import 'package:restorant/common/widgets/textfield/custom_textfield.dart';
import 'package:restorant/presentation/menu/screens/menu_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  final List<Map<String, dynamic>> categories = [
    {
      "title": "Food",
      "items": 120,
      "image": "https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg",
    },
    {
      "title": "Beverages",
      "items": 220,
      "image": "https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg",
    },
    {
      "title": "Desserts",
      "items": 155,
      "image": "https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg",
    },
    {
      "title": "Promotions",
      "items": 25,
      "image": "https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              final category = categories[index];
              return categoryCard(
                  image: category['image'],
                  title: category['title'],
                  itemCount: category['items'],
              );
            }
        ),
      ),
    );
  }

  Widget categoryCard({ required String image, required String title, required int itemCount }) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => MenuScreen()
            )
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Circular Image
                ClipOval(
                  child: Image.network(
                    image,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16),
                // Title and Item Count
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '$itemCount items',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                // Arrow Icon
                Icon(Icons.arrow_forward_ios, color: Colors.orange),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
