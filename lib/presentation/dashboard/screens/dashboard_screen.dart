import 'package:flutter/material.dart';
import 'package:restorant/common/utils/screen_size.dart';
import 'package:restorant/presentation/dashboard/widgets/order_card.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

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
      'dishName': "Chicken Biryani",
      'orderId': "X56495408",
      'qty': 2,
      'price': 300.0,
      'imageUrl': "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01.jpg",
      'status': "preparing",
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
    },{
      'dishName': "Chicken Biryani",
      'orderId': "X56495408",
      'qty': 2,
      'price': 300.0,
      'imageUrl': "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01.jpg",
      'status': "preparing",
      'dateTime': DateTime.now()
    },{
      'dishName': "Chicken Biryani",
      'orderId': "X56495408",
      'qty': 2,
      'price': 300.0,
      'imageUrl': "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01.jpg",
      'status': "preparing",
      'dateTime': DateTime.now()
    },{
      'dishName': "Chicken Biryani",
      'orderId': "X56495408",
      'qty': 2,
      'price': 300.0,
      'imageUrl': "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01.jpg",
      'status': "preparing",
      'dateTime': DateTime.now()
    },{
      'dishName': "Chicken Biryani",
      'orderId': "X56495408",
      'qty': 2,
      'price': 300.0,
      'imageUrl': "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01.jpg",
      'status': "preparing",
      'dateTime': DateTime.now()
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: double.infinity,
                // color: Colors.grey,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text(
                    "Todays overview",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        color: Colors.blue,
                        child: SizedBox(
                          height: ScreenSize.height * 0.12,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "18",
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("Total Orders")
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Card(
                        color: Colors.green,
                        child: SizedBox(
                          height: ScreenSize.height * 0.12,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "\$180",
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("Revenue")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              // Text("New Orders"),
              // ListView.builder(
              //     shrinkWrap: true,
              //     itemCount: orders.length,
              //     itemBuilder: (BuildContext context, int index) {
              //       return ListTile(
              //         onTap: () {},
              //         leading: Text('${orders[index]['id']}'),
              //         trailing: Text('${orders[index]['time']}'),
              //         title: Text(orders[index]['item']),
              //       );
              //     }
              // ),
              Container(
                height: 40,
                width: double.infinity,
                // color: Colors.grey,
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Orders",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    TextButton(onPressed: (){}, child: Text("View all"))
                  ],
                ),
              ),
              // ListTile(
              //   // onTap: () {},
              //   leading: SizedBox(width: ScreenSize.width * 0.2, child: Text('Id')),
              //   trailing: SizedBox(width: ScreenSize.width * 0.2, child: Text('Time')),
              //   title: SizedBox(width: ScreenSize.width * 0.6, child: Text('Item')),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ListView.builder(
                    shrinkWrap: true,
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
          ),
        )
    );
  }


}
