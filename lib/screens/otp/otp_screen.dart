import 'package:current_vpn/constants/exports.dart';
import 'package:current_vpn/screens/payment/add_new_card_screen.dart';
import 'package:current_vpn/widgets/back_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /// top vpn texts
                  SizedBox(height: screenHeight(context) * 0.03),
                  Row(
                    children: [
                      Container(
                        height: screenHeight(context) * 0.1,
                        width: screenHeight(context) * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(radius20),
                          color: AppColors.gradientTwoColor,
                          boxShadow: const [
                            BoxShadow(
                              color: AppColors.shadowColor,
                              blurRadius: 15.0,
                              offset: Offset(8.0, 8.0),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Image.asset(AppImages.mapImage),
                        ),
                      ),
                      SizedBox(width: screenHeight(context) * 0.036),
                      Text(
                        'VPN',
                        style: poppinsMedium.copyWith(
                          fontSize: body30,
                          color: AppColors.gradientTwoColor,
                        ),
                      ),
                    ],
                  ),

                  /// enter otp text
                  SizedBox(height: 8.0),
                  Center(
                    child: Text(
                      'Enter OTP',
                      style: poppinsMedium.copyWith(
                        fontSize: screenHeight(context) * 0.06,
                        color: AppColors.gradientTwoColor,
                      ),
                    ),
                  ),

                  /// email texts
                  SizedBox(height: screenHeight(context) * 0.06),
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Please enter the OTP send to',
                            style: poppinsRegular.copyWith(
                              fontSize: body14,
                              color: AppColors.secondaryLightColor,
                            ),
                          ),
                          TextSpan(
                            text: '\n“currentvpn@gmail.com”',
                            style: poppinsMedium.copyWith(
                              fontSize: body14,
                              color: AppColors.gradientTwoColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// otp fields
                  SizedBox(height: screenHeight(context) * 0.06),
                  Pinput(
                    length: 4,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    defaultPinTheme: PinTheme(
                        height: screenHeight(context) * 0.09,
                        width: screenHeight(context) * 0.08,
                        textStyle: poppinsMedium.copyWith(
                          fontSize: body30,
                          color: AppColors.secondaryLightColor,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: const LinearGradient(
                            colors: [
                              AppColors.blueWhiteColor,
                              AppColors.greyWhiteColor,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: AppColors.shadowColor,
                              blurRadius: 15.0,
                              offset: Offset(8.0, 8.0),
                            ),
                          ],
                          border: Border.all(
                            color: AppColors.whiteColor,
                            width: 2.0,
                          ),
                        ),),
                  ),

                  /// btn
                  SizedBox(height: screenHeight(context) * 0.05),
                  CustomGradientButton(
                    btnText: 'Sign Up',
                    onTap: () {
                      Get.to(AddNewCardScreen());
                    },
                  ),

                  /// btn
                  SizedBox(height: screenHeight(context) * 0.016),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Didn’t recieve OTP?',
                        style: poppinsRegular.copyWith(
                          fontSize: body14,
                          color: AppColors.tintLightColor,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Resend',
                          style: poppinsMedium.copyWith(
                            fontSize: body14,
                            color: AppColors.gradientTwoColor,
                          ),
                        ),
                      ),
                    ],
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
