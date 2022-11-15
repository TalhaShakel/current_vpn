import 'package:flutter/material.dart';

import '../../../constants/exports.dart';

class PaymentBtn extends StatelessWidget {
  final VoidCallback? onTap;
  final String? btnText;

  const PaymentBtn({
    Key? key,
    required this.onTap,
    required this.btnText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: onTap,
      child: Container(
        height: 54.0,
        width: screenWidth(context),
        padding: EdgeInsets.only(right: padding12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
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
        child: Center(
          child: Text(
            btnText!,
            style: poppinsMedium.copyWith(
              fontSize: body14,
              color: AppColors.secondaryLightColor,
            ),
          ),
        ),
      ),
    );
  }
}
