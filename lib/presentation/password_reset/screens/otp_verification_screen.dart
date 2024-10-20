import 'package:flutter/material.dart';
import 'package:restorant/common/widgets/button/custom_button.dart';
import 'package:restorant/common/widgets/textfield/custom_textfield.dart';
import 'package:restorant/core/configs/theme/app_colors.dart';
import 'package:restorant/presentation/password_reset/screens/new_password_screen.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({super.key});
  final List<TextEditingController> _otpControllers = [TextEditingController(), TextEditingController(), TextEditingController(), TextEditingController(),];

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
                "We have sent an OTP to your email",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              Text("Please check your email xxx@gmail.com to continue reset your password", textAlign: TextAlign.center,),
              SizedBox(height: 40,),
              TextField(),
              OTPInputField(),
              SizedBox(height: 20,),
              CustomButton(
                name: 'Verify',
                onClick: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => NewPasswordScreen()
                      )
                  );
                },
              ),
              SizedBox(height: 20,),
              Text(
                "Didn't Received?"
              ),
              TextButton(
                  onPressed: () {

                  },
                  child: Text(
                      "Click Here",
                    style: TextStyle(
                      color: AppColors.primary
                    ),
                  )
              )
            ],

          ),
        ),
      ),
    );
  }

}

class OTPInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      maxLength: 6,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 24,
        letterSpacing: 8.0,
      ),
      decoration: InputDecoration(
        hintText: 'Enter OTP',
        counterText: "",
        // Removes the character counter
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Colors.blue),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      ),
    );
  }
}
