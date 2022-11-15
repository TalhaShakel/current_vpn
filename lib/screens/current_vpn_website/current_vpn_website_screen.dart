import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/exports.dart';
import '../../widgets/back_image_widget.dart';

class CurrentVPNWebsiteScreen extends StatelessWidget {
  const CurrentVPNWebsiteScreen({Key? key}) : super(key: key);

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
                  titleText: 'Current VPN Website',
                ),
                SizedBox(height: screenHeight(context) * 0.01),

                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(bottom: padding30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        /// date
                        SizedBox(height: screenHeight(context) * 0.02),
                        Text(
                          'October 5, 2022 11:00 AM',
                          style: poppinsRegular.copyWith(
                            fontSize: body12,
                            color: AppColors.secondaryColor,
                          ),
                        ),

                        ///
                        SizedBox(height: screenHeight(context) * 0.03),
                        Container(
                          width: screenWidth(context),
                          margin: EdgeInsets.symmetric(horizontal: padding16),
                          padding: EdgeInsets.only(
                            left: padding16,
                            top: padding16,
                            bottom: padding30,
                            right: padding24,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(radius10),
                            border: Border.all(
                              color: AppColors.whiteColor,
                              width: 2.0,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: AppColors.shadowColor,
                                blurRadius: 15.0,
                                offset: Offset(8.0, 8.0),
                              ),
                            ],
                            gradient: const LinearGradient(
                              colors: [
                                AppColors.blueWhiteColor,
                                AppColors.greyWhiteColor,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// welcome texts
                              Center(
                                child: Text(
                                  'Welcome to Use',
                                  style: poppinsRegular.copyWith(
                                    fontSize: body18,
                                    color: AppColors.secondaryColor,
                                  ),
                                ),
                              ),
                              SizedBox(height: screenHeight(context) * 0.016),

                              /// access to world texts
                              Center(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Access to a real world with ',
                                        style: poppinsRegular.copyWith(
                                          fontSize: body10,
                                          color: AppColors.secondaryColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'CURRENTVPN',
                                        style: poppinsRegular.copyWith(
                                          fontSize: body10,
                                          color: AppColors.gradientOneColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              titleDescText(
                                '30 days without payment',
                                'Access for 30 days without payment, no annoying ads.',
                              ),
                              titleDescText(
                                'Fast & Stable',
                                'Global premium VPN servers.',
                              ),

                              titleDescText(
                                'Access to All',
                                'Access to any website & Apps to watch foreign videos, sports, TV series...',
                              ),

                              titleDescText(
                                'Safe & Secure',
                                'Surf anonymously, change your IP, hide your location...',
                              ),

                              titleDescText(
                                'No Registration Needed',
                                'Just one tap to connect VPN.',
                              ),
                            ],
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
    );
  }

  Widget titleDescText(heading, desc) => Padding(
        padding: EdgeInsets.only(top: padding16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              heading,
              style: poppinsRegular.copyWith(
                fontSize: body12,
                color: AppColors.gradientOneColor,
              ),
            ),
            Text(
              desc,
              style: poppinsRegular.copyWith(
                fontSize: body12,
                color: AppColors.secondaryColor,
              ),
            ),
          ],
        ),
      );
}
