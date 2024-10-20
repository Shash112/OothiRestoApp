import 'package:flutter/material.dart';
import 'package:restorant/common/utils/screen_size.dart';
import 'package:restorant/presentation/order_details/screens/order_details_screen.dart';

class OrderCard extends StatefulWidget {
  final String dishName;
  final String orderId;
  final int qty;
  final double price;
  final String status;
  final DateTime dateTime;
  final String imageUrl;

  const OrderCard({super.key, required this.dishName, required this.orderId, required this.qty, required this.price, required this.status, required this.imageUrl, required this.dateTime});

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => OrderDetailsScreens()
            )
        );
      },
      child: Card(
        // margin: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                  widget.imageUrl,
                width: ScreenSize.width * 0.2,
                fit: BoxFit.cover,
              ),
              // SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.dishName),
                    Text(widget.orderId),
                    Row(
                      children: [
                        Text('${widget.dateTime.hour}:${widget.dateTime.minute}'),
                        SizedBox(width: 10,),
                        Icon(Icons.shopping_bag, size: 14,),
                        Text('x${widget.qty}'),
                        SizedBox(width: 10,),
                        Text('Rs.${widget.price}'),
                      ],
                    ),
                  ],
                ),
              ),

              Spacer(),
              widget.status == 'pending' ?
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.check)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.dangerous_outlined)),
                ],
              ) : Text(widget.status),
            ],
          ),
        ),
      ),
    );
  }
}
