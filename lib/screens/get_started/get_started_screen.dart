import 'package:current_vpn/screens/get_started/components/point_row.dart';
import 'package:current_vpn/screens/home/home_screen.dart';
import 'package:current_vpn/widgets/back_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/exports.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

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
                SizedBox(height: screenHeight(context) * 0.1),

                /// image
                Center(
                  child: Image.asset(
                    AppImages.appLogo,
                    height: screenHeight(context) * 0.1,
                  ),
                ),
                SizedBox(height: screenHeight(context) * 0.06),

                /// points
                const PointRow(
                  iconPath: AppIcons.withoiutPaymentIcon,
                  text: '30 Days without any payment',
                ),
                const PointRow(
                  iconPath: AppIcons.malwareIcon,
                  text: 'Malware / Phishing Protection',
                ),
                const PointRow(
                  iconPath: AppIcons.trackerIcon,
                  text: 'Tracker and Add Blocker',
                ),
                const PointRow(
                  iconPath: AppIcons.vpnProtocolIcon,
                  text: 'Multiple VPN Protocols',
                ),
                const PointRow(
                  iconPath: AppIcons.smartVpnIcon,
                  text: 'Smart VPN',
                ),
                const PointRow(
                  iconPath: AppIcons.ramServerIcon,
                  text: 'Ram-Only Servers',
                ),
                const PointRow(
                  iconPath: AppIcons.strictnoPolicyIcon,
                  text: 'Strict No Logs Policy',
                ),
                const PointRow(
                  iconPath: AppIcons.noLogsIcon,
                  text: 'No Activity Logs',
                ),
                SizedBox(height: screenHeight(context) * 0.06),

                /// btn
                CustomGradientButton(
                  btnText: 'Get Started',
                  onTap: () {
                    Get.to(HomeScreen());
                  },
                ),
                SizedBox(height: screenHeight(context) * 0.024),

                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'By clicking on the button above, you agree to our ',
                        style: poppinsRegular.copyWith(
                          fontSize: body12,
                          color: AppColors.secondaryColor,
                        )
                      ),
                      TextSpan(
                        text: 'Terms of service',
                        style: poppinsRegular.copyWith(
                          fontSize: body12,
                          color: AppColors.gradientTwoColor,
                          decoration: TextDecoration.underline,
                        )
                      ),
                      TextSpan(
                          text: ' & ',
                          style: poppinsRegular.copyWith(
                            fontSize: body12,
                            color: AppColors.secondaryColor,
                          )
                      ),
                      TextSpan(
                          text: 'Privacy Policy',
                          style: poppinsRegular.copyWith(
                            fontSize: body12,
                            color: AppColors.gradientTwoColor,
                            decoration: TextDecoration.underline,
                          )
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
