import 'package:flutter/material.dart';
import 'package:restorant/common/widgets/textfield/custom_textfield.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {

  final TextEditingController _searchController = TextEditingController();
  final List orders = [
    {
      "orderId": "001",
      "customerName": "John Doe",
      "productName": "Smartphone",
      "quantity": 2,
      "price": 500,
      "orderDate": "2024-10-19",
      "status": "Shipped",
      "totalAmount": 1000,
    },
    {
      "orderId": "002",
      "customerName": "Jane Smith",
      "productName": "Laptop",
      "quantity": 1,
      "price": 1200,
      "orderDate": "2024-10-18",
      "status": "Delivered",
      "totalAmount": 1200,
    },
    {
      "orderId": "003",
      "customerName": "Robert Johnson",
      "productName": "Wireless Mouse",
      "quantity": 3,
      "price": 20,
      "orderDate": "2024-10-17",
      "status": "Pending",
      "totalAmount": 60,
    },
    {
      "orderId": "004",
      "customerName": "Emily Davis",
      "productName": "Headphones",
      "quantity": 2,
      "price": 150,
      "orderDate": "2024-10-19",
      "status": "Canceled",
      "totalAmount": 300,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: CustomTextField(hintText: "Search", controller: _searchController, noOfLines: 1, keyboardType: TextInputType.text, obscure: false,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt))
                ],
              ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Column(
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: const [
              //             SizedBox(width: 100, child: Text('Order ID', textAlign: TextAlign.center)),
              //             SizedBox(width: 100, child: Text('Product Name', textAlign: TextAlign.center)),
              //             SizedBox(width: 100, child: Text('Quantity', textAlign: TextAlign.center)),
              //             SizedBox(width: 100, child: Text('Order Date', textAlign: TextAlign.center)),
              //             SizedBox(width: 100, child: Text('Status', textAlign: TextAlign.center)),
              //             SizedBox(width: 100, child: Text('Total Amount', textAlign: TextAlign.center)),
              //           ],
              //         ),
              //       ),
              //       Expanded(
              //         child: ListView.builder(
              //           itemCount: orders.length,
              //             itemBuilder: (context, index) {
              //             final order = orders[index];
              //             return Padding(
              //               padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              //               child: Card(
              //                 child: Padding(
              //                   padding: const EdgeInsets.all(8.0),
              //                   child: Row(
              //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //                     children: [
              //                       SizedBox(width: 100, child: Text(order['orderId'], textAlign: TextAlign.center)),
              //                       // Expanded(child: Text(order['customerName'], textAlign: TextAlign.center)),
              //                       SizedBox(width: 100, child: Text(order['productName'], textAlign: TextAlign.center)),
              //                       SizedBox(width: 100, child: Text(order['quantity'].toString(), textAlign: TextAlign.center)),
              //                       // Expanded(child: Text('\$${order['price'].toString()}', textAlign: TextAlign.center)),
              //                       SizedBox(width: 100, child: Text(order['orderDate'], textAlign: TextAlign.center)),
              //                       SizedBox(width: 100, child: Text(order['status'], textAlign: TextAlign.center)),
              //                       SizedBox(width: 100, child: Text('\$${order['totalAmount'].toString()}', textAlign: TextAlign.center)),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             );
              //             }
              //         ),
              //       ),
              //     ],
              //   ),
              // )

            ],
          )
      ),
    );
  }
}
