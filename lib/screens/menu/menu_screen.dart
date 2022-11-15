import 'package:current_vpn/screens/menu/components/menu_app_bar.dart';
import 'package:current_vpn/screens/menu/components/menu_btn.dart';
import 'package:current_vpn/screens/menu/help_support/help_support_screen.dart';
import 'package:current_vpn/screens/menu/privacy_security_tools/privacy_security_tools_screen.dart';
import 'package:current_vpn/screens/menu/refer_friend/refer_friend_screen.dart';
import 'package:current_vpn/screens/payment/payment_screen.dart';
import 'package:current_vpn/widgets/back_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/exports.dart';
import 'preferences/preferences_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

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
                ///appbar
                MenuAppBar(),
                SizedBox(height: screenHeight(context) * 0.08),

                /// graph

                /// texts
                Center(
                  child: Text(
                    'You are secured Until \nDec 22nd, 2022',
                    textAlign: TextAlign.center,
                    style: poppinsRegular.copyWith(
                      fontSize: body14,
                      color: AppColors.secondaryLightColor,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight(context) * 0.07),

                /// menu btns
                MenuButton(
                  onTap: () {
                    Get.to(PreferencesScreen());
                  },
                  text: 'Preferences',
                  iconPath: AppIcons.preferenceIcon,
                ),

                MenuButton(
                  onTap: () {
                    Get.to(PaymentScreen());
                  },
                  text: 'Payment',
                  iconPath: AppIcons.paymentIcon,
                ),
                MenuButton(
                  onTap: () {
                    Get.to(PrivacySecurityToolScreen());
                  },
                  text: 'Privacy & Security Tools',
                  iconPath: AppIcons.securityIcon,
                ),
                MenuButton(
                  onTap: () {
                    Get.to(ReferFriendScreen());
                  },
                  text: 'Refer friends',
                  iconPath: AppIcons.referFriendIcon,
                ),
                MenuButton(
                  onTap: () {
                    Get.to(HelpAndSupportScreen());
                  },
                  text: 'Help & Support',
                  iconPath: AppIcons.helpSupportIcon,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
