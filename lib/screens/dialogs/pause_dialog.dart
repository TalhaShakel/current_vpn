import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/exports.dart';

class PauseDialog extends StatelessWidget {
  const PauseDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(AppImages.pauseIllus),

        ///
        SizedBox(height: screenHeight(context) * 0.01),
        Text(
          'Do you want to pause?',
          style: poppinsRegular.copyWith(
            fontSize: body18,
            color: AppColors.secondaryColor,
          ),
        ),

        ///
        SizedBox(height: screenHeight(context) * 0.01),
        Text(
          'After cancellation, you cannot have '
              '\nunlimited data usage and No-Ads service \nafter the '
              'current biling cycle ends.',
          textAlign: TextAlign.center,
          style: poppinsRegular.copyWith(
            fontSize: body12,
            color: AppColors.tintLightColor,
          ),
        ),

        ///
        SizedBox(height: screenHeight(context) * 0.02),
        CustomGradientButton(
          btnText: 'Not Yet',
          onTap: () {
            Get.back();
          },
        ),

        ///
        SizedBox(height: screenHeight(context) * 0.016),
        CustomGradientButton(
          btnText: 'Continue to pause',
          onTap: () {
            Get.back();
          },
        ),
      ],
    );
  }
}
