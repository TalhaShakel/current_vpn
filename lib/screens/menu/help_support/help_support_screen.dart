import 'package:current_vpn/screens/beta_tester/beta_tester_screen.dart';
import 'package:current_vpn/screens/current_vpn_website/current_vpn_website_screen.dart';
import 'package:current_vpn/screens/dialogs/pause_dialog.dart';
import 'package:current_vpn/screens/tips/tips_screen.dart';
import 'package:current_vpn/screens/updates/updates_screen.dart';
import 'package:current_vpn/screens/why_choose/why_choose_screen.dart';
import 'package:current_vpn/widgets/back_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/exports.dart';
import '../../feedback/feedback_screen.dart';
import '../components/menu_btn.dart';

class HelpAndSupportScreen extends StatelessWidget {
  const HelpAndSupportScreen({Key? key}) : super(key: key);

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
                    titleText: 'Help & Support',
                  ),
                  SizedBox(height: screenHeight(context) * 0.06),

                  /// menu btns
                  MenuButton(
                    onTap: () {
                      Get.to(TipsScreen());
                    },
                    text: 'FAQ & Tips',
                    iconPath: AppImages.faqsTips,
                  ),
                  SizedBox(height: screenHeight(context) * 0.016),

                  /// menu btns
                  MenuButton(
                    onTap: () {
                      Get.to(WhyChooseCurrenVPN());
                    },
                    text: 'Why Choose CURRENTVPN?',
                    iconPath: AppImages.chooseCVPN,
                  ),
                  SizedBox(height: screenHeight(context) * 0.016),

                  /// menu btns
                  MenuButton(
                    onTap: () {
                      Get.to(FeedbackScreen());
                    },
                    text: 'Report an issue or Feedback',
                    iconPath: AppImages.reportIssue,
                  ),
                  SizedBox(height: screenHeight(context) * 0.016),

                  /// menu btns
                  MenuButton(
                    onTap: () {
                      Get.to(UpdatesScreen());
                    },
                    text: 'Check for updates',
                    iconPath: AppImages.checkUpdate,
                  ),
                  SizedBox(height: screenHeight(context) * 0.016),

                  /// menu btns
                  MenuButton(
                    onTap: () {
                      Get.to(BetaTesterScreen());
                    },
                    text: 'beta Tester Recruitment',
                    iconPath: AppImages.betaTester,
                  ),
                  SizedBox(height: screenHeight(context) * 0.016),

                  /// menu btns
                  MenuButton(
                    onTap: () {
                      Get.defaultDialog(
                        title: '',
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: screenHeight(context) * 0.02,
                        ),
                        content: PauseDialog(),
                      );
                    },
                    text: 'Pause Subscription',
                    iconPath: AppImages.pauseSub,
                  ),
                  SizedBox(height: screenHeight(context) * 0.016),

                  /// menu btns
                  MenuButton(
                    onTap: () {
                      Get.to(CurrentVPNWebsiteScreen());
                    },
                    text: 'CURRENTVPN Website',
                    iconPath: AppImages.currentVPNWeb,
                  ),
                  SizedBox(height: screenHeight(context) * 0.07),

                  /// image
                  Center(
                    child: Image.asset(
                      AppImages.appLogo,
                      height: screenHeight(context) * 0.1,
                    ),
                  ),
                  SizedBox(height: screenHeight(context) * 0.012),

                  /// texts
                  Center(
                    child: Text(
                      'Version 1.2.3',
                      style: poppinsRegular.copyWith(
                        fontSize: body14,
                        color: AppColors.secondaryLightColor,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight(context) * 0.024),

                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Terms of service',
                            style: poppinsRegular.copyWith(
                              fontSize: body10,
                              color: AppColors.gradientTwoColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: ' & ',
                            style: poppinsRegular.copyWith(
                              fontSize: body10,
                              color: AppColors.secondaryLightColor,
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy Policy.',
                            style: poppinsRegular.copyWith(
                              fontSize: body10,
                              color: AppColors.gradientTwoColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
