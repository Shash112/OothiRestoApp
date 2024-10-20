import 'package:flutter/material.dart';
import 'package:restorant/presentation/password_reset/screens/reset_password_screen.dart';
import 'package:restorant/presentation/profile/screens/profile_screen.dart';

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
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ProfileScreen()
                )
            );
          },
        ),
        SizedBox(height: 20,),
        ListTile(
          leading: Icon(Icons.password),
          title: Text("Reset Password"),
          trailing: Icon(Icons.navigate_next),
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ResetPasswordScreen()
                )
            );
          },
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
