import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/exports.dart';
import '../../widgets/back_image_widget.dart';

class BetaTesterScreen extends StatelessWidget {
  const BetaTesterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackImageWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,

        /// body
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///appbar
                CustomAppBar(
                  onBackTap: () {
                    Get.back();
                  },
                  titleText: 'Beta Tester',
                ),
                SizedBox(height: screenHeight(context) * 0.15),

                ///
                Image.asset(AppImages.appLogo,
                  height: screenHeight(context) * 0.13,
                ),
                SizedBox(height: screenHeight(context) * 0.03),

                /// texts
                Text('No beta version is detected. you can '
                    '\njoin our official testing group via the '
                    '\nlink below for earlier experience.',
                  textAlign: TextAlign.center,
                  style: poppinsRegular.copyWith(
                    fontSize: body12,
                    color: AppColors.secondaryLightColor,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
