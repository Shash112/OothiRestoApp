import 'package:flutter/material.dart';
import 'package:restorant/common/widgets/button/custom_button.dart';
import 'package:restorant/common/widgets/textfield/custom_textfield.dart';
import 'package:restorant/presentation/home/screens/home_screen.dart';
import 'package:restorant/presentation/more/screens/more_screen.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({super.key});
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Reset Password"),),
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all (20.0),
              child: Column(
                children: [
                  Text(
                    "New Password",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Please enter your new password",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20,),
                  CustomTextField(hintText: "Password", controller: _passwordController, noOfLines: 1, keyboardType: TextInputType.text, obscure: true,),
                  SizedBox(height: 20,),
                  CustomTextField(hintText: "Confirm Password", controller: _confirmController, noOfLines: 1, keyboardType: TextInputType.text, obscure: true,),
                  SizedBox(height: 40,),
                  CustomButton(
                      name: "Confirm",
                      onClick: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => HomeScreen(selectedIndex: 4)
                            )
                        );
                      },
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}
