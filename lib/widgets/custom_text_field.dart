import 'package:flutter/material.dart';

import '../constants/exports.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final double? textSize;
  final double? hintTextSize;
  final Color? textColor;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final int? minLines;
  final int? maxLines;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.textColor = AppColors.blackColor,
    this.textSize,
    this.hintTextSize,
    this.suffixIcon,
    this.onChanged,
    this.minLines = 1,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText!,
      onChanged: onChanged,
      minLines: minLines,
      maxLines: maxLines,
      cursorColor: AppColors.gradientOneColor,
      style: poppinsRegular.copyWith(
        fontSize: body14,
        color: AppColors.secondaryColor,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: poppinsRegular.copyWith(
          fontSize: body14,
          color: AppColors.fieldTextColor,
        ),
        suffixIcon: suffixIcon ?? const SizedBox(),
        filled: true,
        fillColor: Colors.transparent,
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.fieldTextColor,
            width: 1.0,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.fieldTextColor,
            width: 1.0,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.gradientOneColor,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}