import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restorant/common/widgets/button/custom_button.dart';
import 'package:restorant/common/widgets/textfield/custom_textfield.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Text(
                "Reset Password",
              ),
              Text(
                "Please enter your email to receive a link to create a new password via email",
              ),
              CustomTextField(hintText: "Email", controller: _emailController, noOfLines: 1, keyboardType: TextInputType.text, obscure: false,),
              CustomButton(name: "Send", onClick: (){},)
            ],
          )
      ),
    );
  }
}
