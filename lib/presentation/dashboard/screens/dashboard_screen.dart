import 'package:flutter/material.dart';
import 'package:restorant/common/utils/screen_size.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  final List orders = [
    {"id": 01, "item": "Burger", "time": 10},
    {"id": 02, "item": "Burger", "time": 10},
    {"id": 03, "item": "Burger", "time": 10},
    {"id": 04, "item": "Burger", "time": 10},
    {"id": 05, "item": "Burger", "time": 10},
    {"id": 01, "item": "Burger", "time": 10},
    {"id": 02, "item": "Burger", "time": 10},
    {"id": 03, "item": "Burger", "time": 10},
    {"id": 04, "item": "Burger", "time": 10},
    {"id": 05, "item": "Burger", "time": 10},
    {"id": 01, "item": "Burger", "time": 10},
    {"id": 02, "item": "Burger", "time": 10},
    {"id": 03, "item": "Burger", "time": 10},
    {"id": 04, "item": "Burger", "time": 10},
    {"id": 05, "item": "Burger", "time": 10},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Todays overview",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        color: Colors.blue,
                        child: SizedBox(
                          height: ScreenSize.height * 0.15,
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
                    Expanded(
                      child: Card(
                        color: Colors.green,
                        child: SizedBox(
                          height: ScreenSize.height * 0.15,
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
                Row(
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
                // ListTile(
                //   // onTap: () {},
                //   leading: SizedBox(width: ScreenSize.width * 0.2, child: Text('Id')),
                //   trailing: SizedBox(width: ScreenSize.width * 0.2, child: Text('Time')),
                //   title: SizedBox(width: ScreenSize.width * 0.6, child: Text('Item')),
                // ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: orders.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        onTap: () {},
                        leading: Text('${orders[index]['id']}'),
                        trailing: Text('${orders[index]['time']}'),
                        title: Text(orders[index]['item']),
                      );
                    }
                ),
              ],
            ),
          ),
        )
    );
  }


}
