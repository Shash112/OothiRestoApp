import 'package:flutter/material.dart';
import 'package:restorant/common/widgets/textfield/custom_textfield.dart';

import '../../dashboard/widgets/order_card.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {

  final TextEditingController _searchController = TextEditingController();
  final List orders = [
    {
      'dishName': "Chicken Tikka Pizza",
      'orderId': "X56495408",
      'qty': 1,
      'price': 180.0,
      'imageUrl': "https://www.zorabian.com/wp-content/uploads/2022/11/Make-Reshmi-Chicken-Tikka-Pizza-in-just-30-mins-%E2%80%93-Its-Friyaay.jpg",
      'status': "pending",
      'dateTime': DateTime.now()
    },
    {
      'dishName': "Burger",
      'orderId': "X56495408",
      'qty': 4,
      'price': 320.0,
      'imageUrl': "https://www.foodandwine.com/thmb/DI29Houjc_ccAtFKly0BbVsusHc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/crispy-comte-cheesburgers-FT-RECIPE0921-6166c6552b7148e8a8561f7765ddf20b.jpg",
      'status': "Preparing",
      'dateTime': DateTime.now()
    },
    {
      'dishName': "Butter Chicken",
      'orderId': "X56495408",
      'qty': 2,
      'price': 240.0,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSegneEIjn7BXdB19uN6O6G3V030wDdHJC1Sw&s",
      'status': "pending",
      'dateTime': DateTime.now()
    },
    {
      'dishName': "Chicken Biryani",
      'orderId': "X56495408",
      'qty': 2,
      'price': 300.0,
      'imageUrl': "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01.jpg",
      'status': "preparing",
      'dateTime': DateTime.now()
    },
    {
      'dishName': "Chicken Tikka Pizza",
      'orderId': "X56495408",
      'qty': 1,
      'price': 180.0,
      'imageUrl': "https://www.zorabian.com/wp-content/uploads/2022/11/Make-Reshmi-Chicken-Tikka-Pizza-in-just-30-mins-%E2%80%93-Its-Friyaay.jpg",
      'status': "pending",
      'dateTime': DateTime.now()
    },
    {
      'dishName': "Burger",
      'orderId': "X56495408",
      'qty': 4,
      'price': 320.0,
      'imageUrl': "https://www.foodandwine.com/thmb/DI29Houjc_ccAtFKly0BbVsusHc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/crispy-comte-cheesburgers-FT-RECIPE0921-6166c6552b7148e8a8561f7765ddf20b.jpg",
      'status': "Preparing",
      'dateTime': DateTime.now()
    },
    {
      'dishName': "Butter Chicken",
      'orderId': "X56495408",
      'qty': 2,
      'price': 240.0,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSegneEIjn7BXdB19uN6O6G3V030wDdHJC1Sw&s",
      'status': "pending",
      'dateTime': DateTime.now()
    },
    {
      'dishName': "Chicken Biryani",
      'orderId': "X56495408",
      'qty': 2,
      'price': 300.0,
      'imageUrl': "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01.jpg",
      'status': "preparing",
      'dateTime': DateTime.now()
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(child: CustomTextField(hintText: "Search", controller: _searchController, noOfLines: 1, keyboardType: TextInputType.text, obscure: false,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt))
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    // shrinkWrap: true,
                    itemCount: orders.length,
                    itemBuilder: (BuildContext context, int index) {
                      print(orders[index]);
                      return OrderCard(
                        dishName: orders[index]['dishName'],
                        orderId: orders[index]['orderId'],
                        qty: orders[index]['qty'],
                        price: orders[index]['price'],
                        status: orders[index]['status'],
                        imageUrl: orders[index]['imageUrl'],
                        dateTime: orders[index]['dateTime'],
                      );
                    }
                ),
              ),
            ],
          )
      ),
    );
  }
}
