import 'package:current_vpn/widgets/back_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/exports.dart';
import '../components/menu_btn.dart';

class ReferFriendScreen extends StatelessWidget {
  const ReferFriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackImageWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,

        /// body
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ///appbar
                  CustomAppBar(
                    onBackTap: () {
                      Get.back();
                    },
                    titleText: 'Refer Friends',
                  ),
                  SizedBox(height: screenHeight(context) * 0.1),

                  ///
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Get a friend to subscribe, and\n',
                            style: poppinsRegular.copyWith(
                              fontSize: body12,
                              color: AppColors.tintLightColor,
                            ),
                          ),
                          TextSpan(
                            text: 'you both get ',
                            style: poppinsRegular.copyWith(
                              fontSize: body12,
                              color: AppColors.tintLightColor,
                            ),
                          ),
                          TextSpan(
                            text: '30 Days without payment!',
                            style: poppinsRegular.copyWith(
                              fontSize: body12,
                              color: AppColors.gradientTwoColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight(context) * 0.1),

                  /// menu btns
                  MenuButton(
                    onTap: () {},
                    text: 'ShareIt',
                    iconPath: AppImages.shareIt,
                  ),
                  SizedBox(height: screenHeight(context) * 0.016),

                  /// menu btns
                  MenuButton(
                    onTap: () {},
                    text: 'Copy Link',
                    iconPath: AppImages.copyLink,
                  ),
                  SizedBox(height: screenHeight(context) * 0.016),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
