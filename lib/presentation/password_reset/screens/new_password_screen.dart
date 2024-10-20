import 'package:flutter/material.dart';
import 'package:restorant/common/widgets/button/custom_button.dart';
import 'package:restorant/common/widgets/textfield/custom_textfield.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({super.key});
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Text(
                "New Password"
              ),
              Text(
                "Please enter your new password"
              ),

              CustomTextField(hintText: "Password", controller: _passwordController, noOfLines: 1, keyboardType: TextInputType.text, obscure: true,),
              CustomTextField(hintText: "Confirm Password", controller: _confirmController, noOfLines: 1, keyboardType: TextInputType.text, obscure: true,),
              CustomButton(
                  name: "Confirm",
                  onClick: (){},
              )
            ],
          )
      ),
    );
  }
}
