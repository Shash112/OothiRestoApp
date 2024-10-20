import 'package:flutter/material.dart';

import '../../../core/configs/theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final Function()? onClick;
  const CustomButton({super.key, required this.name, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        minimumSize: const Size(double.infinity, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
