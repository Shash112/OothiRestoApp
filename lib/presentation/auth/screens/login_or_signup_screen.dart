import 'package:flutter/material.dart';
import 'package:restorant/common/utils/screen_size.dart';
import 'package:restorant/core/configs/assets/app_assets.dart';
import 'package:restorant/core/configs/theme/app_colors.dart';
import 'package:restorant/core/constants/app_constants.dart';
import 'package:restorant/presentation/auth/screens/login_screen.dart';
import 'package:restorant/presentation/auth/screens/signup_screen.dart';

class LoginOrSignUpScreen extends StatelessWidget {
  const LoginOrSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
              clipper: BottomArcClipper(),
              child: Container(
                color: AppColors.primary,
                height: ScreenSize.height * 0.45,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: (ScreenSize.height * 0.45) - 80),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 75,
                    child: Image.asset(AppAssets.appLogo),
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    AppConstants.brandName,
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                      fontFamily: 'PlayfairDisplay',

                    ),
                  ),
                  const Text(
                    "Food Delivery",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.textSecondary
                    ),
                  ),
        
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
                    child: Text(
                      "Discover the best foods from over 1,000+ restaurants and fast delivery to your doorstep",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.textSecondary
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => const LoginScreen()
                          )
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: AppColors.primary,
                      minimumSize: const Size(double.infinity, 60)
                    ),
                    child: const Text("Login"),
                  ),
                  const SizedBox(height: 30,),
                  OutlinedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => const SignUpScreen()
                          )
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: AppColors.primary),
                      shape: const StadiumBorder(),
                      minimumSize: const Size(double.infinity, 60)
                    ),
                    child: const Text("Create an Account"),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

class BottomArcClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 20);


    path.quadraticBezierTo(10, size.height + 5, 50, size.height);
    path.lineTo((size.width/2) - 150, size.height);

    path.quadraticBezierTo((size.width/2)-110, size.height + 5, size.width/2 - 100, size.height -20);


    path.quadraticBezierTo((size.width/2) - 100 , size.height - 100, size.width/2, size.height - 115);
    path.quadraticBezierTo((size.width/2) + 100 , size.height - 100, (size.width/2) + 100, size.height - 20);

    path.quadraticBezierTo((size.width/2)+110, size.height + 5, size.width/2 + 150, size.height);
    path.lineTo(size.width - 50, size.height);
    path.quadraticBezierTo(size.width-10, size.height + 5, size.width, size.height -20);


    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}