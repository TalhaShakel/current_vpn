import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/exports.dart';

class CardField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? labelText;
  final String? hintText;
  final List<TextInputFormatter>? inputFormatter;

  const CardField({
    Key? key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    required this.labelText,
    required this.hintText,
    this.inputFormatter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      width: screenWidth(context),
      padding: EdgeInsets.only(left: padding16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        gradient: const LinearGradient(
          colors: [
            AppColors.blueWhiteColor,
            AppColors.greyWhiteColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: const [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 15.0,
            offset: Offset(8.0, 8.0),
          ),
        ],
        border: Border.all(
          color: AppColors.whiteColor,
          width: 2.0,
        ),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        inputFormatters: inputFormatter,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: labelText,
          hintText: hintText,
          labelStyle: poppinsRegular.copyWith(
            fontSize: body12,
            color: AppColors.secondaryLightColor,
          ),
          hintStyle: poppinsMedium.copyWith(
            fontSize: body12,
            color: AppColors.secondaryLightColor,
          ),
        ),
      ),
    );
  }
}
