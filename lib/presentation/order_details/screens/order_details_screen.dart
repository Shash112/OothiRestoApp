import 'package:flutter/material.dart';
import 'package:restorant/common/utils/screen_size.dart';
import 'package:restorant/common/widgets/button/custom_button.dart';

class OrderDetailsScreens extends StatefulWidget {
  const OrderDetailsScreens({super.key});

  @override
  State<OrderDetailsScreens> createState() => _OrderDetailsScreensState();
}

class _OrderDetailsScreensState extends State<OrderDetailsScreens> {
  final status = true;

  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = ["Hi", "Hello"];

  // Function to handle sending a message
  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _messages.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Order Details"),
              bottom: TabBar(
                  tabs: [
                    Tab(text: 'Order Details',),
                    Tab(text: 'Chat',)
                  ]
              ),
            ),
            body: TabBarView(
              children: [
                _orderDetailsTab(context),
                _chatTab(context)
              ],
            )
          ),
        )
    );
  }

  Widget _orderDetailsTab(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          child: Image.network(
            "https://www.zorabian.com/wp-content/uploads/2022/11/Make-Reshmi-Chicken-Tikka-Pizza-in-just-30-mins-%E2%80%93-Its-Friyaay.jpg",
            height: ScreenSize.height * 0.4,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: ScreenSize.height * 0.4,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tandoori Chicken Pizza",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: ScreenSize.width-40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order Id: x938833095",
                          ),
                          Text('Order Time: ${DateTime.now().hour}:${DateTime.now().minute}'),
                          Text("Qty: 1"),
                        ],
                      ),
                      Text(
                          "Rs: 150",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 20,
            left: 10,
            right: 10,
            child: status ?
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                      name: "Accept",
                      onClick: (){}
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: CustomButton(
                      name: "Reject",
                      onClick: (){}
                  ),
                )
              ],
            ) : CustomButton(name: "Completed", onClick: (){})
        )
      ],
    );
  }

  Widget _chatTab(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            reverse: true, // List will be reversed so newest messages appear at the bottom
            itemCount: _messages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      _messages[_messages.length - 1 - index],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Type a message...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: _sendMessage,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
