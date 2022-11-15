import 'package:flutter/material.dart';

import '../../../constants/exports.dart';

class SwitchButton extends StatelessWidget {
  const SwitchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: screenHeight(context) * 0.18,
        width: screenHeight(context) * 0.18,
        padding: EdgeInsets.all(padding12),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              AppColors.whiteOneColor,
              AppColors.whiteTwoColor,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowColor,
              blurRadius: 70.0,
              offset: Offset(20, 36),
            ),
            BoxShadow(
              color: AppColors.shadowOneColor,
              blurRadius: 70.0,
              offset: Offset(-20, -36),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(screenHeight(context) * 0.036),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                AppColors.shadowOneColor,
                AppColors.shadowTwoColor,
              ],
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.shadowOneColor,
            ),
            child: Center(
              child: Image.asset(AppIcons.switchIcon),
            ),
          ),
        ),
      ),
    );
  }
}
