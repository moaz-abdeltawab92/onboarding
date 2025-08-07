import 'package:flutter/material.dart';
import 'package:onboarding_2/core/themes/color/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85, // 🔹 عرض الزرار تقريباً زي فيجما
      height: 56, // 🔹 ارتفاع ثابت
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // 🔹 حواف دائرية
          ),
          elevation: 0, // 🔹 بدون ظل إضافي
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600, // 🔹 خط بولد زي فيجما
          ),
        ),
      ),
    );
  }
}
