import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:restorant/common/utils/screen_size.dart';
import 'package:restorant/presentation/manage_item/screens/edit_item.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {

  final Map<String, dynamic> desserts = {
      "title": "French Apple Pie",
      "time": "5 Minute",
      "rating": 4,
      "price": 120.00,
      "category": "Desserts",
      "image": "https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg",
    };
  
  @override
  Widget build(BuildContext context) {
    double dec = 0.0;
    if(desserts['rating'].runtimeType == double){
      dec = desserts['rating'] - desserts['rating'].toInt();
    }
    print(dec);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Item Screen"),
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          children: [
            SpeedDialChild(
              child: Icon(Icons.edit),
              label: 'Edit',
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => EditItem()
                    )
                );
              }
            ),
            SpeedDialChild(
                child: Icon(Icons.delete),
                label: 'delete',
                onTap: (){}
            ),

          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                  "https://img.freepik.com/free-photo/fresh-pasta-with-hearty-bolognese-parmesan-cheese-generated-by-ai_188544-9469.jpg?semt=ais_hybrid",
                width: ScreenSize.width,
                height: ScreenSize.height * 0.4,
                fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      desserts['title'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [...List.generate(desserts['rating'].toInt(), (index) => Icon(Icons.star)), (dec != 0) ? Icon(Icons.star_half) : Icon(Icons.star_border)],
                            ),
                            Text('${desserts['rating']} Star ratings')
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Rs. ${desserts['price']}"
                            )
                          ],
                        )
                      ],
                    ),
                    Text(
                        "Description",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                    Text(
                      'here the dish descriptions are shown'
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}

