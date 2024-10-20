import 'package:flutter/material.dart';
import 'package:restorant/common/widgets/button/custom_button.dart';
import 'package:restorant/common/widgets/textfield/custom_textfield.dart';
import 'package:restorant/core/configs/theme/app_colors.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({super.key});
  final List<TextEditingController> _otpControllers = [TextEditingController(), TextEditingController(), TextEditingController(), TextEditingController(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "We have sent an OTP to your email",
            ),
            Text("Please check your email xxx@gmail.com to continue reset your password"),
            Row(
              children: List.generate(4, (index) => Expanded(child: CustomTextField(hintText: "*", controller: _otpControllers[index], noOfLines: 1, keyboardType: TextInputType.text, obscure: false,)),),
            ),
            CustomButton(name: 'Verify', onClick: (){},),
            Text(
              "Didn't Received?"
            ),
            TextButton(
                onPressed: () {},
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
    );
  }
}
