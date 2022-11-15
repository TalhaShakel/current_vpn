import 'package:current_vpn/widgets/back_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/exports.dart';
import '../components/menu_btn.dart';

class PreferencesScreen extends StatelessWidget {
  const PreferencesScreen({Key? key}) : super(key: key);

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
                    titleText: 'Preferences',
                  ),
                  SizedBox(height: screenHeight(context) * 0.12),

                  /// menu btns
                  MenuButton(
                    onTap: () {

                    },
                    text: 'VPN Protocol',
                    iconPath: AppImages.vpnProtocol,
                  ),
                  SizedBox(height: screenHeight(context) * 0.016),

                  /// menu btns
                  MenuButton(
                    onTap: () {

                    },
                    text: 'Auto Connect',
                    iconPath: AppImages.autoConnect,
                  ),
                  SizedBox(height: screenHeight(context) * 0.016),

                  /// menu btns
                  MenuButton(
                    onTap: () {

                    },
                    text: 'Reset VPN Profile',
                    iconPath: AppImages.resetVPN,
                  ),
                  SizedBox(height: screenHeight(context) * 0.016),

                  /// menu btns
                  MenuButton(
                    onTap: () {

                    },
                    text: 'Trusted Network',
                    iconPath: AppImages.trustedNetwork,
                  ),
                  SizedBox(height: screenHeight(context) * 0.016),

                  /// menu btns
                  MenuButton(
                    onTap: () {

                    },
                    text: 'DNS Firewell',
                    iconPath: AppImages.dnsFire,
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
