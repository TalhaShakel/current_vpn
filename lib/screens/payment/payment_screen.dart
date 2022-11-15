import 'package:current_vpn/screens/otp/otp_screen.dart';
import 'package:current_vpn/screens/payment/components/payment_btn.dart';
import 'package:current_vpn/widgets/back_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/exports.dart';
import '../../widgets/custom_app_bar.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

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
                  titleText: 'Payment',
                ),
                SizedBox(height: screenHeight(context) * 0.04),

                /// texts
                Text(
                  'Please choose the payment method',
                  style: poppinsRegular.copyWith(
                    fontSize: body14,
                    color: AppColors.secondaryLightColor,
                  ),
                ),
                SizedBox(height: screenHeight(context) * 0.13),

                /// btns
                PaymentBtn(
                  onTap: () {},
                  btnText: 'Pay With Payoneer',
                ),
                SizedBox(height: screenHeight(context) * 0.03),
                PaymentBtn(
                  onTap: () {},
                  btnText: 'Pay With PayPal',
                ),
                SizedBox(height: screenHeight(context) * 0.03),
                PaymentBtn(
                  onTap: () {
                    Get.to(OTPScreen());
                  },
                  btnText: 'Pay With VISA / MasterCard',
                ),
                SizedBox(height: screenHeight(context) * 0.03),
                PaymentBtn(
                  onTap: () {},
                  btnText: 'Pay With Bitcoin',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
