import 'package:current_vpn/screens/home/components/home_app_bar.dart';
import 'package:current_vpn/screens/home/components/premium_box.dart';
import 'package:current_vpn/screens/home/components/select_loaction_box.dart';
import 'package:current_vpn/screens/home/components/select_mode_box.dart';
import 'package:current_vpn/screens/home/components/switch_button.dart';
import 'package:current_vpn/widgets/back_image_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// app bar
                SizedBox(height: screenHeight(context) * 0.04),
                const HomeAppBar(),

                /// premium service box
                SizedBox(height: screenHeight(context) * 0.03),
                const PremiumBox(),

                /// connect texts
                SizedBox(height: screenHeight(context) * 0.03),
                Center(
                  child: Text(
                    'Connect',
                    style: poppinsSemiBold.copyWith(
                      fontSize: body28,
                      color: AppColors.gradientTwoColor,
                    ),
                  ),
                ),

                /// switch btn
                SizedBox(height: screenHeight(context) * 0.05),
                const SwitchButton(),

                /// mode
                SizedBox(height: screenHeight(context) * 0.06),
                const SelectModelBox(),

                /// select location text
                SizedBox(height: screenHeight(context) * 0.06),
                Center(
                  child: Text(
                    'Select Location',
                    style: poppinsRegular.copyWith(
                      fontSize: body16,
                      color: AppColors.tintLightColor,
                    ),
                  ),
                ),

                /// select location box
                SizedBox(height: screenHeight(context) * 0.02),
                const SelectLocationBox(),

                /// terms and policy
                SizedBox(height: screenHeight(context) * 0.05),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'By clicking on the button above, you agree to our ',
                        style: poppinsRegular.copyWith(
                          fontSize: body12,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms of service',
                        style: poppinsRegular.copyWith(
                          fontSize: body12,
                          color: AppColors.gradientTwoColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: ' & ',
                        style: poppinsRegular.copyWith(
                          fontSize: body12,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: poppinsRegular.copyWith(
                          fontSize: body12,
                          color: AppColors.gradientTwoColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
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
