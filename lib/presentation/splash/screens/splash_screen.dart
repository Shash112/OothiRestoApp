import 'package:flutter/material.dart';
import 'package:restorant/common/utils/screen_size.dart';
import 'package:restorant/core/configs/assets/app_assets.dart';
import 'package:restorant/presentation/auth/screens/login_or_signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    redirect();
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (BuildContext context) => const LoginOrSignUpScreen()
      )
    );
  }

  @override
  Widget build(BuildContext context) {

    ScreenSize.init(context);

    return Scaffold(
      body: Center(
        child: Image.asset(AppAssets.appLogo),
      ),
    );
  }
}
