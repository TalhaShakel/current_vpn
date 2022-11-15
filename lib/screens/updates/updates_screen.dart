import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/exports.dart';
import '../../widgets/back_image_widget.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({Key? key}) : super(key: key);

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
                  titleText: 'Updates',
                ),
                SizedBox(height: screenHeight(context) * 0.15),

                ///
                Image.asset(AppImages.appLogo,
                  height: screenHeight(context) * 0.13,
                ),
                SizedBox(height: screenHeight(context) * 0.03),

                /// texts
                Text('You are using the latest version',
                  style: poppinsRegular.copyWith(
                    fontSize: body14,
                    color: AppColors.tintLightColor,
                  ),
                ),
                SizedBox(height: screenHeight(context) * 0.01),

                /// texts
                Text('Current Version: 2.3.4',
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
