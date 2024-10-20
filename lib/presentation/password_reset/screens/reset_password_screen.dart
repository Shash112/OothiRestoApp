import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restorant/common/widgets/button/custom_button.dart';
import 'package:restorant/common/widgets/textfield/custom_textfield.dart';
import 'package:restorant/presentation/password_reset/screens/otp_verification_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Reset Password"),),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Reset Password",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Please enter your email to receive a link to create a new password via email",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40,),
              CustomTextField(hintText: "Email", controller: _emailController, noOfLines: 1, keyboardType: TextInputType.text, obscure: false,),
              SizedBox(height: 20,),
              CustomButton(name: "Send", onClick: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => OtpVerificationScreen()
                    )
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}
