import 'package:flutter/material.dart';
import 'package:restorant/core/configs/theme/app_colors.dart';
import 'package:restorant/presentation/auth/screens/signup_screen.dart';
import 'package:restorant/presentation/intro/screens/intro_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Add your details to login",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 40),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Your Email",
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => IntroScreen()
                        )
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                      "Login",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                TextButton(
                  onPressed: (){},
                  child: const Text(
                      "Forgot your password?",
                    style: TextStyle(
                      color: AppColors.textPrimary
                    ),
                  )
                ),
                const SizedBox(height: 40,),
                const Text(
                  "or Login with",
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 16
                  ),
                ),
                const SizedBox(height: 20,),
                ElevatedButton.icon(
                    onPressed: (){},
                    icon: const Icon(Icons.facebook, color: Colors.white,),
                    label: const Text(
                      "Login with facebook",
                    ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                ElevatedButton.icon(
                    onPressed: (){},
                    icon: const Icon(Icons.g_mobiledata, color: Colors.white,),
                    label: const Text(
                        "Login with google"
                    ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an Account?",
                      style: TextStyle(color: AppColors.textPrimary),
                    ),
                    TextButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => const SignUpScreen()
                              )
                          );
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: AppColors.primary
                          ),
                        ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
