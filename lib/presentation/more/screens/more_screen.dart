import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("Profile"),
          trailing: Icon(Icons.navigate_next),
          onTap: (){},
        ),
        SizedBox(height: 20,),
        ListTile(
          leading: Icon(Icons.info),
          title: Text("About"),
          trailing: Icon(Icons.navigate_next),
          onTap: (){},
        )
      ],
    );
  }
}
